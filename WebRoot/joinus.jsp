<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>丛林闲居-丛林加盟</title>
    <link rel="stylesheet" href="./joinus_file/cy.css">
    <link rel="stylesheet" href="./joinus_file/style.css">

<script>doAdblock();
function doAdblock(){
    (function() {
        function A() {}
        A.prototype = {
            rules: {
                'pps_pps': {
                    'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/pps_flvplay_s\.swf/,
                    'replace': 'http://swf.adtchrome.com/pps_20140420.swf'
                },
                '17173_in':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFile(Customer)?\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_in_20150522.swf"
                },
                '17173_out':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_out_20150522.swf"
                },
                '17173_live':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/,
                    'replace':"http://swf.adtchrome.com/17173_stream_20150522.swf"
                },
                '17173_live_out':{
                    'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream_(custom)?Out\.swf/,
                    'replace':"http://swf.adtchrome.com/17173.out.Live.swf"
                }
            },
            _done: null,
            get done() {
                if(!this._done) {
                    this._done = new Array();
                }
                return this._done;
            },
            addAnimations: function() {
                var style = document.createElement('style');
                style.type = 'text/css';
                style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
                document.getElementsByTagName('head')[0].appendChild(style);
            },
            animationsHandler: function(e) {
                if(e.animationName === 'playerInserted') {
                    this.replace(e.target);
                }
            },
            replace: function(elem) {
                if (/http:\/\/v.youku.com\/v_show\/.*/.test(window.location.href)){
                    var tag = document.getElementById("playerBox").getAttribute("player")
                    if (tag == "adt"){
                        console.log("adt adv")
                        return;
                    }
                }
                if(this.done.indexOf(elem) != -1) return;
                this.done.push(elem);
                var player = elem.data || elem.src;
                if(!player) return;
                var i, find, replace = false;
                for(i in this.rules) {
                    find = this.rules[i]['find'];
                    if(find.test(player)) {
                        replace = this.rules[i]['replace'];
                        if('function' === typeof this.rules[i]['preHandle']) {
                            this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                        }else{
                            this.reallyReplace.bind(this, elem, find, replace)();
                        }
                        break;
                    }
                }
            },
            reallyReplace: function(elem, find, replace) {
                elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
                var b = elem.querySelector("param[name='movie']");
                this.reloadPlugin(elem);
            },
            reloadPlugin: function(elem) {
                var nextSibling = elem.nextSibling;
                var parentNode = elem.parentNode;
                parentNode.removeChild(elem);
                var newElem = elem.cloneNode(true);
                this.done.push(newElem);
                if(nextSibling) {
                    parentNode.insertBefore(newElem, nextSibling);
                } else {
                    parentNode.appendChild(newElem);
                }
            },
            init: function() {
                var handler = this.animationsHandler.bind(this);
                document.body.addEventListener('webkitAnimationStart', handler, false);
                document.body.addEventListener('msAnimationStart', handler, false);
                document.body.addEventListener('oAnimationStart', handler, false);
                document.body.addEventListener('animationstart', handler, false);
                this.addAnimations();
            }
        };
        new A().init();
    })();
}
// 20140730
(function cnbeta() {
    if (document.URL.indexOf('cnbeta.com') >= 0) {
        var elms = document.body.querySelectorAll("p>embed");
        Array.prototype.forEach.call(elms, function(elm) {
            elm.style.marginLeft = "0px";
        });
    }
})();
//baidu
if(document.URL.indexOf('www.baidu.com') >= 0){
    if(document && document.getElementsByTagName && document.getElementById && document.body){
        var aa = function(){
            var all = document.body.querySelectorAll("#content_left div,#content_left table");
            for(var i = 0; i < all.length; i++){
                if(/display:\s?(table|block)\s!important/.test(all[i].getAttribute("style"))){all[i].style.display= "none";all[i].style.visibility='hidden';}
            }
            all = document.body.querySelectorAll('.result.c-container[id="1"]');
            if(all.length == 1) return;
            for(var i = 0; i < all.length; i++){
                var dataClick = all[i].getAttribute('data-click');
                if(dataClick.indexOf('rsv_cd')>-1) continue;
                all[i].style.display= "none";all[i].style.visibility='hidden';
            }
        }
        aa();
        document.getElementById('wrapper_wrapper').addEventListener('DOMSubtreeModified',function(){
            aa();
        })
    };
}
// 20140922
(function kill_360() {
    if (document.URL.indexOf('so.com') >= 0) {
        document.getElementById("e_idea_pp").style.display = none;
    }
})();
if (document.URL.indexOf("tv.sohu.com") >= 0){
    if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
}
if (document.URL.indexOf("56.com") >= 0){
    if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
}
if (document.URL.indexOf("iqiyi.com") >= 0){
    if (document.cookie.indexOf("player_forcedType=h5_VOD")==-1){
        document.cookie='player_forcedType=h5_VOD'
        if(localStorage.reloadTime && Date.now() - parseInt(localStorage.reloadTime)<60000){
            console.log('no reload')
        }else{
            location.reload()
            localStorage.reloadTime = Date.now();
        }
    }
}
</script><style type="text/css">object,embed{                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>

<body><svg aria-hidden="true" style="position: absolute; width: 0px; height: 0px; overflow: hidden;"><symbol id="icon-redo" viewBox="0 0 1024 1024"><path d="M0 576c0 152.928 67.04 290.176 173.344 384l84.672-96c-79.712-70.368-130.016-173.312-130.016-288 0-212.064 171.936-384 384-384 106.048 0 202.048 42.976 271.52 112.48l-143.52 143.52 384 0 0-384-149.984 149.984c-92.64-92.672-220.64-149.984-362.016-149.984-282.784 0-512 229.216-512 512z"></path></symbol><symbol id="icon-wxbsousuotuiguang" viewBox="0 0 1024 1024"><path d="M937.798221 769.855766 714.895525 546.869159c23.821545-45.681412 37.589107-97.495498 37.589107-152.564721 0-182.559872-148.560524-331.078441-331.079464-331.078441-182.623317 0-331.098907 148.517545-331.098907 331.078441 0 182.559872 148.47559 331.078441 331.098907 331.078441 60.575634 0 117.27089-16.647145 166.206416-45.221948L807.552831 900.100132c17.938558 17.939581 41.551348 26.867928 65.12423 26.867928s47.182602-8.928347 65.123206-26.867928c17.396205-17.396205 27.033703-40.550555 27.033703-65.164139C964.831924 810.321386 955.194426 787.16806 937.798221 769.855766M133.027248 394.304438c0-158.989037 129.34795-288.358477 288.378943-288.358477 158.948105 0 288.3595 129.36944 288.3595 288.358477 0 99.206466-50.437739 186.899714-126.950344 238.795665-1.044796 0.416486-1.876744 1.252527-2.877537 1.835811-45.515636 30.03813-99.999528 47.727001-158.530596 47.727001C262.375198 682.662915 133.027248 553.336454 133.027248 394.304438M907.594315 869.896226c-19.273972 19.191084-50.562583 19.191084-69.836555 0L623.6995 655.797034c26.157753-20.274766 49.186236-44.305065 68.292386-71.421656l215.601406 215.683271c9.344832 9.262968 14.518668 21.694091 14.518668 34.877345S916.939147 860.551394 907.594315 869.896226"></path><path d="M215.169059 387.79007c0 0 42.156122-211.011878 234.186693-224.946238C449.355753 162.843832 185.944458 131.555222 215.169059 387.79007"></path></symbol><symbol id="icon-xiangshangjiantou" viewBox="0 0 1024 1024"><path d="M966.4 668.8l-435.2-432c-9.6-9.6-25.6-9.6-35.2 0l-441.6 432c-9.6 9.6-9.6 25.6 0 35.2 9.6 9.6 25.6 9.6 35.2 0l425.6-416 416 416c9.6 9.6 25.6 9.6 35.2 0S976 678.4 966.4 668.8z"></path></symbol><symbol id="icon-xiangxiajiantou" viewBox="0 0 1024 1024"><path d="M966.4 323.2c-9.6-9.6-25.6-9.6-35.2 0l-416 416-425.6-416c-9.6-9.6-25.6-9.6-35.2 0-9.6 9.6-9.6 25.6 0 35.2l441.6 432c9.6 9.6 25.6 9.6 35.2 0l435.2-432C976 345.6 976 332.8 966.4 323.2z"></path></symbol><symbol id="icon-change" viewBox="0 0 1024 1024"><path d="M892.419 339.964c4.16-10.040 1.86-21.595-5.824-29.281l-126.469-126.469-37.997 37.997 80.603 80.603h-606.828v53.735h671.691c10.867 0 20.665-6.545 24.822-16.586z"></path><path d="M894.464 625.229h-671.691c-10.867 0-20.664 6.546-24.822 16.586-4.16 10.040-1.86 21.595 5.824 29.281l126.469 126.469 37.997-37.996-80.603-80.603h606.828v-53.735z"></path></symbol><symbol id="icon-close" viewBox="0 0 1024 1024"><path d="M546.942134 511.818772l327.456957-326.128977c9.617355-9.577423 9.648071-25.135361 0.070648-34.751692-9.577423-9.617355-25.137409-9.647048-34.750668-0.070648L512.119795 477.137729 184.520518 150.868479c-9.616331-9.577423-25.176316-9.545683-34.751692 0.070648-9.577423 9.616331-9.545683 25.174268 0.070648 34.751692l327.457981 326.127953-327.457981 326.128978c-9.616331 9.577423-9.647048 25.135361-0.070648 34.751692a24.496456 24.496456 0 0 0 17.41117 7.231702 24.500552 24.500552 0 0 0 17.340522-7.162078L512.119795 546.499816l327.599276 326.26925a24.492361 24.492361 0 0 0 17.340522 7.162078 24.5026 24.5026 0 0 0 17.41117-7.231702c9.577423-9.617355 9.545683-25.175292-0.070648-34.751692L546.942134 511.818772z" fill="#353535"></path></symbol><symbol id="icon-refresh" viewBox="0 0 1025 1024"><path d="M1000.803878 388.49588c-10.161038-8.99688-25.690307-8.051834-34.688211 2.109204l-61.519126 69.484954c-4.493833-44.37519-15.419713-87.479738-32.656822-128.641976-22.511143-53.755003-54.789128-101.965668-95.933959-143.294799C691.231126 103.00184 577.673029 56.107892 456.249444 56.107892c-60.834147 0-119.860112 11.920073-175.440703 35.42848-53.672069 22.700562-101.869423 55.194586-143.25282 96.579007-41.383397 41.383397-73.877422 89.580751-96.579007 143.25282-23.508407 55.580591-35.42848 114.60758-35.42848 175.440703 0 60.834147 11.920073 119.860112 35.42848 175.440703 22.700562 53.672069 55.194586 101.869423 96.579007 143.25282s89.580751 73.877422 143.25282 96.579007c55.580591 23.508407 114.60758 35.42848 175.440703 35.42848 54.671381 0 108.114099-9.688003 158.841474-28.794727 49.002128-18.457581 94.109396-45.155391 134.065497-79.351113 10.310525-8.824868 11.515638-24.337754 2.691795-34.648279-8.824868-10.310525-24.337754-11.515638-34.648279-2.691795-35.605612 30.473899-75.789016 54.259779-119.433151 70.699282-45.169725 17.012879-92.78244 25.640136-141.517334 25.640136-54.220871 0-106.805574-10.613595-156.296095-31.546931-47.813397-20.222759-90.760267-49.180284-127.645736-86.066777-36.885469-36.885469-65.842994-79.832339-86.066777-127.645736-20.932312-49.490521-31.545907-102.075224-31.545907-156.296095s10.613595-106.805574 31.545907-156.295071c20.223783-47.813397 49.180284-90.760267 86.066777-127.645736 36.886493-36.885469 79.832339-65.842994 127.645736-86.066777 49.489497-20.932312 102.075224-31.545907 156.296095-31.545907 108.254372 0 209.444958 41.755067 284.926808 117.573776 67.949126 68.251172 108.312733 157.16435 115.471739 253.034828l-101.959525-72.125554c-11.078439-7.836818-26.414194-5.209529-34.252036 5.869935-7.837842 11.079463-5.210552 26.415217 5.868911 34.25306l140.842594 99.631209c4.291103 3.03582 9.251828 4.512263 14.179788 4.512263 6.824196 0 13.58491-2.834115 18.410482-8.284256l103.1759-116.535556C1011.909962 413.02203 1010.964916 397.491737 1000.803878 388.49588z"></path></symbol><symbol id="icon-error" viewBox="0 0 1025 1024"><path d="M982.668821 313.74918c-25.810101-60.752236-62.714-115.373446-109.685763-162.346233-46.972787-46.971763-101.593997-83.875662-162.346233-109.685763C647.666853 14.966132 580.925912 1.401699 512.268258 1.401699S376.868639 14.966132 313.898667 41.717184c-60.752236 25.810101-115.373446 62.714-162.346233 109.685763-46.971763 46.972787-83.875662 101.593997-109.685763 162.346233C15.115619 376.719151 1.551186 443.460092 1.551186 512.118771S15.115619 647.517366 41.866671 710.487337c25.810101 60.75326 62.714 115.37447 109.685763 162.346233 46.971763 46.972787 101.592974 83.876686 162.346233 109.685763 62.969971 26.752076 129.710912 40.316509 198.369591 40.316509s135.398595-13.564433 198.368567-40.316509c60.75326-25.809077 115.37447-62.712976 162.346233-109.685763 46.972787-46.971763 83.876686-101.592974 109.685763-162.346233 26.752076-62.969971 40.316509-129.710912 40.316509-198.368567S1009.419873 376.719151 982.668821 313.74918zM937.435615 691.271058c-23.333323 54.923257-56.71096 104.317532-99.204249 146.811845-42.494313 42.493289-91.888588 75.870926-146.811845 99.204249-56.8584 24.155503-117.133505 36.403219-179.152287 36.403219-62.018782 0-122.293887-12.247716-179.152287-36.403219-54.923257-23.333323-104.317532-56.71096-146.810821-99.204249-42.493289-42.494313-75.870926-91.888588-99.204249-146.811845C62.944374 634.412658 50.697682 574.136529 50.697682 512.118771c0-62.018782 12.247716-122.293887 36.403219-179.152287 23.333323-54.923257 56.709936-104.317532 99.204249-146.810821s91.888588-75.870926 146.810821-99.204249c56.8584-24.155503 117.133505-36.403219 179.152287-36.403219 62.017758 0 122.292863 12.247716 179.152287 36.403219 54.923257 23.333323 104.317532 56.709936 146.810821 99.204249 42.494313 42.493289 75.870926 91.888588 99.205273 146.810821 24.155503 56.8584 36.403219 117.134529 36.403219 179.152287S961.591118 634.412658 937.435615 691.271058z"></path><path d="M704.62457 319.769626c-9.997216-9.996192-26.203273-9.996192-36.199466 0L512.382933 475.810773 356.341786 319.769626c-9.996192-9.996192-26.204297-9.996192-36.199466 0-9.996192 9.996192-9.996192 26.203273 0 36.199466l156.041147 156.041147L320.14232 668.05241c-9.996192 9.997216-9.996192 26.204297 0 36.199466 4.997584 4.998608 11.549426 7.496888 18.100245 7.496888s13.101637-2.49828 18.100245-7.496888l156.041147-156.041147L668.424081 704.251876c4.998608 4.998608 11.548403 7.496888 18.100245 7.496888s13.101637-2.49828 18.100245-7.496888c9.996192-9.996192 9.996192-26.203273 0-36.199466L548.583423 512.011263l156.041147-156.041147C714.620762 345.973923 714.620762 329.765818 704.62457 319.769626z"></path></symbol><symbol id="icon-prompt" viewBox="0 0 1025 1024"><path d="M637.349161 308.770026"></path><path d="M512.53242 1022.476459c-68.658678 0-135.399619-13.564433-198.369591-40.316509-60.752236-25.809077-115.373446-62.712976-162.346233-109.685763-46.971763-46.971763-83.875662-101.592974-109.685763-162.346233-26.751052-62.969971-40.315485-129.710912-40.315485-198.368567s13.564433-135.399619 40.315485-198.369591c25.810101-60.752236 62.714-115.373446 109.685763-162.346233 46.972787-46.971763 101.593997-83.875662 162.346233-109.685763 62.969971-26.751052 129.710912-40.315485 198.369591-40.315485s135.398595 13.564433 198.368567 40.315485c60.752236 25.810101 115.37447 62.714 162.346233 109.685763 46.972787 46.972787 83.876686 101.593997 109.686787 162.346233 26.752076 62.969971 40.316509 129.710912 40.316509 198.369591s-13.564433 135.398595-40.316509 198.368567c-25.810101 60.75326-62.712976 115.37447-109.685763 162.346233-46.971763 46.972787-101.593997 83.876686-162.346233 109.685763C647.93204 1008.912026 581.190075 1022.476459 512.53242 1022.476459zM512.53242 50.188811c-62.018782 0-122.293887 12.247716-179.152287 36.403219-54.923257 23.333323-104.317532 56.709936-146.810821 99.204249s-75.870926 91.888588-99.204249 146.810821c-24.155503 56.8584-36.403219 117.133505-36.403219 179.152287 0 62.017758 12.247716 122.292863 36.403219 179.152287 23.333323 54.923257 56.709936 104.317532 99.204249 146.811845 42.493289 42.493289 91.888588 75.870926 146.810821 99.204249 56.8584 24.155503 117.133505 36.403219 179.152287 36.403219 62.017758 0 122.293887-12.247716 179.153311-36.403219 54.923257-23.333323 104.317532-56.71096 146.810821-99.204249 42.494313-42.494313 75.87195-91.888588 99.205273-146.811845 24.155503-56.8584 36.403219-117.133505 36.403219-179.152287s-12.247716-122.293887-36.404243-179.152287c-23.333323-54.923257-56.71096-104.317532-99.204249-146.810821-42.494313-42.493289-91.888588-75.870926-146.811845-99.204249C634.825284 62.436527 574.550178 50.188811 512.53242 50.188811z"></path><path d="M512.442318 767.198298c-14.136785 0-25.597133-11.460348-25.597133-25.597133l0-332.127922c0-14.136785 11.460348-25.597133 25.597133-25.597133s25.597133 11.460348 25.597133 25.597133l0 332.127922C538.039452 755.737949 526.578079 767.198298 512.442318 767.198298z"></path><path d="M511.381573 319.924232c-17.522773 0-31.778329-14.255555-31.778329-31.778329 0-17.52175 14.255555-31.777305 31.778329-31.777305 17.52175 0 31.777305 14.255555 31.777305 31.777305C543.158878 305.668677 528.903323 319.924232 511.381573 319.924232z"></path></symbol><symbol id="icon-success" viewBox="0 0 1025 1024"><path d="M511.679524 1023.15939c-68.658678 0-135.399619-13.564433-198.369591-40.316509-60.752236-25.809077-115.373446-62.712976-162.346233-109.685763-46.971763-46.971763-83.875662-101.592974-109.685763-162.346233-26.751052-62.969971-40.315485-129.710912-40.315485-198.368567s13.564433-135.399619 40.315485-198.369591c25.810101-60.752236 62.714-115.373446 109.685763-162.346233 46.972787-46.971763 101.593997-83.875662 162.346233-109.685763C376.279905 15.28968 443.020846 1.725247 511.679524 1.725247S647.078119 15.28968 710.048091 42.040731c60.752236 25.810101 115.37447 62.714 162.346233 109.685763 46.972787 46.972787 83.876686 101.593997 109.686787 162.346233 26.752076 62.969971 40.316509 129.710912 40.316509 198.369591s-13.564433 135.398595-40.316509 198.368567c-25.810101 60.75326-62.712976 115.37447-109.685763 162.346233-46.971763 46.972787-101.593997 83.876686-162.346233 109.685763C647.079143 1009.594957 580.337178 1023.15939 511.679524 1023.15939zM511.679524 50.871742c-62.018782 0-122.293887 12.247716-179.152287 36.403219-54.923257 23.333323-104.317532 56.709936-146.810821 99.204249s-75.870926 91.888588-99.204249 146.810821c-24.155503 56.8584-36.403219 117.133505-36.403219 179.152287 0 62.017758 12.247716 122.292863 36.403219 179.152287 23.333323 54.923257 56.709936 104.317532 99.204249 146.811845 42.493289 42.493289 91.888588 75.870926 146.810821 99.204249 56.8584 24.155503 117.133505 36.403219 179.152287 36.403219 62.017758 0 122.293887-12.247716 179.153311-36.403219 54.923257-23.333323 104.317532-56.71096 146.810821-99.204249 42.494313-42.494313 75.87195-91.888588 99.205273-146.811845 24.155503-56.8584 36.403219-117.133505 36.403219-179.152287s-12.247716-122.293887-36.404243-179.152287c-23.333323-54.923257-56.71096-104.317532-99.204249-146.810821-42.494313-42.493289-91.888588-75.870926-146.811845-99.204249C633.972387 63.119459 573.697282 50.871742 511.679524 50.871742z"></path><path d="M451.780185 689.848881c-6.223175 0-12.452493-2.255619-17.365095-6.794503L253.195578 515.658342c-10.384245-9.592782-11.027245-25.787576-1.434463-36.171821 9.592782-10.386293 25.786552-11.026221 36.171821-1.434463l163.146912 150.703633 289.753404-289.754428c9.997216-9.996192 26.203273-9.996192 36.199466 0 9.996192 9.996192 9.996192 26.203273 0 36.199466L469.883501 682.351993C464.896156 687.339338 458.342266 689.848881 451.780185 689.848881z"></path></symbol></svg>
<div>
<script type="text/javascript">
$(function(){
	if(!placeholderSupport()){   // 判断浏览器是否支持 placeholder
	    $('[placeholder]').focus(function() {
	        var input = $(this);
	        if (input.val() == input.attr('placeholder')) {
	            input.val('');
	            input.removeClass('placeholder');
	        }
	    }).blur(function() {
	        var input = $(this);
	        if (input.val() == '' || input.val() == input.attr('placeholder')) {
	            input.addClass('placeholder');
	            input.val(input.attr('placeholder'));
	        }
	    }).blur();
	};
	})
	function placeholderSupport() {
	    return 'placeholder' in document.createElement('input');
	} 
</script>
<script language="JavaScript">
       // javascript:window.history.forward(1); //我目前先用着这个
</script>
<!--首页TOP-->
    <div class="yc-txdd1">
         
        <!--首页banner-->
       




   




<title>head</title>
 <link rel="stylesheet" href="./joinus_file/cy.css">
    <link rel="stylesheet" href="./joinus_file/style.css">
     
     


<!--首页TOP-->
<div class="index-top">
    <div class="index-top3">
    <div class="left"> 
        <span class="one"><a href="http://www.3wcl.com/"><img width="158" height="64" src="./joinus_file/logo1.png"></a></span>
        <span class="two"><img src="./joinus_file/index_q.png"></span>

        <div class="three"> 
            <span><img src="./joinus_file/index_03.png"></span>
            <ul>
                <li class="rx">客户服务热线:</li>
                <li class="phone">400-688-6798</li>
            </ul>
        </div>
    </div>
    <div class="right">
        <p class="one"><img src="./joinus_file/index_06.jpg"></p>
        <p class="two"><img src="./joinus_file/e_03.jpg"></p> 
        <p class="three none"><img width="104" height="105" src="./joinus_file/weixin.png"></p>
    </div> 
    </div> 
</div>
<!--首页banner-->
<div class="index-banner">
    <div class="index-banner1">
    <ul>
        <li><a href="index.jsp">首页</a></li> 
        <li><a href="conglin.jsp">丛林</a></li>
        <li><a href="xianju.jsp">闲居</a></li>
        <li><a href="chanhui.jsp">忏悔</a></li>
        <li><a href="jijinhui.jsp">基金会</a></li>
        <li><a href="joinus.jsp">加盟</a></li>
        <li><a href="contact.jsp">联系我们</a></li> 
        <li><a href="suzai.jsp">丛林素斋</a></li>
    </ul> 
    
    	<div class="dl"><a href="login.jsp" >登录</a><i>|</i><a href="register.jsp">注册</a></div>
    
    
    </div>  
</div>


        <script type="text/javascript">
function Alllogin(){
	window.location.href = "login.jsp?returnurl=/joincl.jsp";
} 
function loginOut(){
	window.location.href = "/clxj/reguser!loginOut.action?returnurl=/joincl.jsp";
}
 </script>
        <!--首页轮播图-->


<!--用车-填写订单-->
<div class="yc-txdd">
    <div class="yc-mbx"  >
        <p>当前位置：<a href="index.jsp" class="ll">丛林闲居网</a> &gt; <a href="joinus.jsp" class="xz">加盟</a></p>
    </div>
    <div><img src="./joinus_file/jm_03.jpg"></div>
    <div class="jm"  align="center">
    <div class="kwff-p1" align="center">
          <p class="kwff-p11">加盟列表</p> 
          <p class="kwff-p12">
          	<span class="qzfze">丛林加盟</span>
          	<a href="joinxj.jsp"><span>闲居加盟</span></a> 
          	<!-- <a href="http://172.16.42.192:8080/clxj/joincar.jsp"><span>车辆加盟</span></a> --> 
          </p>
     </div>  
     <div class="qzsqb">
     	<div class="qzsqb-one">
               
      	</div>  
     </div>
     <div class="jm-left"  align="center">  
     	<p class="xx">
        	<em style="font-size: 10px;color: red">加盟首先要登录哦，点击<a href="login.jsp?returnurl=/joincl.jsp">登录</a><br></em>
            <img src="./joinus_file/09.png">请填写加盟信息：
        </p>
        <span class="rxxx">如果您是丛林，想加盟丛林闲居网，请填写如下信息（<i>* 为必填项</i>）</span>
        <form method="post" action="http://172.16.42.192:8080/clxj/joincl!addJoincl.action" id="joinclForm" enctype="multipart/form-data" novalidate="novalidate">
        	<div class="tab"> 
            	<!-- 用户id -->
            	<input type="hidden" name="joincl.uid" id="uid" value="">
                <p><input type="text" value="" name="joincl.clname" id="name" placeholder="寺院名称" class="lxr"><i>*</i><span class="status" style="color: red" id="td1"></span><span class="status" style="color: red" id="td1"></span></p>
                <p><input type="text" value="" name="joincl.permitno" id="permitno" placeholder="宗教场所许可证号" class="lxr "><i>*</i><span class="status" style="color: red" id="td1"></span><span class="status" style="color: red" id="td2"></span></p>
                <p><input type="text" value="" name="joincl.address" id="address" placeholder="地 址" class="lxr"><i>*</i><span class="status" style="color: red" id="td1"></span><span class="status" style="color: red" id="td3"></span></p>
                <p><input type="text" value="" name="joincl.legalname" id="legalname" placeholder="法人代表名字" class="lxr "><i>*</i><span class="status" style="color: red" id="td4"></span></p>
                <p><input type="text" value="" name="joincl.legalphone" id="legalphone" placeholder="法人代表手机号" class="lxr "><i>*</i><span class="status" style="color: red" id="td5"></span></p>
                <p><input type="text" value="" name="joincl.legalidcard" id="legalidcard" placeholder="法人代表身份证号" class="lxr "><i>*</i><span class="status" style="color: red" id="td6"></span></p>
                <p><input type="text" value="" name="joincl.contactsname" id="contactsname" placeholder="联系人名字" class="lxr "><i>*</i><span class="status" style="color: red" id="td7"></span></p>
                <p><input type="text" value="" name="joincl.contactsmobile" id="contactsmobile" placeholder="联系人固定电话（xxxx-xxxxxxx）" class="lxr "><i>*</i><span class="status" style="color: red" id="td8"></span></p>
                 
                <p><input type="text" value="" maxlength="11" name="joincl.contactsphone" id="contactsphone" placeholder="联系人手机（11位手机号码，作为后台管理员登录帐号）" class="lxr " onblur="checkContactsphone()"><i>*</i><span class="status" style="color: red" id="td9"></span></p>
                <p><input type="text" id="mobileYZM" placeholder="验证码" maxlength="6" onblur="checkYZM()" class="yzm"> 
                	<button type="button" id="hqyzmbutton" onclick="getNumRandom()">获取验证码</button><i>*</i>
               		<span class="status" style="color: red" id="td10"></span>
               	</p>  
               	<input type="hidden" name="update" value="" id="update">                                
               	<p><input value="" type="text" name="joincl.postcode" id="postcode" placeholder="邮编" class="lxr "><i>*</i><span class="status" style="color: red" id="td11"></span></p>
               	<p id="more"><input type="file" name="fileUrl.file0"><i>合同上传&nbsp;&nbsp;&nbsp;*</i></p>
               	<p><textarea name="joincl.message" placeholder="寺院的简要介绍（500字以内）："></textarea></p>                
               	<p style="margin-top:20px;"><input type="button" id="sub" value="提交信息"></p>  
            </div>     
            </form> 
            <p class="xx"><img src="./joinus_file/09.png">要求及流程说明</p>
            <p class="ln">本着双赢的理念，丛林闲居已建立了一个遍及全国的完善代理商网络。无论是个人还是企业，只要符合丛林闲居的要求，都可
                以成为丛林闲居的代理商，代理丛林闲居的国内、国外闲居预订的业务。 代理商将获得强大的品牌支持，良好的售后服务体系
                同时获得丰厚的利润回报。</p>
            <div class="liucheng" >
                <img src="./joinus_file/one_03.jpg">
            </div>
        </div>
        </div>
</div>  


<title>Insert title here</title>


<div class="yj">
    <div class="yj-con">


    <div class="yj-left">
        <p>友情链接</p>
        <ul>
            <li><a href="http://www.sara.gov.cn/">国家宗教局</a>&nbsp;&nbsp;<a href="http://www.chinabuddhism.com.cn/">中国佛教协会  </a>&nbsp;&nbsp;<a href="http://www.zgfxy.cn/">中国佛学院  </a>&nbsp;&nbsp;<a href="http://www.buddhist.org.sg/">新加坡佛教   </a>&nbsp;&nbsp;<a href="http://www.buddhanet.net/ebooks.htm">澳洲佛网   </a>&nbsp;&nbsp;<a href="http://www.foyin.com/">佛音网     </a>&nbsp;&nbsp; </li>
            <li><a href="http://www.hxfjw.com/">海峡佛教网  </a>&nbsp;&nbsp;<a href="http://fo.ifeng.com/">凤凰网华人佛教    </a>&nbsp;&nbsp;<a href="http://fo.sina.com.cn/">新浪佛学    </a>&nbsp;&nbsp;<a href="http://www.fjnet.com/">佛教在线    </a>&nbsp;&nbsp;<a href="http://www.fojiaoyishu.com/">佛教艺术     </a>&nbsp;&nbsp;<a href="http://www.mca.gov.cn/">国家民政部  </a>&nbsp;&nbsp; </li>
            <li><a href="http://cszh.mca.gov.cn/">中国慈善总会    </a>&nbsp;&nbsp;<a href="http://www.redcross.org.cn/">中国红十字会      </a>&nbsp;&nbsp;<a href="http://www.tzuchi.org.tw/">慈济     </a>&nbsp;&nbsp;<a href="http://www.chinavegan.com/">中华素食网    </a>&nbsp;&nbsp; &nbsp;&nbsp;<a href="http://www.amtb-qld.org/cht/">澳洲净宗学会   </a>&nbsp;&nbsp;</li>
            <li><a href="http://www.fahuaciyun.com/">法华慈云全球资讯网</a>&nbsp;&nbsp;<a href="http://www.tuniu.com/">途牛网     </a>&nbsp;&nbsp;<a href="https://www.alitrip.com/">阿里旅游    </a>&nbsp;&nbsp;<a href="http://www.cnta.gov.cn/">国家旅游局      </a>&nbsp;&nbsp;<a href="http://www.qunar.com/">去哪儿网     </a>&nbsp;&nbsp;<a href="http://www.elong.com/">艺龙网</a>&nbsp;&nbsp;</li> 
        </ul>
    </div>  
   <div class="yj-right">
    	<div class="yr-one">
            <img src="./joinus_file/weixin.png" width="94" height="94">
            <p>微信平台</p>
        </div> 
        <div class="yr-one">
             <img src="./joinus_file/clxj.png" width="94" height="94">
             <p>丛林/闲居管理者APP下载</p>
        </div>
        <div class="yr-one"> 
            <img src="./joinus_file/car.png" width="94" height="94">
            <p>司机用车APP</p>
        </div>
        <div class="yr-one"> 
             <img src="./joinus_file/orderclxj.png" width="94" height="94">
             <p>订房APP下载</p>  
        </div>  
    </div>
    </div>
</div>
<footer>
    <ul>
        <li>江西省丛林闲居投资有限公司，工业和信息化部网站备案许可证编号：赣ICP备15010915号</li>
        <li>Copyright © 2105 <a href="http://172.16.42.192:8080/clxj/joincl.jsp#">丛林闲居</a>  版权所有 3wcl.com | 客服中心：400-688-6798</li>
    </ul>
    <p><a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_48.jpg"></a><a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_50.jpg"></a><a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_52.jpg"></a> <a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_54.jpg"></a><a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_56.jpg"></a> <a href="http://172.16.42.192:8080/clxj/joincl.jsp#"><img src="./joinus_file/index_58.jpg"></a>    </p>
</footer>


    </div>
</div>

<script src="./joinus_file/index.js.下载"></script>
<script type="text/javascript">
var wait=120;//倒计时获取验证码时间
var checks = false; //一个全局变量，用来最终判断表单是否可以提交
$("#sub").click(function() { 
	var uid = document.getElementById("uid").value;
	var update = document.getElementById("update").value;
	//先判断是否登录
	if(uid==null||uid==""){
		alert("请先登录");   
	}else{ 
		var check = $("#joinclForm").valid();  
		//判断是否是更新，如果是更新那就不需要填写手机号码
		if(update==1){ 
			if(check){
			 	document.getElementById("joinclForm").submit(); 
		 	}  
		}else{
			//是新增的要判断验证码
	 		checkYZM(); 
	 		if(checks){   
	 			if(check){
					document.getElementById("joinclForm").submit(); 
			 	}
	 		}
		} 
	} 
}); 
$(document).ready(function() {
	 $("#joinclForm").validate({
		 onfocusout: function(element){
	        $(element).valid();
	    }, 
	   rules: {
	  	 'joincl.clname': { 
	   	 	required: true,
	   	 	isChinese:true
	   	},
	   	'joincl.permitno': {
	   	 	required: true,
	   	    isPermitno:true
	   	},
	   	'joincl.address': {
	   	 	required: true
	   	},
	   	'joincl.legalname': {
	   	 	required: true,
	   	 	isChinese:true
	   	},
	   	'joincl.legalphone': {
	   	 	required: true,
	   	 	isMobile:true
	   	},
	   	'joincl.legalidcard': {
	   	 	required: true,
	   		idCard:true 
	   	},
	   	'joincl.contactsname': {
	   	 	required: true,
	   	 	isChinese:true 
	   	},
	   	'joincl.contactsmobile': {
	   	 	required: true,
	   	 	isPhone:true 
	   	},
	   	'joincl.postcode': {
	   	 	required: true,
	   	 	isZipCode:true 
	   	},
	   	'fileUrl.file0': {
	   	 	required: true
	   	}
	  },
	    messages: {
		'joincl.clname': {
	    	required: "&nbsp;&nbsp;寺院名称不能为空",
	    	isChinese:"&nbsp;&nbsp;寺院名称必须为中文"
	   	},
	   	'joincl.permitno': {
	    	required: "&nbsp;&nbsp;宗教场所许可证号不能为空",
	    	isPermitno:"&nbsp;&nbsp;宗教场所许可证号格式不对"
	   	},
	   	'joincl.address': {
	    	required: "&nbsp;&nbsp;地址不能为空" 
	   	},
	   	'joincl.legalname': {
	   	 	required: "&nbsp;&nbsp;法人代表名字不能为空",
	    	isChinese:"&nbsp;&nbsp;法人代表名字必须为中文"
	   	},
	   	'joincl.legalphone': {
	   	 	required: "&nbsp;&nbsp;法人代表手机号不能为空",
	   	 	isMobile:"&nbsp;&nbsp;法人代表手机号格式不正确" 
	   	},
	   	'joincl.legalidcard': {
	   	 	required: "&nbsp;&nbsp;法人代表身份证不能为空",
	   	 	idCard:"&nbsp;&nbsp;法人代表身份证格式不正确(如有X请大写)"  
	   	},
	   	'joincl.contactsname': {
	   	 	required: "&nbsp;&nbsp;联系人名字不能为空",
	   		isChinese:"&nbsp;&nbsp;联系人名字必须为中文"  
	   	},
	   	'joincl.contactsmobile': {
	   	 	required: "&nbsp;&nbsp;联系人固定电话不能为空",
	   		isPhone:"&nbsp;&nbsp;联系人固定电话格式不对"  
	   	},
	   	'joincl.postcode': {
	   	 	required: "&nbsp;&nbsp;邮编不能为空",
	   		isZipCode:"&nbsp;&nbsp;邮编格式不对"  
	   	},
	   	'fileUrl.file0': {
	   	 	required: "&nbsp;&nbsp;合同不能为空哦"
	   	}
	  }, 
	  //更改错误信息显示位置 
	  errorPlacement: function(error,element) {
	        if ( element.is(":radio") )
	            error.appendTo( element.parent().next().next() );
	        else if ( element.is(":checkbox") )
	            error.appendTo ( element.next() );
	        else
	            error.appendTo( element.next());   
	    	}
	 });
	 
});
//验证联系人手机
function checkContactsphone(){
	var contactsphone = document.getElementById("contactsphone").value;
	var check = !!contactsphone.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
	var td9 = document.getElementById("td9");
	if(contactsphone==""){
		td9.innerHTML="&nbsp;&nbsp;请输入手机号";
	}else if(check==false){
		td9.innerHTML="&nbsp;&nbsp;请正确填写您的手机号码";
	}else{ 
		$.ajax({  
	        type : "post",  
	         url : "/clxj/joincl!checkContactsphone.action",  
	         data: {"joincl.contactsphone":contactsphone},
	         dataType: "json",
	         async : false,     
	         success : function(status){  
	        	 if(status.message == null||status.status==null){
					  td9.innerHTML = "&nbsp;&nbsp;发生了一点异常，抱歉，请你刷新页面重试";
					  checks = false;
				  }
				  if(status.status=="true"||status.status==true){	
					  td9.innerHTML = status.message;
					  checks = true;
				  }else{
					  td9.innerHTML = status.message;
					  checks = false; 
				  }
	         }   
	    });
	} 
}
//获取验证码
function getNumRandom(){
	checkContactsphone();
	if(checks){
		var td10 = document.getElementById("td10");
		var contactsphone = document.getElementById("contactsphone").value;
		var button = document.getElementById("hqyzmbutton");
		time(button);
		$.ajax({  
	        type : "post",  
	         url : "/clxj/joincl!getNumRandom.action",  
	         data: {"joincl.contactsphone":contactsphone},
	         dataType: "json",
	         async : false,   
	         success : function(status){  
	        	 if(status.message == null||status.status==null){
					  td10.innerHTML = "&nbsp;&nbsp;发生了一点异常，抱歉，请你刷新页面重试";
					  checks = false;
				  }
				  if(status.status=="true"||status.status==true){	
					  td10.innerHTML = status.message;
					  checks = true;
				  }else{
					  td10.innerHTML = status.message;
					  checks = false; 
				  }
	         }    
	    });
	}
}
//按钮倒计时
function time(o) {
    if (wait == 0) {
        o.removeAttribute("disabled");            
        o.innerHTML="免费获取验证码";
        wait = 120;
    } else {
        o.setAttribute("disabled", true);
        o.innerHTML="重新发送(" + wait + ")";
        wait--;
        setTimeout(function() {
            time(o)
        },
        1000)
 	}
}
//判断验证码
function checkYZM(){
	checkContactsphone(); 
	if(checks){
		var mobileYZM = $('#mobileYZM').val();
		var contactsphone = document.getElementById("contactsphone").value; 
		var check = !!mobileYZM.match(/^\d{6}$/);
		var td10 = document.getElementById("td10");
		if(check){
			$.ajax({  
		        type : "post",  
		         url : "/conglin/joincl!checkYZM.action",  
		         data: {"joincl.contactsphone":contactsphone,'mobileYZM':mobileYZM},
		         dataType: "json",
		         async : false,   
		         success : function(status){  
		        	 if(status.message == null||status.status==null){
						  td10.innerHTML = "&nbsp;&nbsp;发生了一点异常，抱歉，请你刷新页面重试";
						  checks = false;
					  }
					  if(status.status=="true"||status.status==true){	
						  td10.innerHTML = status.message;
						  checks = true;
					  }else{
						  td10.innerHTML = status.message;
						  checks = false; 
					  }
		         }    
		    });
		}else{
			td10.innerHTML = "请正确输入6位纯数字验证码";
			checks = false; 
		}
	}
}
</script>

</body></html>