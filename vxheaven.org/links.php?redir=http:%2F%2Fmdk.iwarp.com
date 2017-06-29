

<!-- '"AWS"' -->
<!-- Auto Banner Insertion Begin -->

    <script><!--
    var awsad_loaded = false;
    var hold = new Date(); hold = hold.getTime() / 1000;
    function awsad_refresh(page){
      if (! awsad_loaded) return;
      var now = new Date(); now = now.getTime() / 1000;
      if (now - hold < 3) return;
      hold = now;
      if (! page) page = 'index.html';
      if (! self.awsad_frame) return;
      self.awsad_frame.location.href = 'http://mdk.iwarp.com/cgi-bin/ad/framed?page='+page+'&bgcolor=black&Rtime='+now;
      if( typeof(right_frame) !== 'undefined'){
        self.right_frame.location.href = 'http://mdk.iwarp.com/cgi-bin/ad/framed?page='+page+'&Rtime='+now+'&position=right';
        self.bottom_frame.location.href = 'http://mdk.iwarp.com/cgi-bin/ad/framed?page='+page+'&Rtime='+now+'&position=bottom';
      }
      
    }
    //--></script>
  <frameset rows='175,*'  frameborder="NO" border="0" framespacing="0" border=0>
<frame src='http://mdk.iwarp.com/cgi-bin/ad/framed?page=index.htm&bgcolor=black' MARGINHEIGHT=0 MARGINWIDTH=0 FRAMESPACING=0 FRAMEBORDER=NO BORDER=0 SCROLLING=NO NORESIZE NAME=awsad_frame scrolling='no'><frameset cols='*,150'  frameborder="NO" border="0" framespacing="0" border=0>
<frameset rows='*,100'   frameborder="NO" border="0" framespacing="0" border=0 >
<html>
<head>
<title>Virus Central</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<frameset cols="187,560*" frameborder="NO" border="0" framespacing="0" rows="*"> 
  <frame name="leftFrame" scrolling="NO" noresize src="/cgi-bin/framed/1718/navbar.htm">
  <frame name="mainFrame" src="/cgi-bin/framed/1718/body.htm">
</frameset>
<frame src='http://mdk.iwarp.com/cgi-bin/ad/framed?page=index.htm&bgcolor=black&position=bottom'  name='bottom_frame' scrolling='no'>
</frameset>
<frame src='http://mdk.iwarp.com/cgi-bin/ad/framed?page=index.htm&bgcolor=black&position=right'   name='right_frame' scrolling='auto'>
</frameset>
<!-- Auto Banner Insertion Complete THANK YOU -->

<noframes><body bgcolor="#FFFFFF">

</body></noframes>
</html>


<!-- PrintTracker Insertion Begin -->
<script src="/fs_img/js/pt.js" type="text/javascript"></script>
<!-- PrintTracker Insertion Complete -->


<!-- Google Analytics Insertion Begin -->
<script type="text/javascript">
<!--
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', "UA-4601892-3"]);
        _gaq.push(['_setDomainName', 'none']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_trackPageview']);
        
        (function() {
           var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
           ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
           var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

-->
</script>
<!-- Google Analytics Insertion Complete -->

