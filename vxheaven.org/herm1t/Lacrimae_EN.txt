
   Linux.Lacrimae 0.30 (x) 2007-2008 by herm1t <herm1t@vx.netlux.org>

   Earlier  I  wrote  pretty large doc for this virus, descibing its work
   step  by  step.  Now  I  think  that there is no point to examine each
   function  of  the  virus individually or the practices of working with
   ELF headers. The code came to be big and sloppy, so I will try just to
   tell you what virus is doing and why some features were implemented as
   they  were. Probably I would write the tutorial on linux viruses. Or I
   will  not.  Anyway,  if  you  cannot  understand something, it will be
   better  for  you to search for the answers not in forums or zines, but
   in  the sources and standards. There are everything you need: System V
   ABI/386, TIS ELF, libc and kernel sources, man after all.

   The  basic  principle  was set before by Z0mbie in his "Methodology of
   undetectable  virus".  In  a  few  words:  you should take the file to
   pieces  (headers,  instructions, parts of data; when virus code should
   be  mixed  with  victim  and  all  should be assembled back. It became
   possible  in  Linux  after  introducing PIC-executables (or just PIE).
   This  feature  was  added  about  2003,  and  was meant to enforce the
   security  of  the  system. The most "dangerous" programs build as PIE.
   But  you  know,  if  something  increases  in  one place, it decreases
   elsewhere.  Programs  ran  slowly,  prelink trying to fix this, and in
   turn  complicating integrity checking. Crucially, relocations for data
   appeared  in the executables and the code became position-independent,
   and this allows the virus to move the victims code as it wishes.

Disassembling

   So.  The  virus  found  the  file  (search), loaded it into the memory
   (load_elf), performed all neccessary checks before (elf_check, the ELF
   type  ET_DYN,  the  presence  of  section  headers).  Matched. Must be
   infected.  First of all we need to disassemble the code. Just feed the
   disassembler with loaded section (at the beginning I used the XDE, but
   then  made  my  own and significantly different version of this engine
   called  YAD), and put the result into the list of structures (code_t).
   For  the  fast  access to the list make the array of pointers with the
   number of entries equal to the section size. For example, if one needs
   to  test  is where any instruction at the given offset, it's enough to
   write:
        if (fast[offset] != NULL)
                ...

   instead of
        for (c = code; c != NULL; c = c->next)
                if (c->src - map == offset) {
                        ...
                        break;
                }

   To  make it possible afterwards to restore the alignment of particular
   instructions,  the  virus comparing the code against standard paddings
   generated  by binutils. The victim disassembled from top downards with
   less  regard to jumps. If there are any data within code - that's just
   tough, return with error. Though there is no convenient way to produce
   such PIE, and all programs which using inline assembly and data within
   code  just  cannot  be build as PIE. In such a way distinction of code
   and data is the last thing one should bother about. Moreover, the used
   data  structures  doesn't  perfectly  fit with that task. The virus is
   working  with  sections and there are at least four sections with code
   (.init, .fini, .plt, .text) linked to each other by jumps.

   We  will fix the numerous headers and initialized pointers in the data
   segment,  we  have  all  neccesary  information  in  relocation  table
   (.rel.dyn).  One  must  find  all  places  in code which calculate the
   addresses. So, some explanations about the ELFs internal structure are
   of necessity.

Position Independent Executables

   PIE  is an ELF file with type ET_DYN and zero base address. Naturally,
   it  will be loaded at quite different address, and to make it possible
   for  the  the  program  to run, the loader and the program itself will
   take  pains.  The  code  has the read-only permissions and will not be
   fixed  by  loader.  If the function is not a leaf one (one which makes
   calls)  or  accessing  the  global  variables, the following scheme is
   used:
    130b: e8 23 00 00 00          call   1333
# 1310+405c=536c (.got.plt)
    1310: 81 c3 5c 40 00 00       add    $0x405c,%ebx
.......................................................
# eax = .got.plt - 16236 = 0x1400 (main)
    1326: 8d 83 94 c0 ff ff       lea    0xffffc094(%ebx),%eax
    132c: 50                      push   %eax
    132d: e8 b2 fd ff ff          call   10e4 <__libc_start_main@plt>
.......................................................
    1333: 8b 1c 24                mov    (%esp),%ebx    # (1)
    1336: c3                      ret
.......................................................
    133c: e8 00 00 00 00          call   1341           # (2)
    1341: 5b                      pop    %ebx
    1342: 81 c3 2b 40 00 00       add    $0x402b,%ebx

   All  addresses  are  relative to the start of .got.plt section. If the
   function  does  not  call another functions, another register could be
   used  instead  of  ebx.  To  set  the  value  of  PIC-register the two
   constructs (1) and (2) are used. The first in the CRT functions, added
   by compiler, the second in the program itself.

Parsing

   The  virus  traversing  the instruction lists (mark), this time in the
   order  of  execution  (to  prevent the situation when PIC-register got
   used  before  initialization;  it  is not likely that gcc will produce
   such  code,  but  this  feature  will  come into play later); fill the
   "link"  fields  for  the  branch  instructions  (the  pointer  to  the
   destination  of  the  branch),  look for the external functions calls,
   initializations  of the PIC-register and instructions which using that
   register. Mark the found instructions by following flags:
     * FL_GOTPTR1 - call 0f / 0: pop reg / add reg, imm32 (set on add)
     * FL_GOTPTR2  -  call  0f / add reg, imm32 / ... / 0: mov reg, esp /
       ret
     * FL_GOTOFF  -  mod==2  &&  (rm==pic_reg|base  ==  pic_reg|index  ==
       pic_reg)
     * FL_EXTERN  -  call  of  external function (the symbol field is the
       name of function)
     * FL_SEEN - the code without this flag cannot be reached

   If  the instruction with FL_GOTOFF refer to the code, it's destination
   will be tested also.

  JMP-tables

   As such all instructions that need to be fixed found. And all could be
   just fine and simple except for jump tables. The array of addresses is
   in the .rodata, the address of array calculated in the same way as any
   other address, but one need to know not only the address of table, but
   its size too. The most simple case of jump table looks as follows:
    145e:       83 f8 34                cmp    $0x34,%eax
    1461:       77 35                   ja     1498  
    1463:       8b 84 83 90 ea ff ff    mov    0xffffea90(%ebx,%eax,4),%eax
    146a:       01 d8                   add    %ebx,%eax
    146c:       ff e0                   jmp    *%eax

   Virus  should  look for the cmp argument that is the size of table. If
   the  "jmp  reg" instruction occuried, virus starts to look through the
   code  in the opposite direction for the table address (in this case it
   is  the  "mov"  insn,  when the address was found, the virus memorizes
   index  register  and  look  further  for the "cmp index, imm". If this
   command was found, the virus has all the things needed for parsing and
   saving  the  contents  of table for later fixing. The fatal error will
   occur and the file will be left uninfected, if something missed or the
   found addresses does not referrence the code.

   It's  not  the end of misfortunes with jump-tables, but the beginning.
   Table index may reside not in register but in the local variable:
    3d60:       83 7d e8 04             cmpl   $0x4,0xffffffe8(%ebp)
    3d64:       0f 87 8b 03 00 00       ja     40f5 <main+0x665>
    3d6a:       8b 55 e8                mov    0xffffffe8(%ebp),%edx
    3d6d:       8b 84 93 30 de ff ff    mov    0xffffde30(%ebx,%edx,4),%eax
    3d74:       01 d8                   add    %ebx,%eax
    3d76:       ff e0                   jmp    *%eax

   To  work  with  such tables the virus trying to keep track the movings
   between  registers  and  local  variables. Both for the code w/ or w/o
   stack  frame  (variables  referrenced  through  esp, not ebp) - in the
   latter  case  virus  has little to none chances. The jmp-table parsing
   code  is  quite  fragile,  but still works, and if it will fail, it is
   just  as  well  possible to find another file, less complex. There are
   another  approaches  to  the  problem,  but they require more detailed
   analysis of the code and used in decompilers.

   The   same   procedures  applied  to  the  virus  body  itself  during
   disassembly.  To  be  able to split the virus code and the victim, the
   virus   code   marked   with  FL_ME  flag.  The  virus  must  not  use
   uninitialized  data in the .bss, jump-tables, relocations and pointers
   to  the  code.  Only  pointers  to  data  is allowed. There is nothing
   fundamental  in  these  restrictions, it is possible to add the missed
   capabilities  if  you wish, but this requires additional code, and the
   code is too big as it is.

Imports

   Let's  care now for the external functions the virus is needed to work
   on  the  new  place. We need to find all the calls with FL_EXTERN flag
   and  the corresponding functions within imports. If something missed -
   extend   the   corresponding   sections   (extend_section)   and   add
   (add_symbol):  the  name  of  function  to .dynstr, symbol to .dynsym,
   helper-code  to  .plt,  reloc  to  .rel.plt,  the address of helper to
   .got.plt  and finally the version to .gnu.version_r. Rebuild the .hash
   (build_hash). It's all taped.

Integration, mutation, optimization

   The  virus now has two lists ready for the intermixture (insert_code).
   The  lists  dissected on ret/jmp instructions to preserve the order of
   execution  and to prevent the virus from fallthrough to the victim and
   vice versa and cut in to the single list (code_mixer). Piece of virus,
   piece of victim, piece of virus... And so forth.

   Since  we have a single list, we could care about such chicken shit as
   alignment. The virus discards the fillings, calculates the boundary on
   which  the insn is aligned, prevents jumps from ending on filling. The
   alignment requirements saved in the "al" field.

   Now  you can do with the list whatever you want. Additionaly rearrange
   the  code  blocks (M_BRO in config.h). Randomly invert the conditional
   jumps  (M_IJCC), mutate some instructions (MUTATE) - it just a sketch,
   the  code  was  taken  from RPME and BI-PERM and one piece was written
   after Lexotan.

   It's  time  to  think of how to compose all this to a working program.
   Let's  find  out  the  length  of  jump commands (short/near) (OJMP in
   config.h).  Extend  the  data section to add there our own data later.
   Add the call to virus to .init or virus entry to .ctors.

Assembly and linking

   Let's  build  the  file  (build_elf).  Copy  the  ELF header, table of
   segments  (PHT)  and  start  to copy the sections which belongs to the
   loadable segments, saving new addresses and offsets. Align the section
   if  neccessary. If section contains code - assemble it by copying each
   command  from  the  list  (don't  forget to align it) and save its new
   address.  If  the  section  contains  data  just copy it. Fix the rest
   entries (non PT_LOAD) in PHT. Copy not-loadable sections. Copy and fix
   the sections table (SHT). Copy all stuff that was appended to the file
   and does not belong to any section.

   And  now  we  must  link  and fix the resulting file. Fix .rel.dyn and
   rebuild  the  .rel.plt and .got.plt sections. When virus added imports
   it  was impossible to do, since the addresses of the sections were not
   known.

   It's  time  to  attend  to the code. The virus knew the new address of
   .got.plt  (the  base  for address calculations in program). It is high
   time.  For  each  instruction  in  list (depending on flags): find new
   addresses  for  the  calls  to  PLT-helpers for the external functions
   calls;  find  new  offsets  relative  to  .got.plt  for  the  commands
   referrencing data and reassemble 'em; fix the addresses of conditional
   and  uncoditional  branches;  fix the offsets from current position to
   .got.plt  (FL_GOTPTR?).  Fix all addresses from jump-tables, that were
   saved.  Fix  the symbol tables (.dynsym and optionally .symtab). I had
   no  guts  to  fix  the debugging information. :-) Set the entry point.
   Copy   the  virus  data  to  the  previously  extended  data  section.
   Initialize  the  variables  in the data section. Encrypt the data. Set
   the  infection  marker. Fix the .dynamic entries. All is in readiness.
   Write  off  the  file,  free memory (cunningly, so the list with virus
   code  will  be left untouched to avoid repetitive disassembly (freec).
   And continue the victim search.

A few details

   Let's  discuss  the  same  in greater detail. "Fix", "set", but how to
   "fix"?  Suppose,  that we have some absolute address, that needs to be
   fixed,  the old and new section table and the code in the lists. First
   of  all  map  the  address  to  the  pair  <index  of section, offset>
   (section_io_by_addr). If address belong to the section with data, then
   new  address  = new address of section + offset, if it's code section,
   then:  fast[offset]->dsta  (fix_addr).  If  we need to fix the address
   relative  to  .got.plt, then: new rel. address = fix_addr(old_gotoff +
   old  rel. addr.) - new_gotoff, where old_gotoff and new_gotoff are old
   and new addresses of .got.plt respectively.

  Prelink

   Once  in  a while, when KDE-application or something as big is loading
   it  will drag a lot of libraries with itself. The setup of program and
   libraries  even  if  the  address  resolution  performed  lazily  is a
   time-consuming  task.  Prelink  is intended to solve it by designating
   the  base  addresses to all programs and libraries in the system, bind
   the  external  calls  and saving the undo information. What should the
   virus  do?  Just save the base address (address of segment with offset
   0, variable "prelink") and convert all absolute addresses to relative,
   i.e.  RVA. All that one should do is just to substract or add the base
   address. There are not too many such places in the virus.

   It's also necessary to fix the prelink undo information (it just EHDR,
   PHT and SHT as they were before prelinking, with zero base address and
   without sections added by prelink) and fix the checksum. There is just
   one  (or  more?)  snag.  If the infected file be checked with "prelink
   -y",  then prelink will report that "file differs". What's wrong? When
   virus  added  imports,  it  wrote  the  addresses  of  PLT-helpers  to
   .got.plt,  while  prelink saves there the real addresses of functions.
   You  can  either  put  up  with  that, or to enable PRELINK_PERFECT in
   config.h.

   It's dreary operation. To find the path to the library, the virus will
   run  the  interpreter.  Load  library  into  memory  and  look for all
   necessary  addresses  of  the functions. The resolve procedure differs
   from  the once in RTLD, so on some files prelink will swear anyway. It
   might be fixed, but implement the RTLD in virus is a obvious overkill.
   The infected program will work anyway.

  Restrictions on virus code

   Now a few words about the restrictions. To avoid adding its own relocs
   (for  the  virus  entry,  pointers to .dynsym, .dynstr, .rel.plt), the
   virus regardless of whether the file was prelinked will save RVAs, and
   when  will find the base address (get_base) in the run-time and add it
   to  the  values  of variables. The initial values must be set by patch
   utility,  for  the  succeeding  generation  of the virus the values of
   variables will be set by previous one.

   The  virus  is  working with only one section - .data. That is why you
   cannot  use  pointers  to functions (referrenes to .text), unitialized
   variables  (.bss) and jump-tables (.rodata). Otherwise, one could save
   the section index for each command accessing memory and which sections
   must  be  extended  (or  the  section_io_by_addr will fail). Actually,
   there is one such item in the virus (if EXTEND_CTOR is enabled).

  The major changes since version 0.25.2 (described in "Crimea River")

     * New disassembler YAD (instead of XDE)
     * Partial support for jump-tables indexes in local variables
     * Prelink support
     * .gnu.version_r support
     * Inverting conditional jumps
     * Short/near jumps optimization

Conclusion

   I  suppose,  that's  all.  The virus is not too fast, most probably it
   contains  bugs  and  memory leaks. The used method of infection allows
   much  more  opportunities than implemented in the current version. But
   this virus is just the first demo of integration on Linux, and one may
   take care of the rest. :-)

                                         herm1t@vx.netlux.org, june, 2008
