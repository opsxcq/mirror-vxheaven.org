
<script type="text/javascript">
					var ucoz_prerollenable = 1 ;
					window.ucoz_rndid = '';
					var ucoz_server = 's17' ;
					document.write('<div id="mainadsdv" style="width: 0;height: 0;position: fixed;right: 0px;top: 0px;z-index: 2147483647;margin: 0px;padding: 0px;background: none;">');
					
		var ucoz_rndid = '';
		function uLiruCounter(counter){
			new Image().src = "//counter.yadro.ru/hit;"+counter+"?r"+escape(document.referrer)+((typeof(screen)=="undefined")?"":";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+";"+Math.random();
		}
		function uNewMyCounter(counter , unique , dT) {
			var add = '' ;
			if(unique) add += '&uq='+encodeURIComponent(unique) ;
			if(dT) add += '&dt='+encodeURIComponent(dT) ;
			new Image().src="http://188.120.226.43/stat/pixel.gif?host=ucoz&event="+counter+add+"&r="+Math.random();
		}
		function uOnDomOrLater(f){
			if(document.readyState == 'loading') {
				if(document.addEventListener) {
					document.addEventListener('DOMContentLoaded',f);
				} else {
					window.attachEvent('onload',f);
				}
			} else {
				setTimeout(f,0);
			}
		}
	
if(ucoz_prerollenable){
	if (typeof jQuery == 'undefined') {
		document.write('<scr' + 'ipt type="text/javascript" src="/.s/src/jquery-1.7.2.js"></scr' + 'ipt>');
	}
	if (typeof _uWnd == 'undefined') {
		document.write('<scr' + 'ipt type="text/javascript" src="/.s/src/uwnd.js"></scr' + 'ipt>');
	}
	function UranCooks1() {
		var urantimest = Date.now() / 1000 | 0;
		document.cookie = 'uaoffc1=' + urantimest + ';domain=.' + window.location.host + ';path=/';
	}
	var uPreroll = {
		ad_duration: 30,
		top_label: 'реклама',
		country : 'br',
		isEnglish: function(){
			return (['hu','ro','au','gb','hk','in','ie','ca','lv','lt','nz','pk','sg','us','ph','za','jm','ee','br','gr','de','rs','fr','bg','it','pl','es','tr','il','cz'].indexOf(uPreroll.country)>=0);
		},
		geo: {
			city: "Ibirama",
			region: "Santa Catarina"
		},
		themes: [
			{header:'',footer: ''},
			{
				header:'<div class="modal"><div class="toppanel"><div id="popup4"><div class="close_popup"><div class="rotate_left"><span></span></div><div class="rotate_right"><span></span></div></div><div class="title_popup"><span class="r_label_top">%s</span><span class="counter"></span></div></div></div>',
				footer: '<div class="modal_text" id="wrapper_uran_footer"><div><span class="modal_head">Не хотите видеть рекламы вообще?</span><span>Скачайте браузер без рекламы</span></div><div class="modal_text_right"><a href="" target="_blank" class="modal_button">Cкачать URAN</a><a href="" target="_blank" class="modal_icon"><img src="/.s/img/bnr/uran_logo.png"></a></div></div></div>'
			},
			{header:'',footer: ''},
			{
				header:'<div class="modal modal_4"><div class="toppanel"><div id="popup4"><div class="close_popup"><div class="rotate_left"><span></span></div><div class="rotate_right"><span></span></div></div><div class="title_popup"><span class="r_label_top">%s</span><span class="counter"></span></div></div></div>',
				footer: '<div class="modal_text"><div><span class="modal_head">Нужен бизнес-сайт?</span><span>Решения для бизнеса на любой вкус и кошелек</span></div><div class="modal_buttons"><a href="" target="_blank" class="modal_button">Создать сайт</a><a href="" target="_blank" class="modal_logo"><img src="/.s/img/bnr/ukit_logo.png"></a></div>'
			},
			{header:'',footer: ''}
		],
		ga_var_landing: [
			{theme: 1,url:false,track: 'lpnone'},
			{theme: 1,url: 'http://uran-browser.ucoz.com/',track: 'lp1'},
			{theme: 1,url:'http://uran-browser.ucoz.com/index/0-2',track: 'lp2'},
			{theme: 1,url:'http://uran-browser.ucoz.com/index/0-3',track: 'lp3'},
			{theme: 1,url:'http://uran-browser.ucoz.com/index/0-4',track: 'lp4'}
		],
		user_agent: 'firefox',
		ukit_data : {
			getLink: function(lang, server){
				var idx = Math.floor(Math.random()*this[server][lang].length);
				return this[server][lang][idx];
			},
			getUkitWrapperLink: function(){
				return 'http://lp.ukit.com/ru/self/?utm_source=ucoz-advnet&utm_medium=video-bottom-wrap&utm_campaign=create-your-own-website-ru' ;
			},
			ru:{
				text: 'Попробовать на www.ukit.com',
				vlink: '/.s/flash/bnr/TRY4-HD.mp4'
			},
			en: {
				text: 'Try it on www.ukit.com',
				vlink: '/.s/flash/bnr/ukit-eng-popup-HD.mp4'
			},
			ucoz:{
				ru: [[
					'https://ukit.com/ru/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit&utm_campaign=video-ru',
					'https://ukit.com/ru/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit-button&utm_campaign=video-ru'
				]],
				en: [[
					'https://ukit.com/en/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit&utm_campaign=video-en',
					'https://ukit.com/en/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit&utm_campaign=video-en'
				]]
			},
			narod:{
				ru: [[
					'https://ukit.com/ru/lp/adaptive/?utm_source=narod-advnet&utm_medium=video-ukit&utm_campaign=video-ru',
					'https://ukit.com/ru/lp/adaptive/?utm_source=narod-advnet&utm_medium=video-ukit-button&utm_campaign=video-ru'
				]],
				en: [[
					'https://ukit.com/en/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit&utm_campaign=video-en',
					'https://ukit.com/en/lp/adaptive/?utm_source=ucoz-advnet&utm_medium=video-ukit&utm_campaign=video-en'
				]]
			},
			duration:20
		},
		counters: {
			advmaker_ucoz_ru: 'preroll_advmaker',
			advmaker_narod_ru: 'preroll_advmaker_narod',
			advmaker_ucoz_ua: 'preroll_advmaker_sng_ucoz',
			advmaker_narod_ua: 'preroll_advmaker_sng_narod',
			advmaker_ucoz_sng: 'preroll_advmaker_sng_ucoz',
			advmaker_narod_sng: 'preroll_advmaker_sng_narod',

			winwideo_ucoz_ru: 'preroll_winwideo_sts_ucoz',
			winwideo_narod_ru:'preroll_winwideo_sts_narod',
			winwideo_ucoz_ua: 'preroll_winwideo_sts_ucoz',
			winwideo_narod_ua: 'preroll_winwideo_sts_narod',
			winwideo_ucoz_sng: 'preroll_winwideo_sts_ucoz',
			winwideo_narod_sng: 'preroll_winwideo_sts_narod',

			adwideo_ucoz_ru: 'preroll_adwideo_sts_ucoz',
			adwideo_narod_ru:'preroll_adwideo_sts_narod',

			ukit_ucoz_ru: 'preroll_ukit1',
			ukit_ucoz_ua: 'preroll_ukit1',
			ukit_ucoz_sng: 'preroll_ukit1',

			ukit_narod_ru: 'preroll_narod_ukit1',
			ukit_narod_ua: 'preroll_narod_ukit1',
			ukit_narod_sng: 'preroll_narod_ukit1',
			ukit_narod_en: 'preroll_narod_ukiten1',
			ukit_ucoz_en: 'preroll_ukiten1',

			pladform_ucoz_ru: 'preroll_pladform_ucoz',
			pladform_narod_ru: 'preroll_pladform_narod',
			pladform_ucoz_ua: 'preroll_pladform_ucoz_sng',
			pladform_narod_ua: 'preroll_pladform_narod_sng',
			pladform_ucoz_sng: 'preroll_pladform_ucoz_sng',
			pladform_narod_sng: 'preroll_pladform_narod_sng'
		},
		site_type: 'ucoz',
		uran_wrap_rate: 0,
		isUcoz: function(){
			return (uPreroll.site_type=='ucoz');
		},
		getRegion: function(){
			switch (uPreroll.country){
				case 'ru':
				case 'md':
				case 'am':
				case 'ge':
				return 'ru';
				case 'ua': return 'ua';
				case 'az':
				case 'by':
				case 'kz':
				case 'kg':
				case 'tj':
				case 'uz':
				case 'tm': return 'sng';
				default: return 'en'
			};
		},

		setCounter: function(name, finalName){
			if(!finalName){
				name = uPreroll.counters[name+'_'+uPreroll.site_type+'_'+uPreroll.getRegion()];
			}
			new Image().src = "//counter.yadro.ru/hit;"+name+"?r"+
				escape(document.referrer)+((typeof(screen)=="undefined")?"":
				";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
				screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
				";"+Math.random();
		},
		setUranLink: function(){
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','uranga');
        uranga('create', 'UA-45896238-1', 'auto', {'name': 'uranTracker','cookieName': '_uranga'});
        uranga('uranTracker.set', 'referrer', 'http://'+document.location.hostname);
        uranga('uranTracker.send', 'pageview', '/uran_install_show_'+uPreroll.type);
        $('.bottom_popup:not(a), #uran_download_link_1, #uran_download_link_2').on('click', function() {
           var clientId;
           uranga('uranTracker.send', 'pageview', {'page':'/uran_install_type_'+uPreroll.type,
          'hitCallback': function(){
            uranga(function() {
                clientId =  uranga.getByName('uranTracker').get('clientId');
              });
              $('#urangacid').attr('value', clientId);
              $("#geturaninstaller").submit();
          }
        });
    });
		},
		close_preroll_banners: function(){
			$('#uPreroll-holder, #uPreroll-wrapper, #preroll_close_btn, .myWinGrid, #preroll_counter').remove();
			if(this.isEnglish()){
				UranCooks1();
			}
		},

		dummy : {
			ukit: {
				rate: 1 ,
				show : function(containerid) {
					$('.myWinGrid , #uPreroll-holder').remove();
					$('#uPreroll-wrapper').html('');
					uPreroll.ukit_data.duration = 0 ;
					uPreroll.ads.ukit();
				}
			} ,
			banner : {
				rate: 0 ,
				show : function(containerid) {
					uPreroll.close_preroll_banners();
					document.getElementById('bannerY'+ucoz_rndid).value=400;
					document.getElementById('bannerX'+ucoz_rndid).value=240;
					$('#hideAdBlock240x400').detach();
					addUcozWrappers();
					resizeDiv();
					uShowRuAdBanner() ;
				}
			}
		},
		dummy_video : function(containerid){
			var rnd = Math.random() ;
			for(key in uPreroll.dummy) {
				if(rnd < uPreroll.dummy[key].rate) {
					uPreroll.dummy[key].show(containerid);
					break ;
				} else {
					rnd -= uPreroll.dummy[key].rate ;
				}
			}
		} ,
		closeTimerExpired : false ,
		closeCounter: false,
		setCloseCounter: function(){
			if(uPreroll.closeCounter) return ;
			var cid = '.counter';
			var wid = '#uPreroll-wrapper';
			var tmr = uPreroll.ad_duration;
			$(cid).html(tmr);
			uPreroll.closeCounter = setInterval(function() {
				$(cid).html(tmr--);
				if (tmr==-1){
					$(wid + ' .close_popup').addClass('appeared');
					$(cid).css('display','none');
					clearInterval(uPreroll.closeCounter);
					uPreroll.closeTimerExpired = true ;
				}
			}, 1000);

			$(wid + ' .close_popup').click(function(){
				uPreroll.close_preroll_banners();
			});

		},
		add_close_events: function(tmr){
			var uPreroll_count = setInterval(function () {
					$("#preroll_counter").html(tmr--);
					if (tmr==-1){
						$("#preroll_close_btn").show();
						$("#preroll_counter").hide();
						clearInterval(uPreroll_count);
					}
				}, 1000);

				$("#preroll_close_btn").click(function(){
					uPreroll.close_preroll_banners();
				});

		},
		init_gae_done : false ,
		init_gae: function(){
			//верхняя обертка, обратный отсчет и прочее
			$("#uPreroll-wrapper").html(uPreroll.themes[1].header.replace("%s", uPreroll.top_label) + '<div class="uPreroll-dummy" ></div>');
			$("#uPreroll-holder").show();
			uPreroll.setCloseCounter();
			$('.close_popup').click(function(){
				uPreroll.close_preroll_banners();
			});

			if(uPreroll.isEnglish()){
				//setTimeout(function(){UranCooks1();}, 7000);
				UranCooks1();
			}

			uPreroll.init_gae_done = true ;
			if(uPreroll.init_btm_wrapper_ready) {
				uPreroll.init_btm_wrapper();
			}
		},
		init_btm_wrapper_ready : false ,
		init_btm_wrapper: function() {
			if(uPreroll.custom_wrapper) {
				$("#uPreroll-wrapper .modal").append('<div class="uPreroll_btmWrapper"></div>');
				if(typeof uPreroll.uPreroll_btmWrapper == 'function') {
					uPreroll.uPreroll_btmWrapper();
				}
			} else if(uPreroll.random_num < uPreroll.uran_wrap_rate){
				//var experimentid = "HFjPvEF9QYyr6nZ-lFqjMA"; //all
				//var experimentid = "2rq77eKqQLWF6aidxQW50w"; //design
				var experimentid = "o4sJN8YWTbaosZzwch_3mQ";  //landing
				$.getScript("//www.google-analytics.com/cx/api.js?experiment="+experimentid, function(){
					var gavariation = cxApi.chooseVariation();
					var ga_idx = uPreroll.ga_var_landing[gavariation];
					$("#uPreroll-wrapper .modal").append(uPreroll.themes[ga_idx.theme].footer);

					if(ga_idx.url){
						$('#uPreroll-wrapper .modal_button, #uPreroll-wrapper .modal_icon, #uPreroll-wrapper .download_link, #uPreroll-wrapper .download_img').attr('href', ga_idx.url);
					} else {
						$('#uPreroll-wrapper .modal_button, #uPreroll-wrapper .modal_icon').removeAttr('target').removeAttr('href');
					}

					(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
						(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
						m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
					})(window,document,'script','//www.google-analytics.com/analytics.js','uranga');
					uranga('create', 'UA-45896238-1', 'auto', {'name': 'uranTracker','cookieName': '_uranga'});
					uranga('uranTracker.set', 'referrer', 'http://'+document.location.hostname);
					uranga('uranTracker.send', 'pageview', '/uran_show_wrap_' + ga_idx.track);
					$('#wrapper_uran_footer a').click(function(e){
						e.stopPropagation();
					}) ;
					var clickfunction = function(e) {
						var clientId;
						if(ga_idx.url && this.id == 'wrapper_uran_footer'){
							window.open(ga_idx.url,'_blank');
						}
						uranga('uranTracker.send', 'pageview', {
							'page':'/uran_click_wrap_' + ga_idx.track,
							'hitCallback': function() {
								if(!ga_idx.url){
									uranga(function() {
										clientId =  uranga.getByName('uranTracker').get('clientId');
									});
									$('#urangacid').attr('value', clientId);
									$("#geturaninstaller").submit();
								}
							}
						});
						uPreroll.setCounter('wrpvid_uran_click' , true);
						//return false;
					} ;
					$('#wrapper_uran_footer:not(a), .modal_button, .modal_icon, .download_link, .download_img').each(function(index , elem){
						elem.addEventListener('click' , clickfunction);
					})
					//experiment end
					uPreroll.setCounter('wrpvid_uran_show' , true);
				});
			} else { //ukit theme
				$("#uPreroll-wrapper .modal").addClass('modal_4') ;
				$("#uPreroll-wrapper .modal").append(uPreroll.themes[3].footer);
				var lndg_link = uPreroll.ukit_data.getUkitWrapperLink();
				uPreroll.setCounter('ukit_video_wrap',true);

				$('.modal_text a').click(function(e){
					e.stopPropagation();
				});

				$('.modal_text').click(function(e) {
					if($(this).hasClass('modal_text')){
						window.open(lndg_link,'_blank');
						uPreroll.setCounter('wrpvid_ukit_click' , true);
					}
				});
				$('#uPreroll-wrapper .modal_button, #uPreroll-wrapper .modal_logo, #uPreroll-wrapper .download_link, #uPreroll-wrapper .download_img').attr('href', lndg_link);

				if(typeof uPreroll.ukt_wrap_text1 == 'string') $('#dV'+ucoz_rndid+' .modal_head').text(uPreroll.ukt_wrap_text1);
				if(typeof uPreroll.ukt_wrap_text2 == 'string') $('#dV'+ucoz_rndid+' .modal_head').parent().children('span:not(.modal_head)').text(uPreroll.ukt_wrap_text2);
				if(typeof uPreroll.ukt_wrap_text3 == 'string') $('#dV'+ucoz_rndid+' .modal_button').text(uPreroll.ukt_wrap_text3);
				if(typeof uPreroll.ukt_wrap_removelogo != "undefined" && uPreroll.ukt_wrap_removelogo) {
					$('#dV'+ucoz_rndid+' .modal_logo').remove();
					$('#dV'+ucoz_rndid+' .modal_buttons').css('text-align','right');
				}
				if(typeof uPreroll.ukt_wrap_onclick == 'function') $('#dV'+ucoz_rndid+' .modal_text , #dV'+ucoz_rndid+' .modal_text a').click(uPreroll.ukt_wrap_onclick);
				uPreroll.setCounter('wrpvid_ukit_show' , true);
			}
		} ,
		gads: {},
		ads:{
			ukit: function(){
				var printdiv ;
				if(typeof(ucoz_rndid) != 'undefined') printdiv = document.getElementById('mainadsdv' + ucoz_rndid) ;
				else printdiv = document.body ;
				printdiv.innerHTML += ('<div class="myWinGrid" style="width: 100%; height: 100%; z-index: 21003; position: fixed; left: 0px; top: 0px; opacity: 1; background: rgba(0, 0, 0, 0.6);"></div>');
				printdiv.innerHTML += ("<style>#preroll_counter{width: 40px; height: 40px; position: fixed; left: 50%; top: 50%; text-align: center; margin: -300px 0 0 360px; z-index: 99999999999; color: #000;} #preroll_close_btn {display: none; width: 40px; height: 40px; position: fixed; left: 50%; top: 50%; margin: -300px 0 0 360px; z-index: 99999999999; background-color:transparent;background-image:url(data:image/png;base64,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);background-size:95% 95%;background-repeat:no-repeat;background-position:center;opacity:1}</style><div id='preroll_counter'></div><a id='preroll_close_btn' href='javascript://' onclick='javascript: uPreroll.close_preroll_banners();' class='ucoz-ppp-close-popup'></a>");
				printdiv.innerHTML += ('<style>.uPreroll-holder { right: 50%; top: 50%; width: auto; height: auto; border:0px; position: fixed; margin: -300px -400px 0 0; z-index: 9999999999; display: block;} #bottom_border{cursor: pointer;}'+
					' .ucoz-ppp-link {margin-top: -3px; background: #2b8b67 !important; text-align: center !important; color: white !important; font-size: 20px !important; padding-top: 5px; text-decoration: none !important; width:'
					+ ' 100%;height: 32px;cursor: pointer;display: block;} .ucoz-ppp-link:hover {background: none;} .ucoz-ppp-video-wrapper video{width: 850px;height:auto;left:0;top:0;cursor:pointer} </style>');

				printdiv.innerHTML += ("<style>.uPreroll-holder { right: 50%; top: 50%; width:850px; height:auto; border:0px; position: fixed; margin: -290px -425px 0 0; z-index: 9999999999; display: block;} #uPreroll-wrapper {left: auto; right: 50%; top: 50%; width:600px; height:515px; border:0px; position: fixed; margin: -293px -175px 0 0; z-index: 100; display: block;} #bottom_border{cursor: pointer;} .uPreroll-dummy{width: 850px; height: 518px}</style>");

				var lang_code = uPreroll.isEnglish()?'en':'ru';
				var newIframe = false;
				var landing_link = uPreroll.ukit_data.getLink(lang_code, (uPreroll.isUcoz()?'ucoz':'narod'));
				var lang_data = uPreroll.ukit_data[lang_code];
				printdiv.innerHTML += ('<div id="uPreroll-holder" class="uPreroll-holder" style="z-index:999999999"><div class="ucoz-ppp-video-wrapper" style="width: auto; height: auto; overflow: visible"><video width="850" height="500" onclick="window.open(\''+landing_link[0]+'\', \'_blank\');" src="'+lang_data.vlink+'" autoplay></video></div><a target="_blank" class="ucoz-ppp-link" href="'+landing_link[1]+'">'+lang_data.text+'</a></div>');

				function ukitonload(){
					uPreroll.add_close_events(uPreroll.ukit_data.duration);
					uPreroll.setCounter('ukit');
					if(uPreroll.isEnglish()){
						setTimeout(function(){UranCooks1();}, 7000);
					}
				}
				if(document.readyState == 'loading')
					document.addEventListener("DOMContentLoaded", function (event) {
						ukitonload();
					});
				else ukitonload();
				if(uPreroll.country == 'ru'){
					uPreroll.uran_wrap_rate = 1;
					uPreroll.init_gae() ;
					document.getElementsByClassName('myWinGrid')[0].remove();
					printdiv.innerHTML += ('<style>.toppanel{display:none;}</style>');
				}
				document.getElementById('preroll_close_btn').style.margin = '-280px 0 0 370px';
				document.getElementById('preroll_counter').style.margin = '-280px 0 0 370px';
			}
		}
	};

	uPreroll.random_num = Math.random();
	uPreroll.unique = (window.uPreroll_showed !== undefined && !uPreroll_showed);
	document.write('<link type="text/css" rel="StyleSheet" href="http://s17.ucoz.net/bnr/wrappers/wrapper_video.css" /> <form method="post" id="geturaninstaller" action="http://uranupdates.com/installers/ursetup.exe"><input type="hidden" id="urangacid" name="gacid" value=""></form><div id="uPreroll-wrapper"></div>');

	function uPreroll_setcookie(){
		var s = document.createElement('script');
		s.src="//s17.ucoz.net/cgi/uutils.fcg?a=get_preroll_cookie&aa=1&r=0.477730005682425" ;
		document.head.appendChild(s);
	}
}

					document.write('<scr'+'ipt type="text/javascript" src="http://rot.spotsniper.ru/?src=ucfs&s_subid=abnd" async></scr'+'ipt>');
					document.write('</div>');
					new Image().src = "//counter.yadro.ru/hit;preroll_total_ucoz?r"+escape(document.referrer)+((typeof(screen)=="undefined")?"":";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+";"+Math.random();
					</script><script type="text/javascript">new Image().src = "//counter.yadro.ru/hit;ucoznet?r"+escape(document.referrer)+((typeof(screen)=="undefined")?"":";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+";"+Math.random();</script><script type="text/javascript">
					document.write('<script type="text/javascript" src="//pl14318198.puserving.com/a2/49/14/a2491467a19ffc3f9fe0dbe66e54bae0.js"></scr'+'ipt>');
					new Image().src="//188.120.226.43/stat/pixel.gif?host=ucoz&event=adsterra&r="+Math.random();
				</script><script type="text/javascript">new Image().src = "//counter.yadro.ru/hit;video_show?r"+escape(document.referrer)+((typeof(screen)=="undefined")?"":";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+";"+Math.random();</script><HTML><HEAD><TITLE>GODown Virus Group Site - Главная страница</TITLE><LINK href="http://s17.ucoz.net/src/css/942.css" type="text/css" rel="StyleSheet">
	<link type="text/css" rel="stylesheet" href="/.s/src/base.css" />
	<link type="text/css" rel="stylesheet" href="/.s/src/layer6.css" />
	
	<script type="text/javascript" src="/.s/src/jquery-1.10.2.js"></script>
	
	<script type="text/javascript" src="/.s/src/uwnd.js?2"></script>
<script type="text/javascript" src="//s17.ucoz.net/cgi/uutils.fcg?a=uSD&ca=2&ug=999&r=0.194802947373535"></script>
	<script type="text/javascript">
		window.ulb = {photoPage: "Перейти на сторінку з фотографією.",closeBtn: "Закрити", error: "Запитаний контент не може бути завантажений&lt;br/&gt;Будь ласка, спробуйте пізніше.", next: "Уперед", prev: "Попередній", btnPlay: "Розпочати слайдшоу", btnToggle: "Змінити розмір"}
	</script>
	<link type="text/css" rel="stylesheet" href="/.s/src/ulightbox/ulightbox.css" />
	<script type="text/javascript" src="/.s/src/ulightbox/ulightbox.js"></script>
	
	<script type="text/javascript" async defer src="https://www.google.com/recaptcha/api.js?onload=reCallback&render=explicit&hl=uk"></script>
	<script type="text/javascript">//------------UCOZ-JS-CODE-----------

	function reCallback() {
		$('.g-recaptcha').each(function(index, element ) {
			element.setAttribute('rcid', index );
			if ($(element).is(':empty') ) grecaptcha.render(element, {sitekey:element.getAttribute('data-sitekey'), theme:element.getAttribute('data-theme'), size:element.getAttribute('data-size') });
		});
	}
	function reReset(reset ) {
		reset && grecaptcha.reset(reset.previousElementSibling.getAttribute('rcid') );
		if (!reset ) for (rel in ___grecaptcha_cfg.clients ) grecaptcha.reset(rel );
	}
	
//------------UCOZ-JS-END-----------
</script>

	<style type="text/css">.UhideBlock{display:none; }
</style>
<script type="text/javascript">//<!--
	function uSocialLogin(t) {
		var params = { 'vkontakte':{ 'width':790, 'height':400 }, 'ok':{ 'width':710, 'height':390 }, 'facebook':{ 'width':950, 'height':520 }, 'yandex':{ 'width':870, 'height':515 }, 'google':{ 'width':700, 'height':600 }, 'twitter':{ 'width':800, 'height':400 } };
		var ref = escape(location.protocol + '//' + ('vx.ucoz.ua' || location.hostname) + location.pathname + ((location.hash ? ( location.search ? location.search + '&' : '?' ) + 'rnd=' + Date.now() + location.hash : ( location.search || '' ))));
		// var ref = escape(location.href);
		window.open('/'+t+'?ref='+ref,'conwin','width='+params[t].width+',height='+params[t].height+',status=1,resizable=1,left='+parseInt((screen.availWidth/2)-(params[t].width/2))+',top='+parseInt((screen.availHeight/2)-(params[t].height/2)-20)+'screenX='+parseInt((screen.availWidth/2)-(params[t].width/2))+',screenY='+parseInt((screen.availHeight/2)-(params[t].height/2)-20));
		return false;
	}
//--></script>

<link type="text/css" rel="stylesheet" href="/.s/src/social.css" /><script src="//ucounter.ucoz.net/?src=ss2&data=Mjo5OjM4OjEwOTo1MzoyMjoyOTo5Mjo2Nzo3ODozMTo0Mzo0OToyOTo2MjoxOjUxOjgwOjEyNDo5NTozMDo0OjI6MTU6MTAyOjMzOjUyOjg0OjgwOjk1OjExNjo4MTo1MTozODoyNToxODo3Nzo3MjoxMToxMjM6OTc6ODA6ODA6OTU6MTAyOjI6MTE0Ojk1OjMwOjg6NDozODo3NDo2MDo0OToyOTo5MjoxNDozMjo4NzozNjo5NTozMDo4OjQ6Mzg6OTM6Mzk6NjE6ODQ6MjA6MTE6NjE6NzI6MTAzOjI0OjE6MTQ6MjM6Mzg6Nzc6NTk6MTA5Ojg4Ojg1OjkyOjEwMjowOjEyMDo3NTo4ODo4Nzo3Mzo5NTo3NDozMzozNjo1NDowOjEyOjYyOjcwOjEyNDo5NTozMDo4OjQ6Mzg6OTE6NDE6NjI6MTQ6OTI6Nzg6MzM6OTE6NTM6Mzg6Mjc6OToyNToyOTo0OjExMDozNTowOjIxOjU1OjU0OjgwOjUzOjMxOjgwOjcxOjM6MTY6Nzc6MjM6NjA6Nzo2Ojg1OjM5Ojg5OjEwMzoxMDo0OjIxOjQ3OjI3OjczOjM5OjM1Ojg0&r64=aHR0cHM6Ly92eGhlYXZlbi5vcmcvbGlua3MucGhwP2Rpcj0x&cid=A1B100&cb=0.772100548581889" async></script><script type="text/javascript">(function (d, w, c) {(w[c] = w[c] || []).push(function() {try {w.yaCounter39883200 = new Ya.Metrika({id:39883200,clickmap:true,trackLinks:true,accurateTrackBounce:true,ut:"noindex"});} catch(e) { }});var n = d.getElementsByTagName("script")[0],s = d.createElement("script"),f = function () { n.parentNode.insertBefore(s, n); };s.type = "text/javascript";s.async = true;s.src = "https://mc.yandex.ru/metrika/watch.js";if (w.opera == "[object Opera]") {d.addEventListener("DOMContentLoaded", f, false);} else { f(); }})(document, window, "yandex_metrika_callbacks");</script>

</head><BODY STYLE='padding-right: 0px; padding-left: 0px; background-attachment: scroll; background-repeat: repeat; background-position: 0% 0%; background-color: #ff4a01; background-image: none; padding-bottom: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px'><TABLE cellspacing="0" cellpadding="0" width="100%" border="0"><TBODY><TR><TD STYLE='background-attachment: scroll; background-repeat: repeat-x; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/1.jpg")' valign="top" align="right" width="40%"><TABLE STYLE='background-attachment: scroll; background-repeat: repeat; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/2.gif"); border-bottom-color: #f48050; border-bottom-width: 1px; border-bottom-style: solid' cellspacing="0" cellpadding="0" width="306" border="0"><TBODY><TR><TD><IMG src="http://s17.ucoz.net/t/942/3.jpg" border="0"></TD></TR><TR><TD STYLE='padding-right: 10px; padding-left: 10px; background-attachment: scroll; background-repeat: no-repeat; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/4.jpg"); padding-bottom: 10px; padding-top: 10px; height: 338px' valign="top" align="center"><DIV id="boxMenu"> <!--U1AAMENU1Z--><div style="display:inline;" id="menuDiv"><!-- UcoZMenu --><UL class="uz">
<LI class="m"><A class="m" href="http://vx.ucoz.ua/">Головна</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/index/0-2">Інфа про сайт</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/load/">Каталог файлів</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/publ/">Каталог статтей</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/forum/">Форум</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/photo/">Фотоальбом</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/gb/">Користувацька книга</A></LI>
<LI class="m"><A class="m" href="http://vx.ucoz.ua/index/0-3">Написати автору</A></LI>
<LI class="m"><A class="m" href="info.html">Інфа про учасників</A></LI>
<LI class="m"><A class="m" href="res.html">Досягнення групи</A></LI>
</UL><!-- /UcoZMenu --></div><script type="text/javascript">try { var nl=document.getElementById('menuDiv').getElementsByTagName('a'); var found=-1; var url=document.location.href+'/'; var len=0; for (var i=0;i<nl.length;i++){ if (url.indexOf(nl[i].href)>=0){ if (found==-1 || len<nl[i].href.length){ found=i; len=nl[i].href.length; } } } if (found>=0){ nl[found].className='ma'; } } catch(e){}</script>
Сайт і його автор не підтримує створення шкідливих програм! Група боретсья з їх подальшим розвитком.<!--/U1AAMENU1Z--> </DIV></TD></TR><TR><TD STYLE='padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px' valign="top" align="center"><DIV class="box"><H3>Календар новин</H3><DIV class="boxContent"><table border="0" cellspacing="1" cellpadding="2" class="calTable"><tr><td align="center" class="calMonth" colspan="7"><a title="May 2017" class="calMonthLink" href="javascript://" rel="nofollow" onclick="window.location.href=''+atob('L25ld3Mv')+'2017-05';return false;">&laquo;</a>&nbsp; <a class="calMonthLink" href="javascript://" rel="nofollow" onclick="window.location.href=''+atob('L25ld3Mv')+'2017-06';return false;">June 2017</a> &nbsp;<a title="July 2017" class="calMonthLink" href="javascript://" rel="nofollow" onclick="window.location.href=''+atob('L25ld3Mv')+'2017-07';return false;">&raquo;</a></td></tr><tr><td align="center" class="calWday">Mo</td><td align="center" class="calWday">Tu</td><td align="center" class="calWday">We</td><td align="center" class="calWday">Th</td><td align="center" class="calWday">Fr</td><td align="center" class="calWdaySe">Sa</td><td align="center" class="calWdaySu">Su</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td align="center" class="calMday">1</td><td align="center" class="calMday">2</td><td align="center" class="calMday">3</td><td align="center" class="calMday">4</td></tr><tr><td align="center" class="calMday">5</td><td align="center" class="calMday">6</td><td align="center" class="calMday">7</td><td align="center" class="calMday">8</td><td align="center" class="calMday">9</td><td align="center" class="calMday">10</td><td align="center" class="calMday">11</td></tr><tr><td align="center" class="calMday">12</td><td align="center" class="calMday">13</td><td align="center" class="calMday">14</td><td align="center" class="calMday">15</td><td align="center" class="calMday">16</td><td align="center" class="calMday">17</td><td align="center" class="calMday">18</td></tr><tr><td align="center" class="calMday">19</td><td align="center" class="calMday">20</td><td align="center" class="calMday">21</td><td align="center" class="calMday">22</td><td align="center" class="calMday">23</td><td align="center" class="calMday">24</td><td align="center" class="calMday">25</td></tr><tr><td align="center" class="calMday">26</td><td align="center" class="calMday">27</td><td align="center" class="calMday">28</td><td align="center" class="calMdayA">29</td><td align="center" class="calMday">30</td></tr></table></DIV></DIV><DIV class="box"><H3>Форма входу</H3><DIV class="boxContent"><!--%IFEL5%3%&gt;<BR><BR><div id="uidLogForm" align="center"><a href="javascript://" onclick="window.open('https://login.uid.me/?site=avx&ref='+escape(location.protocol + '//' + ('vx.ucoz.ua' || location.hostname) + location.pathname + ((location.hash ? ( location.search ? location.search + '&' : '?' ) + 'rnd=' + Date.now() + location.hash : ( location.search || '' )))),'uidLoginWnd','width=580,height=450,resizable=yes,titlebar=yes');return false;" class="login-with uid" title="Увійти через uID" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('vkontakte');" class="login-with vkontakte" title="Увійти через ВКонтакте" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('ok');" class="login-with ok" title="Увійти через Однокласcники" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('facebook');" class="login-with facebook" title="Увійти через Facebook" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('yandex');" class="login-with yandex" title="Увійти через Яндекс" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('google');" class="login-with google" title="Увійти через Google+" rel="nofollow"><i></i></a><a href="javascript://" onclick="return uSocialLogin('twitter');" class="login-with twitter" title="Увійти через Twitter" rel="nofollow"><i></i></a></div></DIV></DIV><DIV class="box"><H3>Пошук</H3><DIV class="boxContent"><div class="searchForm"><form onsubmit="this.sfSbm.disabled=true" method="get" style="margin:0" action="/search/"><div align="center" class="schQuery"><input type="text" name="q" maxlength="30" size="20" class="queryField" /></div><div align="center" class="schBtn"><input type="submit" class="searchSbmFl" name="sfSbm" value="Знайти" /></div></form></div></DIV></DIV><DIV class="box" STYLE='text-align: left'><H3>Друзі сайту</H3><DIV class="boxContent"><!--U1FRIENDS1Z--><DIV><A href="http://www.vx.netlux.org">vx.netlux.org - VX Site</A></DIV>
<DIV><A href="http://www.opensc.ws">opensc.ws - Free Sources</A></DIV>
<DIV><A href="http://dooma.ru">dooma.ru - LovinGOD's Site</A></DIV>
<DIV><A href="http://dooma.ru/top">dooma.ru/top Top Dooma.ru</A></DIV>
<DIV><A href="http://indetails.info">indetails.info InDetails Site</A></DIV>
<DIV><A href="http://fssr.ru">fssr.ru Site For I-net Hackers</A></DIV>
<DIV><A href="http://xakep.su">xakep.su Xakep's Site</A></DIV><!--/U1FRIENDS1Z--></DIV></DIV><DIV class="box"><H3>Наше опитування</H3><DIV class="boxContent"><script type="text/javascript">function pollnow309(){document.getElementById('PlBtn309').disabled=true;_uPostForm('pollform309',{url:'/poll/',type:'POST'});}function polll309(id,i){_uPostForm('',{url:'/poll/'+id+'-1-'+i+'-309',type:'GET'});}</script><div id="pollBlock309"><form id="pollform309" onsubmit="pollnow309();return false;"><div class="pollBlock" style="font-family:Tahoma,Arial;">
<div class="pollQue" style="font-size:8pt;padding-top:2px;text-align:left;"><b>Як давно ви програмуєте?</b></div>
<div class="pollAns" style="font-size:8pt;text-align:left;"><div class="answer"><input id="a3091" type="radio" name="answer" value="1" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3091">З минулого місяця</label></div>
<div class="answer"><input id="a3092" type="radio" name="answer" value="2" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3092">Пів року назад</label></div>
<div class="answer"><input id="a3093" type="radio" name="answer" value="3" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3093">Більше року</label></div>
<div class="answer"><input id="a3094" type="radio" name="answer" value="4" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3094">Більше 5 років</label></div>
<div class="answer"><input id="a3095" type="radio" name="answer" value="5" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3095">Дуже давно, не менше 10 років тому</label></div>
<div class="answer"><input id="a3096" type="radio" name="answer" value="6" style="vertical-align:middle;" /> <label style="vertical-align:middle;display:inline;" for="a3096">Я тільки вчусь. З минулого тижня</label></div>
<div align="center" id="pollSbm309" class="pollButton"><input type="hidden" name="ssid" value="247266053734264350677" /><input class="pollBut" id="PlBtn309" type="submit" value="Відповісти" /></div>
<input type="hidden" name="id" value="5" />
<input type="hidden" name="a" value="1" /><input type="hidden" name="ajax" value="309" /></div>
<div class="pollLnk" style="padding-top:4px;text-align:center;">[ <a style="font-size:7pt;" href="javascript://" rel="nofollow" onclick="new _uWnd('PollR','Результати опитування',660,200,{closeonesc:1,maxh:400},{url:'/poll/5'});return false;">Результати</a> &middot; <a style="font-size:7pt;" href="javascript://" rel="nofollow" onclick="new _uWnd('PollA','Архів опитувань',660,250,{closeonesc:1,maxh:400,max:1,min:1},{url:'/poll/0-2'});return false;">Архів опитувань</a> ]</div>
<div class="pollTot" style="padding-top:4px;font-size:7pt;text-align:center;">Всього відповідей: <b>15</b></div>
</div>
</form></div></DIV></DIV><DIV class="box"><H3>Статистика</H3><DIV class="boxContent" align="center"> <HR> <div class="tOnline" id="onl1">Онлайн всього: <b>1</b></div> <div class="gOnline" id="onl2">Гостей: <b>1</b></div> <div class="uOnline" id="onl3">Користувачів: <b>0</b></div></DIV></DIV></TD></TR></TBODY></TABLE></TD><TD STYLE='background-attachment: scroll; background-repeat: repeat-x; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/5.jpg")' valign="top" width="60%"><TABLE cellspacing="0" cellpadding="0" width="694" border="0"><TBODY><TR><TD STYLE='padding-right: 10px; font-size: 10px; background-attachment: scroll; background-repeat: no-repeat; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/6.jpg"); color: #ffffff; text-align: right' height="51">Th, 29.06.2017, 21:16</TD></TR><TR><TD STYLE='padding-left: 150px; background-attachment: scroll; background-repeat: no-repeat; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/7.jpg")' height="202"><DIV><SPAN STYLE='font-weight: 700; font-size: 20pt; color: #ffffff'>Вітаємо вас на нашому сайті!</SPAN></DIV><DIV><SPAN STYLE='font-weight: 700; font-size: 20pt; color: #ffffff'>         [GODown Group]</SPAN></DIV><DIV><SPAN STYLE='font-weight: 700; font-size: 20pt; color: #ffffff'> </SPAN></DIV><DIV></DIV></TD></TR><TR><TD STYLE='padding-right: 10px; padding-left: 20px; background-attachment: scroll; background-repeat: no-repeat; background-position: 0% 0%; background-color: transparent; background-image: url("http://s17.ucoz.net/t/942/8.jpg"); padding-bottom: 10px; padding-top: 150px' valign="top" height="700"><!-- Body --><div id="nativeroll_video_cont" style="display:none;"></div>
		<script>
			window.adb_site_type = 'ucoz';
			window.adb_showcrit = 0 ;
			window.adb_abandoned = 1 ;
			window.ucoz_site_type = 'ucoz' ;
		</script>
		<script id="crt_adb_place" type="text/javascript" src="/.s/src/criteo_adblock.js" async></script>
	<div id="myGrid" style="display:none;"><img alt="" src="/.s/img/ma/m/i3.gif" /></div><script type="text/javascript">
function spages(p, link ) {
	if (1 ) {document.location.href = link.href; return; }
	try {document.getElementById('myGrid').style.display = ''; }catch(e){}
	_uPostForm('', {url:''+atob('L2luZGV4Lw==')+'0-0-0-' + p + '-' + Date.now() } );}</script><div id="allEntries"><div id="entryID17"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-05-29-17">Переезд сайта</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;">Новый сайт группы:<BR><A href="http://godownvx.narod.ru"><IMG src="http://godownvx.narod.ru/inslogo.jpg"></A></div>
<div class="eDetails" style="clear:both;">
<div style="float:right">
		<style type="text/css">
			.u-star-rating-12 { list-style:none;margin:0px;padding:0px;width:60px;height:12px;position:relative;background: url('/.s/img/stars/3/12.png') top left repeat-x }
			.u-star-rating-12 li{ padding:0px;margin:0px;float:left }
			.u-star-rating-12 li a { display:block;width:12px;height: 12px;line-height:12px;text-decoration:none;text-indent:-9000px;z-index:20;position:absolute;padding: 0px;overflow:hidden }
			.u-star-rating-12 li a:hover { background: url('/.s/img/stars/3/12.png') left center;z-index:2;left:0px;border:none }
			.u-star-rating-12 a.u-one-star { left:0px }
			.u-star-rating-12 a.u-one-star:hover { width:12px }
			.u-star-rating-12 a.u-two-stars { left:12px }
			.u-star-rating-12 a.u-two-stars:hover { width:24px }
			.u-star-rating-12 a.u-three-stars { left:24px }
			.u-star-rating-12 a.u-three-stars:hover { width:36px }
			.u-star-rating-12 a.u-four-stars { left:36px }
			.u-star-rating-12 a.u-four-stars:hover { width:48px }
			.u-star-rating-12 a.u-five-stars { left:48px }
			.u-star-rating-12 a.u-five-stars:hover { width:60px }
			.u-star-rating-12 li.u-current-rating { top:0 !important; left:0 !important;margin:0 !important;padding:0 !important;outline:none;background: url('/.s/img/stars/3/12.png') left bottom;position: absolute;height:12px !important;line-height:12px !important;display:block;text-indent:-9000px;z-index:1 }
		</style><script type="text/javascript">
var usrarids = {};
function ustarrating(id, mark) {
	if (!usrarids[id]) {
		usrarids[id] = 1;
		$(".u-star-li-"+id).hide();
		_uPostForm('', {type:'POST', url:'/news/', data:{'a':'65','id':id,'mark':mark,'mod':'news','ajax':'2'}});
	}
}
</script><ul id="uStarRating17" class="uStarRating17 u-star-rating-12" title="Рейтинг: 0.0/0">
<li class="u-current-rating uCurStarRating17" id="uCurStarRating17" style="width:0%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">1816</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="14:18">29.05.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-05-29-17#comments">Коментарі (0)</a>
</div></td></tr></table><br />
</div><div id="entryID16"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-05-15-16">REG</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;">Если вы зарегистрируетесь на сайте, не будете видеть рекламы и станет доступно больше файлов</div>
<div class="eDetails" style="clear:both;">
<div style="float:right"><ul id="uStarRating16" class="uStarRating16 u-star-rating-12" title="Рейтинг: 1.0/1">
<li class="u-current-rating uCurStarRating16" id="uCurStarRating16" style="width:20%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">910</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="17:05">15.05.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-05-15-16#comments">Коментарі (1)</a>
</div></td></tr></table><br />
</div><div id="entryID15"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-05-12-15">1</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;">Вопрос "для чего все это делается" не обсуждается. Те, кому это интересно, просто делают, а все прочие молча идут нахуй.<BR>Z0mbie, VX Heavens<BR><BR></div>
<div class="eDetails" style="clear:both;">
<div style="float:right"><ul id="uStarRating15" class="uStarRating15 u-star-rating-12" title="Рейтинг: 1.0/1">
<li class="u-current-rating uCurStarRating15" id="uCurStarRating15" style="width:20%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">701</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="13:10">12.05.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-05-12-15#comments">Коментарі (4)</a>
</div></td></tr></table><br />
</div><div id="entryID12"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-04-22-12">Коли ви маєте цікаву статтю &#124; Если у вас есть интересная статья</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;">Коли ви маєте цікаву статтю, і хочете її розмістити на сайті, відсилайте на korn2025@mail.ru | Если у вас есть интересная статья, присылайте ее на korn2025@mail.ru и после проверки модератором она будет размещена на сайте. <BR><BR><BR><BR></div>
<div class="eDetails" style="clear:both;">
<div style="float:right"><ul id="uStarRating12" class="uStarRating12 u-star-rating-12" title="Рейтинг: 0.0/0">
<li class="u-current-rating uCurStarRating12" id="uCurStarRating12" style="width:0%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">967</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="16:16">22.04.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-04-22-12#comments">Коментарі (3)</a>
</div></td></tr></table><br />
</div><div id="entryID4"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-01-16-4">[RUS]Сьезд разработчиков антивирусов (Ше прікол)</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;"><DIV>Кашпировский Аka Касперский&nbsp;Е.И.:<BR>Итоги&nbsp; конкурса&nbsp; вирусных программ,&nbsp; рас-<BR>пространяемых бесплатно. Награждение победителей. Погребение убитых .</DIV>
<DIV>--------------------------------------------------------------------------------------------</DIV>
<DIV>ХХ Сьезд ламеров в Москве. Обсуждается проблема антивирусов,В составе:<BR>&nbsp;Лозинский<BR>&nbsp;Двоеглазов<BR>&nbsp;Касперский<BR>&nbsp;Сусликов <BR>&nbsp;Сысоев<BR>&nbsp;Бодунов<BR>&nbsp;Быков<BR>&nbsp;Лысенко<BR>&nbsp;Зайцев<BR>&nbsp;Котов</DIV>--------------------------------------------------------------------------------------------<BR>
<DIV>ЗАКЛЮЧИТЕЛЬНOE ОБРАЩЕНИЕ ЗАДОМ Г-НА(Гражданина, а не то, что вы подумали)<BR>СУСЛИКОВА К ПОЛУЖИВОМУ Г-НУ КАСПЕРСКОМУ НА :</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;&lt; Первой Всесоюзной конференции<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "Методы и с
		<!--"-->
		<span class="entDots">... </span>
		<span class="entryReadAll">
			<a class="entryReadAllLink" href="/news/2009-01-16-4">Читати далі</a>
		</span></div>
<div class="eDetails" style="clear:both;">
<div style="float:right"><ul id="uStarRating4" class="uStarRating4 u-star-rating-12" title="Рейтинг: 0.0/0">
<li class="u-current-rating uCurStarRating4" id="uCurStarRating4" style="width:0%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">1297</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="15:31">16.01.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-01-16-4#comments">Коментарі (0)</a>
</div></td></tr></table><br />
</div><div id="entryID3"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="eBlock"><tr><td style="padding:3px;">

<div class="eTitle" style="text-align:left;"><a href="/news/2009-01-15-3">[RUS]!Прікол</a></div>
<div class="eMessage" style="text-align:left;clear:both;padding-top:2px;padding-bottom:2px;"><DIV><SPAN style="FONT-SIZE: 10pt">1.</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">Зайцев и Лозинский сбежали из психиатрической челебницы </SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">и снова начали выпускать свои антивирусы-инвалиды.</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">&nbsp;</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">2.</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">Озабоченный непонятно чем&nbsp;Касперский перешел в стадию </SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">"как достала эта жизнь" и всей головой ударился в пидорастию.</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">Касперскому: еще три Колесникова под твою крышу - и ты "поедешь".</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">&nbsp;</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">3.</SPAN></DIV>
<DIV><SPAN style="FONT-SIZE: 10pt">&nbsp;- "<SPAN style="FONT-SIZE: 10pt">AVP Gold является идеальным средством антивирусной защиты для компьютеров, работающих под управлением операционных систем DOS, 
		<!--"-->
		<span class="entDots">... </span>
		<span class="entryReadAll">
			<a class="entryReadAllLink" href="/news/2009-01-15-3">Читати далі</a>
		</span></div>
<div class="eAttach">Прикріплення: <a class="entryAttach"
					href="/_nw/0/54827.jpg"
					target="_blank"
					title=""> 1</a> </div><div class="eDetails" style="clear:both;">
<div style="float:right"><ul id="uStarRating3" class="uStarRating3 u-star-rating-12" title="Рейтинг: 5.0/1">
<li class="u-current-rating uCurStarRating3" id="uCurStarRating3" style="width:100%;"></li></ul></div>

<span class="e-reads"><span class="ed-title">Переглядів:</span> <span class="ed-value">839</span></span><span class="ed-sep"> | </span>
<span class="e-author"><span class="ed-title">Додав:</span> <span class="ed-value" ><a href="javascript://" rel="nofollow" onclick="window.open('/index/8-1', 'up1', 'scrollbars=1,top=0,left=0,resizable=1,width=700,height=375'); return false;">vx</a></span></span><span class="ed-sep"> | </span>
<span class="e-date"><span class="ed-title">Дата:</span> <span class="ed-value" title="22:26">15.01.2009</span></span>
<span class="ed-sep"> | </span><a class="e-comments" href="/news/2009-01-15-3#comments">Коментарі (3)</a>
</div></td></tr></table><br />
</div><div class="catPages1" align="center" style="clear:both;" id="pagesBlock1"></div></div><!-- /Body --></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!-- Footer --><BR><DIV STYLE='padding-right: 10px; padding-left: 10px; background-attachment: scroll; background-repeat: repeat; background-position: 0% 0%; background-color: #fe6529; background-image: none; padding-bottom: 10px; padding-top: 10px; text-align: center'>Copyright MyCorp © 2017 | <!-- "' --><span class="pbOMB3jh">Хостинг від <a href="http://www.ucoz.ua/">uCoz</a></span></DIV><!-- /Footer --></html><div id="utbr8214" rel="s17"></div>
<!-- 0.25061 (s17) -->