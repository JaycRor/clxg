<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>丛林闲居-丛林</title>
    <link rel="stylesheet" href="./xianju_file/cy.css">
    <link rel="stylesheet" href="./xianju_file/style.css">
    <script src="./xianju_file/hm.js.下载"></script><script src="./xianju_file/laydate.js.下载"></script><link type="text/css" rel="stylesheet" href="./xianju_file/laydate.css"><link type="text/css" rel="stylesheet" href="./xianju_file/laydate(1).css" id="LayDateSkin">
    <link rel="stylesheet" href="./xianju_file/laydate(2).css">
    <link rel="stylesheet" href="./xianju_file/laydate(3).css">
    <script src="./xianju_file/jquery.min.js.下载"></script>
    <!--<script type='text/javascript' src='js/citylist.js'></script>-->
    <script type="text/javascript" src="./xianju_file/querycity1.js.下载"></script>
    <link href="./xianju_file/cityquery.css" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style type="text/css" abt="234"></style><script>//console.log('a')
</script><script>doAdblock();
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
<!--首页TOP-->
 
<!--首页banner-->





   




<title>head</title>
 <link rel="stylesheet" href="./xianju_file/cy.css">
    <link rel="stylesheet" href="./xianju_file/style.css">
     
     


<!--首页TOP-->
<div class="index-top">
    <div class="index-top3">
    <div class="left"> 
        <span class="one"><a href="http://www.3wcl.com/"><img width="158" height="64" src="./xianju_file/logo1.png"></a></span>
        <span class="two"><img src="./xianju_file/index_q.png"></span>

        <div class="three"> 
            <span><img src="./xianju_file/index_03.png"></span>
            <ul>
                <li class="rx">客户服务热线:</li>
                <li class="phone">400-688-6798</li>
            </ul>
        </div>
    </div>
    <div class="right">
        <p class="one"><img src="./xianju_file/index_06.jpg"></p>
        <p class="two"><img src="./xianju_file/e_03.jpg"></p> 
        <p class="three none"><img width="104" height="105" src="./xianju_file/weixin.png"></p>
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
	window.location.href = "login.jsp?returnurl=/clxjmain!selXjOfPage.action";
} 
function loginOut(){
	window.location.href = "/clxj/reguser!loginOut.action?returnurl=/clxjmain!selXjOfPage.action";
}
function Allregister(){
}
 </script>
<!--首页轮播图-->
<div class="index-lbt"> 
	<div class="yc-mbx">
        <p>当前位置：<a href="index.jsp" class="ll">丛林闲居网</a> &gt; <a href="conglin.jsp" class="xz">丛林</a></p>
    </div>    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>   
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div id="pic0" class="item active">
				<img src="./xianju_file/img001.jpg">
			</div>
			<div id="pic1" class="item">
				<img src="./xianju_file/img002.jpg">
			</div> 
			<div id="pic2" class="item">
				<img src="./xianju_file/img003.jpg">
			</div>
			<div id="pic3" class="item">
				<img src="./xianju_file/img004.jpg">
			</div>
			<div id="pic4" class="item">
				<img src="./xianju_file/img005.jpg">
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<script>  
var i=0;  
var c = null;  
   c = setTimeout(carousel,1000);//开始执行  
    function carousel()  
    {  
          
       clearTimeout(c);//清除定时器  
        
      $("#pic"+i).removeClass("active");  
      $("#pic"+(i+1)).addClass("active");  
      i++;  
      $("ol li").removeClass("active");  
      $("ol li:eq("+i+")").addClass("active");  
        
      if(i>4){  
        $("#pic"+(i-1)).removeClass("active");  
        $("#pic0").addClass("active");  
        i=0;  
        $("ol li:eq("+i+")").addClass("active");  
        
      }  
       c = setTimeout(carousel,1500); //设定定时器，循环执行               
    }   
 
</script>  
	
    
    <div class="nested">
        <div class="gjcl">
            <div class="lbttj">
                <div class="tj-top">
                    <span class="gnxjac">国内丛林</span>
                    <span>国际丛林</span>
                </div> 
                <div class="tj-bottom">
                    <div class="xj">
                     <form action="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action" method="post" onsubmit=""> 
                        <table>
                            <tbody>
                            <tr>
                                <td>目的地</td>
                                <td class="sec "><input type="text" data-wholename="" placeholder="请输入城市名" id="ones" autocomplete="off" style="color: rgb(170, 170, 170);"></td>
                                			<input type="hidden" name="clxjmain.belong_city" id="city10"> 
                                        	<input type="hidden" name="clxjmain.type1" value="true">
                                        	<input type="hidden" name="clxjmain.type2" value="false">
                            </tr>
                            <tr>
                                <td>入住</td>
                                <td>
                                	<p><input name="startTime" class="laydate-icon" id="demo1" value="2017-09-28"></p>
									<p>退房<input name="endTime" class="laydate-icon" id="demo2" value="2017-09-29"></p>
								</td>
                            </tr>
                            <tr>  
                                <td>关键词</td>
                                <td class="sec"><input type="text" name="clxjmain.name" placeholder="请输入地标/商圈/景点" id="gnxjkey"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="ses sec"><input type="submit" value="搜索"> </td>
                            </tr> 
                        </tbody>
                        </table> 
                     </form>
                    </div>
                    
                    <div class="xj none">
                    <form action="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action" method="post" onsubmit=""> 
                    <table>
                        <tbody>
                        <tr>
                            <td>目的地</td>
                            <td class="sec"><input type="text" data-wholename="" placeholder="请输入城市名" id="oness" autocomplete="off" style="color: rgb(170, 170, 170);"></td>
                            			<input type="hidden" name="clxjmain.belong_city" id="city00">
                             			<input type="hidden" name="clxjmain.type1" value="false">
                             			<input type="hidden" name="clxjmain.type2" value="false">
                        </tr>
                        <tr>
                            <td>入住</td>
                            <td>
                            	<p><input name="startTime" class="laydate-icon" id="demo3" value="2017-09-28"></p>
                                <p>退房<input name="endTime" class="laydate-icon" id="demo4" value="2017-09-29"></p>
                            </td> 
                        </tr>
                        <tr> 
                            <td>关键词</td>
                            <td class="sec"><input type="text" name="clxjmain.name" placeholder="请输入地标/商圈/景点" id="gjxjkey"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="ses sec"><input type="submit" value="搜索">  </td>
                        </tr>
                    </tbody>
                    </table>
                    </form>
                    </div>
                <div id="pop_city_ones" class="pop_city" style="display: none; top: 105px; left: 80px;">
                	<p class="pop_head">请选择城市或输入城市名称的拼音或英文</p>
                	<ul class="list_label">
                		<li><a id="label_ones1" class="current" href="javascript:void(0)">热门城市</a></li>
                		<li><a id="label_ones2" href="javascript:void(0)">A-F</a></li>
                		<li><a id="label_ones3" href="javascript:void(0)">G-J</a></li>
                		<li><a id="label_ones4" href="javascript:void(0)">K-N</a></li>
                		<li><a id="label_ones5" href="javascript:void(0)">O-W</a></li>
                		<li><a id="label_ones6" href="javascript:void(0)">X-Z</a></li>
                	</ul>
                	<div class="pop_city_container">
                		<ul id="label_ones1_container" class="current" data-type="热门城市">
                			<li><a href="javascript:void(0)" data-wholename="bali">巴黎</a></li>
                			<li><a href="javascript:void(0)" data-wholename="xian">西安</a></li>
                			<li><a href="javascript:void(0)" data-wholename="shangrao">上饶</a></li>
                			<li><a href="javascript:void(0)" data-wholename="beijin">北京</a></li>
                			<li><a href="javascript:void(0)" data-wholename="ganzhou">赣州</a></li>
                		</ul>
                		<ul style="display:none" id="label_ones2_container" data-type="A-F">
                			<li><a href="javascript:void(0)" data-wholename="bali">巴黎</a></li>
                			<li><a href="javascript:void(0)" data-wholename="bali">巴黎</a></li>
                			<li><a href="javascript:void(0)" data-wholename="beijin">北京</a></li>
                		</ul>
                		<ul style="display:none" id="label_ones3_container" data-type="G-J">
                			<li><a href="javascript:void(0)" data-wholename="ganzhou">赣州</a></li>
                		</ul>
                		<ul style="display:none" id="label_ones4_container" data-type="K-N">
                			<li><a href="javascript:void(0)" data-wholename="nanchang">南昌</a></li>
                		</ul>
                		<ul style="display:none" id="label_ones5_container" data-type="O-W">
                			<li><a href="javascript:void(0)" data-wholename="shangrao">上饶</a></li>
                			<li><a href="javascript:void(0)" data-wholename="shanghai">上海</a></li>
                		</ul>
                		<ul style="display:none" id="label_ones6_container" data-type="X-Z">
                			<li><a href="javascript:void(0)" data-wholename="xian">西安</a></li>
                		</ul>
                	</div>
                </div>
                <div id="suggest_city_ones" class="list_city" style="display: none; top: 105px; left: 80px;">
                	<div class="list_city_head"></div>
                	<div class="list_city_container"></div>
                	<div class="page_break"></div>
                </div>
                <div id="pop_city_oness" class="pop_city" style="display: none; top: 105px; left: 80px;">
                	<p class="pop_head">请选择城市或输入城市名称的拼音或英文</p>
                	<ul class="list_label">
                		<li><a id="label_oness1" class="current" href="javascript:void(0)">国际城市</a></li>
                	</ul>
                	<div class="pop_city_container">
                		<ul id="label_oness1_container" class="current" data-type="国际城市">
                			<li><a href="javascript:void(0)" data-wholename="bali">巴黎</a></li>
                			<li><a href="javascript:void(0)" data-wholename="bali">巴黎</a></li>
                		</ul>
                	</div>
                </div>
                <div id="suggest_city_oness" class="list_city" style="display: none; top: 105px; left: 80px;">
                	<div class="list_city_head"></div>
                	<div class="list_city_container"></div>
                	<div class="page_break"></div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="lby">
 
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=6"><img width="296" height="188" src="./xianju_file/sm01.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=6">国内丛林一</a></p>
            <p class="con">客房有137间，装饰独特，各类生活设施齐全。<br>灵谷寺位于南京市玄武区紫金山东南坡下，中山陵以东约1.5千米处，始建于天监十三年（514年），是南朝梁武帝为纪念著名<br>僧人宝志禅师而兴建的“开善精舍”，初名开善寺。灵谷寺是南京市著名佛教寺院之一。 </p>
            <p class="address">位  置:江苏省南京市玄武区灵谷寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>8.5</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">149<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=6"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=9"><img width="296" height="188" src="./xianju_file/sm02.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=9">国内丛林四</a></p>
            <p class="con">客房有158间，装饰独特，各类生活设施齐全。<br>龙虎山嗣汉天师府是历代张天师生活起居和祀神的地方,又是中国道教正一派的祖庭和张天师曾经掌管天下道教事务的办公衙门。<br>始建于明太祖洪武元年（公元1368年），后又经十多次修建，现存木构建筑均为清乾隆、嘉庆和同治年间遗物。 </p>
            <p class="address">位  置:江西省鹰潭市龙虎山天师府</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>8.6</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">259<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=9"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=35"><img width="296" height="188" src="./xianju_file/sm03.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=35">国内丛林六</a></p>
            <p class="con">客房有98间，装饰独特，各类生活设施齐全。<br>少林寺是世界著名的佛教寺院，是汉传佛教的禅宗祖庭，在中国佛教史上占有重要地位，被誉为“天下第一名刹”。因其历代<br>少林武僧潜心研创和不断发展的少林功夫而名扬天下，素有“天下功夫出少林，少林功夫甲天下”之说。 </p>
            <p class="address">位  置:河南省郑州市嵩山少林寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>9.0</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">299<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=35"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=40"><img width="296" height="188" src="./xianju_file/sm04.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=40">国内丛林七</a></p>
            <p class="con">客房有250间，装饰独特，各类生活设施齐全。<br>宝光寺位于成都市北郊十八公里处的新都区，占地面积120多亩，建筑面积2万余平方米，殿宇深幽，古木葱茏，五殿十六院层<br>层递进。它规模宏大，藏经丰富，僧徒众多，是清朝以来中国南方“四大佛教丛林”之一，四川著名禅寺。</p>
            <p class="address">位  置:四川省成都市新都区宝光寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>8.4</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">188<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=40"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=16"><img width="296" height="188" src="./xianju_file/sm05.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=16">国外丛林一</a></p>
            <p class="con">客房有142间，装饰独特，各类生活设施齐全。<br>虎穴寺（Taktshang Goemba）是不丹国内最神圣的佛教寺庙，被誉为世界十大超级寺庙之一。 地理位置虎穴寺坐落在Paro山<br>谷中3000英尺高的悬崖壁上。传说中的第二位佛，莲花生大师骑虎飞过此地，曾在一处山洞中冥想，就是现在的虎穴寺。</p>
            <p class="address">位  置:不丹虎穴寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>9.0</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">222<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=16"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=7"><img width="296" height="188" src="./xianju_file/sm06.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=7">国外丛林二</a></p>
            <p class="con">客房有193间，装饰独特，各类生活设施齐全。<br>双龙寺是泰国著名的佛教避暑胜地，位于泰国清迈，是一座由白象选址、皇室建造，充满传奇色彩的庙宇。传说有位锡兰高僧带<br>了几颗佛舍利到泰国，高僧们为了怕让人抢走，便决定将舍利放在白象上，由白象选择一处可以建寺供奉舍利的福地。</p>
            <p class="address">位  置:泰国清迈双龙寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>8.8</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">499<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=7"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
    <div class="lby-xy">
        <div class="lby-left">
            <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=8"><img width="296" height="188" src="./xianju_file/sm07.png"></a>
        </div>
        <div class="lby-right">
            <p class="title"><a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=8">国外丛林三</a></p>
            <p class="con">客房有316间，装饰独特，各类生活设施齐全。<br>唐招提寺是著名古寺院，位于日本奈良市西京五条街，公元759年由唐代高僧鉴真所建。最盛时曾有僧徒3000人。有金堂、讲<br>堂、经藏、宝藏以及礼堂、鼓楼筹建筑物。其中金堂最大，以建筑精美著称。金堂、经藏、鼓楼、鉴真像等被誉为国宝。</p>
            <p class="address">位  置:日本奈良市唐招提寺</p>
        </div>
        <div class="lby-pos">
            <div>
                <p class="one">
                    <span><i>8.6</i></span>
                    <span>闲居评价</span>
                </p>
                <p class="two">
                    <span><i>10</i></span> 
                    <span>好评/10分</span>
                </p>
                <p class="yd">
                    <span class="mony">529<i>/晚</i></span>
                    <a href="http://172.16.42.192:8080/clxj/clxjmain!selClxjOfId.action?clxjmain.id=8"><span class="dj">预定</span></a>
                </p>
            </div>
        </div>
    </div>
     
</div>
<form action="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action" method="post" id="xjForm">
    <input type="hidden" id="offset" name="offset" value="0">
      
    <input type="hidden" name="clxjmain.type2" value="false">
    <input type="hidden" name="clxjmain.name" value="">  
    <input type="hidden" name="clxjmain.belong_city" value="">
</form>
<!-- <div class="fenye">
    <span class="count_result">共 4 页 23 条记录 </span><a href="javascript:void(0);" '="" class="current">1</a><a href="javascript:void(0);" onclick="pageClick(2,7);" '="">2</a><a href="javascript:void(0);" onclick="pageClick(3,7);" '="">3</a><a href="javascript:void(0);" onclick="pageClick(4,7);" '="">4</a><a href="javascript:void(0);" onclick="pageClick(2,7);" '="">下页</a>
</div> -->
 




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
            <img src="./xianju_file/weixin.png" width="94" height="94">
            <p>微信平台</p>
        </div> 
        <div class="yr-one">
             <img src="./xianju_file/clxj.png" width="94" height="94">
             <p>丛林/闲居管理者APP下载</p>
        </div>
        <div class="yr-one"> 
            <img src="./xianju_file/car.png" width="94" height="94">
            <p>司机用车APP</p>
        </div>
        <div class="yr-one"> 
             <img src="./xianju_file/orderclxj.png" width="94" height="94">
             <p>订房APP下载</p>  
        </div>  
    </div>
    </div>
</div>
<footer>
    <ul>
        <li>江西省丛林闲居投资有限公司，工业和信息化部网站备案许可证编号：赣ICP备15010915号</li>
        <li>Copyright © 2105 <a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#">丛林闲居</a>  版权所有 3wcl.com | 客服中心：400-688-6798</li>
    </ul>
    <p><a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_48.jpg"></a><a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_50.jpg"></a><a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_52.jpg"></a> <a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_54.jpg"></a><a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_56.jpg"></a> <a href="http://172.16.42.192:8080/clxj/clxjmain!selXjOfPage.action?clxjmain.type2=false#"><img src="./xianju_file/index_58.jpg"></a>    </p>
</footer>




<script src="./xianju_file/index.js.下载"></script>
<script type="text/javascript">
    !function () {
        laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
        laydate({elem: '#demo1'});//绑定元素
        laydate({elem: '#demo2'});//绑定元素
        laydate({elem: '#demo3'});//绑定元素
        laydate({elem: '#demo4'});//绑定元素
    }();

    //var labelFromcity = new Array(); 
    //labelFromcity ['热门城市'] = new Array(2,41,54,119,25,50,187,182,77,122,42,196,106,136,188,17,22,16,37,67,88,159,143,176,14,58,136,73);  
   //labelFromcity ['A-F'] = new Array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39); 
    //labelFromcity ['G-J'] = new Array(40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85);  
    //labelFromcity ['K-N'] = new Array(86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124); 
    //labelFromcity ['O-W'] = new Array(125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184); 
    //labelFromcity ['X-Z'] = new Array(185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231);

    //var interlabelFromcity = new Array();
    //interlabelFromcity ['国际城市'] = new Array(1001,1002,1003,1004,1005,1006,1007,1008,1009);
    //var hotList = new Array(14,15,16,17,18,19); 
//新方法，从数据库获得每种类型的城市的id
var labelFromcity = new Array(); 
labelFromcity['热门城市'] = new Array();  
labelFromcity ['A-F'] = new Array(); 
labelFromcity ['G-J'] = new Array();  
labelFromcity ['K-N'] = new Array(); 
labelFromcity ['O-W'] = new Array(); 
labelFromcity ['X-Z'] = new Array();
var interlabelFromcity = new Array();
interlabelFromcity ['国际城市'] = new Array();
var hotList = new Array(14,15,16,17,18,19);
$.ajax({  
    type : "post",  
     url : "/clxj/city!selCityType.action",  
     data: {},
     dataType: "json",
     async : false,     
     success : function(results){   
         for(var i =0;i<results.citytypes.rm.length;i++){
        	 labelFromcity['热门城市'][i]=results.citytypes.rm[i];
          }
         for(var i =0;i<results.citytypes.a_f.length;i++){
        	 labelFromcity[['A-F']][i]=results.citytypes.a_f[i];
          }
         for(var i =0;i<results.citytypes.g_j.length;i++){
        	 labelFromcity[['G-J']][i]=results.citytypes.g_j[i];
          }  
         for(var i =0;i<results.citytypes.k_n.length;i++){
        	 labelFromcity[['K-N']][i]=results.citytypes.k_n[i];
          }  
         for(var i =0;i<results.citytypes.o_w.length;i++){
        	 labelFromcity[['O-W']][i]=results.citytypes.o_w[i];
          }  
         for(var i =0;i<results.citytypes.x_z.length;i++){
        	 labelFromcity[['X-Z']][i]=results.citytypes.x_z[i];
          }
         for(var i =0;i<results.citytypes.gjcs.length;i++){
        	 interlabelFromcity ['国际城市'][i]=results.citytypes.gjcs[i];
          }    
     }   
}); 
    $(document).ready(function(){
    	var citysFlight=new Array();
    	//新方法，加载页面的时候把所有的城市的数据加载出来
    	$.ajax({  
            type : "post",  
             url : "/clxj/city!initializeCity.action",  
             data: {},
             dataType: "json",
             async : false,     
             success : function(results){  
                 for(var i =0;i<results.citys.length;i++){
                	 citysFlight[results.citys[i].id]=new Array('',results.citys[i].chinese,results.citys[i].pinyin,results.citys[i].abbreviations);
                     }
             }   
        });
        $('#ones').querycity({'data':citysFlight,'tabs':labelFromcity,'hotList':hotList});
        $('#oness').querycity({'data':citysFlight,'tabs':interlabelFromcity,'hotList':hotList});

    });
    function pageClick(pagesize,limit)
    {
    	document.getElementById("offset").value=pagesize;
    	document.getElementById("xjForm").submit();
    }

    //des     目的地
    //sttime  入住时间
    //entime  退房时间
    //keyword 关键词
    function xjsearch(des,sttime,entime,keyword){
    	alert(des+sttime+entime+keyword);
    }
  //将城市转换为拼音+城市名字
    function getCity(type,id){ 
    	var citypy;
    	var cityzw;
    	switch (id) {
    	case ones:
    		citypy = $('#ones').attr('data-wholename');
    		cityzw = $('#ones').val(); 
    		break;
    	case oness:
    		citypy = $('#oness').attr('data-wholename');
    		cityzw = $('#oness').val(); 
    		break;
    	}   
    	var city = document.getElementById("city"+type);
    	city.value = citypy+"|"+cityzw; 
    }
</script>

</body></html>