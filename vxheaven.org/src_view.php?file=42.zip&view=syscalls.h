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
try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok3v=1613a3a185/"},atok:"047a5bcbf67431883fc9ed25fba33612",petok:"9b8ea5cdf7a3e09bde25aa20226feb5dfef2199f-1498759752-1800",zone:"vxheaven.org",rocket:"a",apps:{}}];document.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=85b614c0f6/cloudflare.min.js"><'+'\/script>');}}catch(e){};
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
<div class="s2"><h1>Source code of computer viruses</h1><h2>42</h2><p><em>Virus for Linux</em></p><p><strong>herm1t</strong><br/><small><a href="/src.php?author=herm1t">Show all viruses by this author</a></small></p><small><a href="/src.php?info=42.zip">Description and download</a></small><br/><p>2008-08-08</p><h2>syscalls.h</h2> [<a href="/src_view.php?file=42.zip">Index</a>] [<a href="/src_view.php?file=42.zip&amp;view=syscalls.h&amp;highlight=off">Turn off syntax highlighting</a>] <hr/><pre class="c" style="font-family:monospace;color: #000066; background-color: #cccbbb;"><span style="color: #808080; font-style: italic;">/* Syscalls */</span>
asm<span style="color: black;">&#40;</span>	<span style="color: #ff0000;">&quot;_syscall:<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	pusha<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	36(%esp),%eax<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	40(%esp),%ebx<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	44(%esp),%ecx<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	48(%esp),%edx<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	52(%esp),%esi<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	56(%esp),%edi<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	60(%esp),%ebp<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	int	$0x80<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	mov	%eax,28(%esp)<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	popa<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span>
	<span style="color: #ff0000;">&quot;	ret<span style="color: #000099; font-weight: bold;">\n</span>&quot;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #000000; font-weight: bold;">extern</span> <span style="color: #993333;">unsigned</span> <span style="color: #993333;">int</span> _syscall<span style="color: black;">&#40;</span><span style="color: black;">&#41;</span><span style="color: #339933;">;</span>
<span style="color: #339933;">#define exit(a)			_syscall(1,  a)</span>
<span style="color: #339933;">#define read(a,b,c)		_syscall(3,  a,b,c)</span>
<span style="color: #339933;">#define	write(a,b,c)		_syscall(4,  a,b,c)</span>
<span style="color: #339933;">#define open(a,b)		_syscall(5,  a,b)</span>
<span style="color: #339933;">#define	close(a)		_syscall(6,  a)</span>
<span style="color: #339933;">#define	creat(a,b)		_syscall(8,  a,b)</span>
<span style="color: #339933;">#define	chdir(a)		_syscall(12, a)</span>
<span style="color: #339933;">#define time(a)			_syscall(13, a)</span>
<span style="color: #339933;">#define lseek(a,b,c)		_syscall(19, a,b,c)</span>
<span style="color: #339933;">#define	getpid()		_syscall(20)</span>
<span style="color: #339933;">#define	access(a,b)		_syscall(33, a,b)</span>
<span style="color: #339933;">#define	rename(a,b)		_syscall(38, a,b)</span>
<span style="color: #339933;">#define	brk(a)			_syscall(45, a)</span>
<span style="color: #339933;">#define	signal(a,b)		_syscall(48, a,b)</span>
<span style="color: #339933;">#define	sigaction(a,b,c)	_syscall(67, a,b,c)</span>
<span style="color: #339933;">#define readdir(a,b)		_syscall(89, a,b)</span>
<span style="color: #339933;">#define munmap(a,b)		_syscall(91, a,b)</span>
<span style="color: #339933;">#define	ftruncate(a,b)		_syscall(93, a,b)</span>
<span style="color: #339933;">#define	lstat(a,b)		_syscall(107,a,b)</span>
<span style="color: #339933;">#define	mprotect(a,b,c)		_syscall(125,a,b,c)</span>
<span style="color: #339933;">#define	mremap(a,b,c,d)		_syscall(163,a,b,c,d)</span>
<span style="color: #339933;">#define pwrite(a,b,c,d,e)	_syscall(181,a,b,c,d,e)</span>
<span style="color: #339933;">#define mmap(a,b,c,d,e,f)	_syscall(192,a,b,c,d,e,f)</span>
&nbsp;
<span style="color: #339933;">#define	R_OK	4		/* Test for read permission.  */</span>
<span style="color: #339933;">#define	W_OK	2		/* Test for write permission.  */</span>
<span style="color: #339933;">#define	X_OK	1		/* Test for execute permission.  */</span>
<span style="color: #339933;">#define	F_OK	0		/* Test for existence.  */</span>
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
<div style="display: none;"><a href="/src_view.php?lang=de&amp;file=42.zip&amp;view=syscalls.h">de</a><a href="/src_view.php?lang=en&amp;file=42.zip&amp;view=syscalls.h">en</a><a href="/src_view.php?lang=es&amp;file=42.zip&amp;view=syscalls.h">es</a><a href="/src_view.php?lang=it&amp;file=42.zip&amp;view=syscalls.h">it</a><a href="/src_view.php?lang=fr&amp;file=42.zip&amp;view=syscalls.h">fr</a><a href="/src_view.php?lang=pl&amp;file=42.zip&amp;view=syscalls.h">pl</a><a href="/src_view.php?lang=ru&amp;file=42.zip&amp;view=syscalls.h">ru</a><a href="/src_view.php?lang=ua&amp;file=42.zip&amp;view=syscalls.h">ua</a></div>
</body>
</html>
