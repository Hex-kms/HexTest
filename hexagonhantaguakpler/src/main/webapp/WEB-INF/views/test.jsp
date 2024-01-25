<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>	

<html lang="ko"><head>
  <title>급여관리 페이존 - 인사관리 &gt; 사원현황/관리</title>
  <meta charset="utf-8">
  <!--<meta http-equiv="refresh" content="7;URL=http://payzon.co.kr" />-->
  <meta name="keywords" content="payzon, 인사관리, 급여관리">
  <meta name="description" content="급여관리 페이존 - 인사관리 > 사원현황/관리">

  <meta name="naver-site-verification" content="navercdc5a22c7fcc5c46acb3324a06bc9f11">
  <meta property="og:title" content="페이존 (급여관리 자동화)">
  <meta property="og:type" content="website">
  <!-- <meta property="og:site_name" content="페이존 (급여관리 자동화)" /> -->
  <meta property="og:url" content="http://www.payzon.co.kr/pzPersonnel/employeeMnt.php">
  <meta property="og:description" content="급여관리 페이존 - 인사관리 > 사원현황/관리">
  <meta property="og:image" content="https://img.payzon.co.kr_guideImg/common/logo.png">
  <!-- <link rel="image_src" href="https://img.payzon.co.kr_guideImg/common/logo.png" /> -->

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/_ssl/style.css">

  <link rel="shortcut icon" href="//img.payzon.co.kr/_commonImg/favicon.ico" type="image/x-icon">

  <!-- Google CDN jQuery with fallback to local -->
  <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-CCK8YDQV0H&amp;l=dataLayer&amp;cx=c"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script>!window.jQuery && document.write(unescape('%3Cscript src="//www.payzon.co.kr/_commonJs/external/jquery-1.11.1.min.js"%3E%3C/script%3E'))</script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-migrate-1.2.1.min.js"></script><!-- jquery-migrate-1.1.1.min.js -->

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.cookie.js"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/ajaxFileUpload.js"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/common.js?v=20220221"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/noticeBrowser.js" defer="defer"></script>

  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/_ssl/external/jquery/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-ui.js"></script>
  <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> -->

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-ui.customer.formUI.js"></script>
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery-ui.customer.formUI.css">

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.alphanum.js"></script>

<!-- msDropDown: 선택상자 UI -->
  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.dd.js"></script>
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery.dd.css">

<!-- mCustomScrollbar: DIV 스크롤바 -->
<link href="//www.payzon.co.kr/_commonCss/external/jquery/scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet">
<script src="//www.payzon.co.kr/_commonJs/external/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- 라디오버튼 스킨: label_radio r_on -->
<link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery.maratz.radio.css">



  <!-- <script src="http://www.google.com/jsapi"></script> -->
  <script type="text/javascript">
    // 유효성 키
    var setChkMd5;
    setChkMd5 = '9e8d615c75ce393ac74a15845cb85073';
    var setShortKeyVer = 2;
    var isCuUrl;  // 지금은 제휴중(cu)
    if (document.location.href.split('?')[0].indexOf("cu.payzon.co.kr") > -1 ) isCuUrl = "cu";

    const hiworksLinked = ''; // 가비아 하이웍스 스토어
  </script>

  <!-- 지역 스크립트 -->
  <!-- <script type="text/javascript" src="//www.payzon.co.kr/pzPersonnel/js/pzPersonnel.js"></script> -->
  <script type="text/javascript" src="/pzPersonnel/js/pzPersonnel.js"></script>


  <!-- 단축 키 설정 -->
<script src="//www.payzon.co.kr/_commonJs/shortKey.js"></script>  </head>
  <body class="has-js">
<!-- 2021-01-29 -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-55667387-4"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-55667387-4');
  gtag('config', 'G-CCK8YDQV0H');
  </script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55667387-4', 'auto');
  ga('send', 'pageview');
</script>

<!-- DDN 2017-03-27 이사님요청 -->
<script type="text/javascript">
    var roosevelt_params = {
        retargeting_id:'Q-xRfWi38dMBWz8cmhE3ew00',
        tag_label:'GXO6C48SRjeVl99UM5Nhng'
    };
</script>
<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('1130293680471885162').pageView();
</script>
<script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async=""></script>


<div id="layerProc" class="disHide" style="text-align: center; padding-top: 3px;"><!--  title="TITLE:Basic modal dialog" background-color:red;-->
<iframe name="iFrmBox" id="iFrmBox" src="" width="100%" height="0px;" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><!-- /_commonHTML/ifrmLoading.html -->
<input type="hidden" id="idLayerDestroyTrigger" name="idLayerDestroyTrigger"><!-- /_commonHTML/ifrm/ifrmLoading.html -->
</div>

    <header>

<style>
.jbMenu {
  text-align: center;
  color: #ffffa6;
  background-color: #ff4242;
  padding: 6px 0px;
  width: 100%;
}
.jbFixed {
  position: fixed;
  top: 0px;
  z-index: 1;
}
</style>
<script>
$( document ).ready( function() {
  if($( '.jbMenu' ).length > 0){
    var jbOffset = $( '.jbMenu' ).offset();
    $( window ).scroll( function() {
      if ( $( document ).scrollTop() > jbOffset.top ) {
        $( '.jbMenu' ).addClass( 'jbFixed' );
      }
      else {
        $( '.jbMenu' ).removeClass( 'jbFixed' );
      }
    });
  }

});


  // 뷰어 다운
  $.fn.getExcelViewer = function() {
    var setUrl = "/pzServiceManual/php/inManualPdfDownProc.php";
    setUrl += "?setManualCode=EXV";
    setUrl += "&setChkMd5=" + setChkMd5;
    $("#iFrmMulti").attr("src", setUrl);
    return;
  };
  // 페이존 바로가기 다운
  $.fn.getPayzonQuick = function() {
    var setUrl = "/pzServiceManual/php/inManualPdfDownProc.php";
    setUrl += "?setManualCode=QLK";
    setUrl += "&setChkMd5=" + setChkMd5;
    $("#iFrmMulti").attr("src", setUrl);
    return;
  };

</script>

<div class="jbMenu jbFixed" style="text-align:left;color:#FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 현재 고객님은 체험판 이용중 이십니다. 월 12,000원으로 급여관리 자동화 페이존(PAYZON)의 모든 서비스를 자유롭게 이용하실 수 있습니다. <a href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon"><span style="color:#FFFFFF;">[회원가입]</span></a></div>
    <div id="main_header">
      <div class="header">
        <ul class="logo p_t10"><a href="/"><img src="https://img.payzon.co.kr/_commonImg/header_logo_lt.png"></a><a href="/pzServiceInfo/serviceInfo.php?ref=pzLogo"><img src="https://img.payzon.co.kr/_commonImg/header_logo_rt.png"></a></ul>
        <ul class="logInfo">고객님 무료체험회원 입니다. </ul>
        <ul class="login_menu">
        <div class="direct">
        <!--<span><a href="/pzMyPage/onlineQnAList.php"><span class='direct_c'>온라인 상담실</span></a></span> /pzServiceGuide/customerQnAList.php -->
        <span><a href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon">회원가입</a></span><!-- 2015-01-05 /pzMyPage/myInfo.php 2015-01-19 회원가입(체험존) / 마이페이지 -->
        <span><a href="/pzServiceGuide/php/inLogoutProc.php">로그아웃</a></span>
        </div>
        <div class="favorite"><span id="btnBookmark" onclick="$.fn.setBookmark();" class="anchor"><img src="https://img.payzon.co.kr/_commonImg/icon_fa.gif" alt="즐겨찾기 추가" title="즐겨찾기 추가"></span> <a href="javascript:$.fn.getPayzonQuick();"><img src="https://img.payzon.co.kr/_commonImg/icon_go.gif" alt="바탕화면바로가기" title="바탕화면바로가기"></a></div>
      <!--<div class='print'><a href='#'><img src='https://img.payzon.co.kr/_commonImg/top_direct_print.png' alt='인쇄' title='인쇄'></a></div>--></ul>
      </div>
    </div>
    </header>
  <!-- 아이콘 메뉴 -->
    <nav>
    <div id="top_gnb_2017">
        <div class="navi_2017">
        <ul class="navi_L_2017">
           <li class="n01"><a href="/pzServiceInfo/serviceInfo.php?ref=home" title="[Shift + 1] HOME"><span id="SK01">HOME</span></a></li>
           <li class="n02"><a href="/pzPersonnel/employeeIns.php" title="[Shift + 2] 사원등록"><span id="SK02">사원등록</span></a></li>
           <li class="n03"><a href="/pzPersonnel/employeeMnt.php" title="[Shift + 3] 사원현황"><span id="SK03">사원현황</span></a></li>
           <li class="n04"><a href="/pzPersonnel/certificatePrintWorking.php" title="[Shift + 4] 제 증명서 발급"><span id="SK04">제 증명서 발급</span></a></li>
           <li class="n05"><a href="/pzDiligence/diligenceMnt.php" title="[Shift + 5] 근태기록/관리"><span id="SK05">근태기록/관리</span></a></li>
           <li class="n06"><a href="/pzDiligence/holidaysSearchResult.php" title="[Shift + 6] 휴가조회"><span id="SK06">휴가조회</span></a></li>
           <li class="n07"><a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01&amp;setPmsvType=0" title="[Shift + 7] 급여입력/관리"><span id="SK07">급여입력/관리</span></a></li>
           <li class="n08"><a href="/pzPayment/paymentMntDayWorker.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01" title="[Shift + 8] 급여입력/관리(일용직)"><span id="SK08">급여입력/관리(일용직)</span></a></li>
           <li class="n09"><a href="/pzPayment/paymentRegisterList.php" title="[Shift + 9] 급여대장"><span id="SK09">급여대장</span></a></li>
           <li class="n10"><a href="/pzPayment/paymentPayslip.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01" title="[Shift + 0] 급여명세서"><span id="SK10">급여명세서</span></a></li>
           <li class="n11"><a href="/pzPayment/paymentPayList.php" title="[Shift + -] 사원별급여내역"><span id="SK11">사원별급여내역</span></a></li>
           <li class="n12"><a href="/pzPayment/withHoldingTax.php" title="[Shift + =] 월천징수부"><span id="SK12">월천징수부</span></a></li>
           <li class="n13"><a href="javascript:$.fn.getExcelViewer();"><span>엑셀뷰어</span></a></li>
          <li class="n14"><a href="/pzServiceManual/manualStart.php"><span>사용매뉴얼</span></a></li>
          <li class="n15"><a href="/pzMyPage/onlineQnAEdit.php"><span>온라인 문의</span></a></li>
        </ul>
         </div>
    </div>
    </nav>


<!-- 대메뉴 -->
    <nav>
      <div id="bottom_gnb2017">
        <div id="menu" class="menu2020">
          <ul class="menu_s2020"><!--navi_s의 클래스로 width값 height값 배경색상을 지정해줌 속해있는 li값도 미리 설정-->
            <li class="n01">
              <a href="/pzConfig/membersInfo.php"><span>기본환경설정</span></a>
              <div class="menu_2depth_01_2020 " style="z-index:9999;">
                <ul class="menu_01">
                  <li><a href="/pzConfig/membersInfo.php">사용자 정보</a></li>
                  <li><a href="/pzPersonnel/employeeIns.php">사원 등록</a></li>
                  <li><a href="/pzConfig/dnLItemSet.php">휴가/근태 설정</a></li>
                  <li><a href="/pzConfig/payItemSet.php">급여항목 설정</a></li>
                </ul>
              </div>
            </li><!--클래스 n01로 속해있는 a태그의 백그라운드 포지션변경-->

            <li class="n02">
              <a href="/pzPersonnel/employeeMnt.php"><span>인사관리</span></a>
              <div class="menu_2depth_01_2020 " style="z-index:9999;">
                <ul class="menu_01">
                  <li><a href="/pzPersonnel/employeeMnt.php">사원현황/관리</a></li>
                  <li><a href="/pzPersonnel/employeeCard.php">인사기록 카드</a></li>
                  <li><a href="/pzPersonnel/certificatePrintWorking.php">제 증명서 발급</a></li>
                  <li><a href="/pzPersonnel/certificateRegister.php">제 증명서 발급대장</a></li>
                </ul>
              </div>
            </li><!--a:hover시엔 top값을 수정해서 사용-->

            <li class="n03">
              <a href="/pzDiligence/diligenceMnt.php"><span>근태관리</span></a>
              <div class="menu_2depth_01_2020 " style="z-index:9999;">
                <ul class="menu_01">
                 <!-- <li><a href="/pzConfig/dnLItemSet.php">근태(휴가)항목 설정 </a></li>-->
                  <li><a href="/pzDiligence/diligenceMnt.php">근태기록/관리</a></li>
                  <li><a href="/pzDiligence/diligenceSearchMonth.php">근태조회</a></li>
                  <li><a href="/pzDiligence/holidaysSearchResult.php">휴가조회</a></li><!-- /pzDiligence/holidaysSearch.php -->
                  <li><a href="/pzDiligence/dayWorkerMnt.php">일용직 근무기록/관리</a></li>
                  <li><a href="/pzDiligence/dayWorkerSearchMonth.php">일용직 근무 조회</a></li>
                </ul>
              </div>
            </li>

            <li class="n04">
              <a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01&amp;setPmsvType=0"><span>급여관리</span></a>
              <div class="menu_2depth_01_2020 " style="z-index:9999;">
                <ul class="menu_01">
                 <!-- <li><a href="/pzConfig/payItemSet.php">급여항목 설정</a></li>-->
                  <li><a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01&amp;setPmsvType=0">급여입력/관리</a></li>
                  <li><a href="/pzPayment/paymentMntDayWorker.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01">급여입력/관리(일용직)</a></li>
                  <li><a href="/pzPayment/paymentRegisterList.php">급여대장</a></li>
                  <li><a href="/pzPayment/paymentPayslip.php?frmPmsvTurmYYYY=2023&amp;frmPmsvTurmMM=12&amp;frmPmsvTurmCh=01">급여명세서</a></li><!-- /pzPayment/paymentPayslip.php -->
                  <li><a href="/pzPayment/paymentPayList.php">사원별 급여내역</a></li>
                  <li><a href="/pzPayment/paymentTransfer.php">급여이체 신청</a></li>
                  <li><a href="/pzPayment/paymentTransferList.php">급여이체 결과조회</a></li>
                  <li><a href="/pzPayment/paymentPayItemPart.php">항목별 대장</a></li>
                  <li><a href="/pzPayment/4insureList.php?setPmsvTurmYYYY=2023&amp;setPmsvTurmMM=12&amp;setPmsvTurmCh=01">4대보험 공제내역</a></li>
                  <!--
                  <li class="height"><a href="/pzPayment/dayWorkerPayslipSend.php">일용근로소득 지급명세서<br />(지급자 제출용)</a></li>
                  <li class="height"><a href="/pzPayment/dayWorkerPayslipSave.php">일용근로소득 지급명세서<br />(원천징수영수증)</a></li>-->
                </ul>
              </div>
            </li>

          <li class="n07">
              <a href="/pzStatistics/paymentStatisticsAll.php"><span>급여통계</span></a>
              <div class="menu_2depth_01_2020" style="z-index:9999;">
                <ul class="menu_01">
                  <li><a href="/pzStatistics/paymentStatisticsAll.php">연도별 전체급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsAllMonth.php">월별 전체급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatistics.php">연도별 개인연봉 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsMonth.php">월별 개인급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsPayItems.php">급여항목 구성 통계</a></li>
                </ul>
              </div>
            </li>

            <li class="n05">
              <a href="/pzRetirement/retireProcess.php"><span>퇴직관리</span></a>
              <div class="menu_2depth_01_2020" style="z-index:9999;">
                <ul class="menu_01">
                  <li><a href="/pzRetirement/retireProcess.php">사원 퇴직처리</a></li>
                  <li><a href="/pzRetirement/retirementMnt.php">퇴직급여 입력/관리</a></li>
                  <li><a href="/pzRetirement/retirePayslip.php">퇴직급여명세서</a></li>
                 <!-- <li><a href="/pzRetirement/retireReceipt.php">퇴직소득원천징수영수증</a></li>-->
                </ul>
              </div>
            </li>
            <li class="n06">
              <a href="/pzPayment/withHoldingTax.php"><span>세무관리</span></a>
              <div class="menu_2depth_01_2020 " style="z-index:9999;">
                <ul class="menu_01">
                  <li><a href="/pzPayment/withHoldingTax.php">근로소득 원천징수부</a></li>
                  <li><a href="/pzPayment/dayWorkerPayslipV2.php">일용근로소득 지급명세서</a></li>
                  <li><a href="/pzRetirement/retireReceipt.php">퇴직소득원천징수영수증</a></li>
                  <!-- <li><span style='color:#cccccc;'>원천징수이행상황신고 [준비중]</span></li> -->
                </ul>
              </div>
            </li>
          </ul> <!-- // Class: menu_s -->
        </div> <!-- // Class: menu -->
      </div> <!-- // ID: bottom_gnb -->

    </nav>
  <!-- 2depth 메뉴 -->

<script type="text/javascript">
<!-- 

  // 총 사원 수(5인 미만 체크)
  var setTOTC = "14";
  if(setTOTC == '') setTOTC = 0;

  function getUrlVars()
  {
      var vars = [], hash;
      var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
      for(var i = 0; i < hashes.length; i++)
      {
          hash = hashes[i].split('=');
          vars.push(hash[0]);
          vars[hash[0]] = hash[1];
      }
      return vars;
  }

  // 사원 간략정보 레이어
  var timerChk='';

  $.fn.layerTimerFlag = function(n){
    if(n == 0){
      timerChk = setTimeout(function () {
        $("#pop01")
        .fadeOut();      
        $(".tmpClass").css("background-color","white");
      }, 500);
    }else{
      if (timerChk) window.clearTimeout(timerChk);
    }
    return;
  }
  var tmpDate = 0;

  $(function() {

    if(getCookie('cUssvGrad') == "mGFree5" && setTOTC >= 5){
      alert("회원님은 현재 5인 미만 무료회원입니다.   \n\n현재 등록된 사원수: " + setTOTC + "인   ");
    }

    //UI    
    $("#selSortEmpl, #selSortStat, #scale").msDropDown();    
    $("#frmSearchTarget").msDropDown();

    // 신규 사원등록 버튼
    $( "#btnEmployeeInsGo" ).click(function(){
      if(getCookie('cUssvGrad') == "mGFree5" && setTOTC >= 5){
        alert("회원님은 현재 5인 미만 무료회원입니다.   \n\n현재 등록된 사원수: " + setTOTC + "인   ");  return false;
      }
      else
        location.href = "/pzPersonnel/employeeIns.php";
      return ;
    });

    // 버튼 사원등록 리스트 다운로드
    $( "#btnEmployeeDown" ).click(function(){
      var urlSplit = window.location.href.split("employeeMnt.php");
      var param = urlSplit[1];
      if(param) param += "&setChkMd5=" + setChkMd5;
      else param = "?setChkMd5=" + setChkMd5;
      $("#iFrmMulti").attr("src", "/pzPersonnel/php/inEmployeeMntProcExcel_U_itemSet.php" + param);
//      location.replace("/pzPersonnel/php/inEmployeeMntProcExcel_U_itemSet.php" + param);
      return ;
    });


    $('body').addClass('has-js');
    $('.label_check, .label_radio').click(function(){
      $.setupLabel();
    });
    $.setupLabel(); 

    // 사원 전체 선택/제거
    $("#chkBoxGrpEmployeeInfo").click(function(){
    
      if($(this).attr("checked") == "checked"){
        $("input[name=grpEmployeeInfoId]").attr("checked", true);
        $("input[name=grpEmployeeInfoId]").parent().addClass("c_on");
      }else{
        $("input[name=grpEmployeeInfoId]").attr("checked", false);
        $("input[name=grpEmployeeInfoId]").parent().removeClass("c_on");
      }
      return;
    });

    // 고용형태 검색
    $("#selSortEmpl").change(function(){
      if(window.location.href.indexOf("?") >= 0) location.replace(location.href + "&selSortEmpl=" + $(this).val());
      else location.replace(location.href + "?selSortEmpl=" + $(this).val());
      return;
    });

    // 상태별 검색
    $("#selSortStat").change(function(){
      if(window.location.href.indexOf("?") >= 0) location.replace(location.href + "&selSortStat=" + $(this).val());
      else location.replace(location.href + "?selSortStat=" + $(this).val());
      return;
    });

    // 게시물 개수
    $("#scale").change(function(){
      if($(this).val() !== ""){
        if(window.location.href.indexOf("?") >= 0) location.replace(location.href + "&scale=" + $(this).val()+"&page=1");
        else location.replace(location.href + "?scale=" + $(this).val()+"&page=1");
      }
      return;
    });

    // 테이블 정렬 버튼: 사원번호
    $("#btnEmNo").click(function(){
      var setSortItem = $("#frmSortItem").val();
      var setSortType = $("#frmSortType").val();
      if (setSortItem == "emNo" && setSortType == "ASC") $("#frmSortType").val("DESC");
      else $("#frmSortType").val("ASC");
      $("#frmSortItem").val("emNo");
      $("#frmSrchEmployee").submit();
      return;
    });

    // 테이블 정렬 버튼: 성명
    $("#btnEmNm").click(function(){
      var setSortItem = $("#frmSortItem").val();
      var setSortType = $("#frmSortType").val();
      if (setSortItem == "emNm" && setSortType == "ASC") $("#frmSortType").val("DESC");
      else $("#frmSortType").val("ASC");
      $("#frmSortItem").val("emNm");
      $("#frmSrchEmployee").submit();
      return;
    });

    // 테이블 정렬 버튼: 부서
    $("#btnDprt").click(function(){
      var setSortItem = $("#frmSortItem").val();
      var setSortType = $("#frmSortType").val();
      if (setSortItem == "dprt" && setSortType == "ASC") $("#frmSortType").val("DESC");
      else $("#frmSortType").val("ASC");
      $("#frmSortItem").val("dprt");
      $("#frmSrchEmployee").submit();
      return;
    });

    // 테이블 정렬 버튼: 직위
    $("#btnPstn").click(function(){
      var setSortItem = $("#frmSortItem").val();
      var setSortType = $("#frmSortType").val();
      if (setSortItem == "pstn" && setSortType == "ASC") $("#frmSortType").val("DESC");
      else $("#frmSortType").val("ASC");
      $("#frmSortItem").val("pstn");
      $("#frmSrchEmployee").submit();
      return;
    });

    // 테이블 정렬 버튼: 직위
    $("#btnInsd").click(function(){
      var setSortItem = $("#frmSortItem").val();
      var setSortType = $("#frmSortType").val();
      if (setSortItem == "insd" && setSortType == "ASC") $("#frmSortType").val("DESC");
      else $("#frmSortType").val("ASC");
      $("#frmSortItem").val("insd");
      $("#frmSrchEmployee").submit();
      return;
    });

    // 목록 정렬 설정
    $("#btnSetSort").click(function(){
      $.fn.layerProcCreate("win", "sortEmployeeMnt");
      return;
    });
    // 2018-04-23 사원관리 항목 노출 설정
    $("#btnEmplItemSet").click(function(){
      $.fn.layerProcCreate("win", "employeeMntItemSet");
      return;
    });

    // 선택 삭제
    $("#btnSelectedDel").click(function(){
      var checkedCount = $("#table1 input:checkbox:checked").length;
      if(checkedCount < 1){
        alert("선택된 사원이 없습니다.   ");  return;
      }
      if(confirm("선택한 사원의 근태 및 급여와 관련한 모든 정보도 함께 삭제됩니다.\n\n삭제된 사원정보 및 관련한 모든 정보는 복구할 수 없습니다.\n\n삭제하시겠습니까?   ") === true){
        $.fn.setEmployeeSelectedDelete();
      }else{
//        alert("취소 되었습니다.  ");
      }
      return;
    });

    // 선택사원 SMS 발송
    $("#btnSMSSend").click(function(){
      var checkedCount = $("#table1 input:checkbox:checked").length;
      if(checkedCount < 1){
//        alert("선택된 사원이 없습니다.   ");  return;
      }else if(checkedCount > 10){
        alert("문자메시지 그룹발송은 최대 10명까지 가능합니다.   ");  return;      
      }      
      $.fn.layerProcCreate("win", "SMSNormal");
      return;
    });

  //  $(".tmpClass").hover(function(e){
  //  $(".tmpClass").mousemove(function(e){
    $(".classEmployeeName").mousemove(function(e){
      
  //    var groupId = this.id.replace("employeeName", "employeeNo");
      var groupId = $(this).parent().attr("id");
  //  $(".tmpClass").click(function(e){

      // 2015-05-26 목록 항목 수에 따라서 eq(N) N 변경해야함. 레이어 정보
      var setEmployeeInfo = $("#" + groupId +"> li").eq(0).text();
      var arrSetEmployeeInfo = setEmployeeInfo.split("^:^");

  //    $("#test").html(e.pageX + "." + e.pageY);
  //    $("#test").html(this.id);
  //    alert(groupId + " :: " + this.id);
  //    $("#test").html(setEmployeeInfo);
  //    $("#test").html("tmpClass mousemove:" + tmpDate++);

      if (arrSetEmployeeInfo[0])
        $("#curEmployeePhoto").attr("src", arrSetEmployeeInfo[0]);
      $("#curEmployeeName").html("<strong>" + arrSetEmployeeInfo[1] + "</strong>");
      $("#curEmployeeName").val(arrSetEmployeeInfo[6]);
      $("#curEmployeeName").attr("alt", arrSetEmployeeInfo[7]);
      $("#curEmployeeYrAg").text(arrSetEmployeeInfo[2] + "년");
      $("#curEmployeeAddr").text(arrSetEmployeeInfo[3]);

      if(arrSetEmployeeInfo[4] >= 4){      
        $("#curEmployeePay43").text("공제");
        arrSetEmployeeInfo[4] -= 4;
      }else
        $("#curEmployeePay43").text("비공제");
      if(arrSetEmployeeInfo[4] >= 2){      
        $("#curEmployeePay42").text("공제");
        arrSetEmployeeInfo[4] -= 2;
      }else
        $("#curEmployeePay42").text("비공제");
      if(arrSetEmployeeInfo[4] >= 1){      
        $("#curEmployeePay41").text("공제");
        arrSetEmployeeInfo[4] -= 1;
      }else
        $("#curEmployeePay41").text("비공제");
      $("#curEmployeePay44").text(arrSetEmployeeInfo[5]);

      $("#pop01")
        .css("position","absolute")
        .css('left', e.pageX - 1)
        .css('top', e.pageY - 1)
        .show();

  //    $.fn.layerTimerFlag(1);

      return;    
    });

    $(".classEmployeeName").hover(function(e){ 
  //    $("#test1").html("tmpClass mouseover:" + tmpDate++);
      $("#pop01").show();
      return;    
    });
    $("#pop01").mouseout(function(e){ 
  //    $("#test2").html("#pop01 mouseout:" + tmpDate++);
      $.fn.layerTimerFlag(0);
      return;    
    }) 
    $("#pop01").mousemove(function(e){ 
  //    $("#test3").html("#pop01 mousemove:" + tmpDate++);
      $("#pop01").show();
      return;    
    });

    // E.F 사원관리 이동
    $("#btnEmployeeMnt").click(function(){
      var setUrlView = "";
      var getSelSortStat = "";
      setUrlView = "/pzPersonnel/employeeIns.php?setEmplCode="+$("#curEmployeeName").val();
      if (getSelSortStat)
        setUrlView += "&selSortStat=" + getSelSortStat;
      location.href = setUrlView;
      return;
    });

    // E.F 제증명서 발급 이동
    $("#btnEmplCert").click(function(){
      var thisUlIndx = "ulEmplIndx"+$("#curEmployeeName").attr("alt");
      location.href = "/pzPersonnel/certificatePrintWorking.php?setUlEmplIndx=" + thisUlIndx;
      return;
    });

    // E.F 인사기록카드 이동
    $("#btnEmplRegister").click(function(){
      var thisUlIndx = "ulEmplIndx"+$("#curEmployeeName").attr("alt");
      location.href = "/pzPersonnel/employeeCard.php?setEmplCard=ulEmplIndx"+ thisUlIndx;
      return;
    });

    // 사원 정보
    $(".goEmployeeView").click(function(){
      var groupId = $(this).parent().attr("id");    
      var thisId = groupId.replace("employeeNo", "");
      var getSelSortStat = "";
      setUrlView = "/pzPersonnel/employeeIns.php?setEmplCode=" + thisId;
      if (getSelSortStat)
        setUrlView += "&selSortStat=" + getSelSortStat;
      location.href = setUrlView;
      return;
    });

    // 사원 정보 오버 색상
    $(".goEmployeeView").mousemove(function(e){
      var groupId = $(this).parent().attr("id");
      $(".tmpClass").css("background-color","#ffffff");
      $("#"+ groupId).css("background-color","#e5faff");
      return;
    });

    //E.F. 사원 전체 선택/제거
    $("#chkBoxGrpEmployeeInfo").click(function(){    
  // $('input:checked'); // checked 
  // $('input:not(:checked)'); //unchecked
      if($(this).is(":checked") == true){
        $("input[name=grpEmployeeInfoId]").attr("checked", true);
        $("input[name=grpEmployeeInfoId]").parent().addClass("c_on");
      }else{
        $("input[name=grpEmployeeInfoId]").attr("checked", false);
        $("input[name=grpEmployeeInfoId]").parent().removeClass("c_on");
      }
      return;
    });

    //E.F. 체크 박스 선택/비선택 관계처리
    $("#table1 input:checkbox").click(function(){
      var checkboxCount = $("#table1 input:checkbox").length; 
      var checkedCount = $("#table1 input:checkbox:checked").length;
      if(checkedCount == 0) $("#chkBoxGrpEmployeeInfo").attr("checked", false);
      else if(checkedCount == (checkboxCount - 1) && $("#chkBoxGrpEmployeeInfo").is(":checked") == false) $("#chkBoxGrpEmployeeInfo").attr("checked", true);
      else if(checkedCount != checkboxCount) $("#chkBoxGrpEmployeeInfo").attr("checked", false);
      return;
    });

    // 신규사원 일괄등록-등록팝업  2022-01-14 유기원
    $('#btnEmployeeBatchIns').click(function() {
      $.fn.employeeBatchPopup('');
    
    });
    // 신규사원 일괄등록-등록팝업 배경 클릭 시 닫기
    $('body').on('click', function(e){
      if(e.target.id=='employeeBatchUploadLayer') $.fn.employeeBatchPopup('hidden');
      else if(e.target.id=='employeeBatchResultLayer') $.fn.employeeBatchResultPopup('hidden');
    });
    // 신규사원 일괄등록-업로드 양식 다운로드
    $(document).on('click','#btnEmployeeBatchFormDown',function() {
      setUrl = '/pzPersonnel/php/inEmployeeInsBatchDownProc.php';
      setUrl += "?setChkMd5=" + setChkMd5;
      $("#iFrmMulti").attr("src", setUrl);
    });
    // 신규사원 일괄등록-파일첨부
    $(document).on('change', 'form[name="frmEmployeeBatchUploadForm"] input[name="frmBatchFile"]', function(){
      fname = $('form[name="frmEmployeeBatchUploadForm"] input[name="frmBatchFile"]')[0].files[0].name;
      $('#uploadFileName').html(fname);
      
    });
    // 신규사원 일괄등록-등록하기
    $(document).on('click', '#btnEmployeeBatchSubmit', function() {

      var frm = $('form[name="frmEmployeeBatchUploadForm"]')[0];
      var formData = new FormData(frm);

      $.ajax({
          type: "POST",
          enctype: 'multipart/form-data',
          url: '/pzPersonnel/php/inEmployeeInsBatchProcAjax.php',
          data: formData,
          processData: false,
          contentType: false,
          cache: false,
          dataType: 'json',
          success: function (returnData) {

              if(returnData['rtnFlag']==1) {
                $.fn.employeeBatchPopup('hidden');
                $.fn.employeeBatchResultPopup('', returnData['rtnValue']);
              }
              else {
                //if(returnData['rtnMsg']) alert(returnData['rtnMsg']);
                if(returnData['rtnValue']) alert(returnData['rtnValue']);
              }
          },
          error:function(request,status,error){
            //console.log('request:'+request+' / status:'+status+' / error:'+error);
          }
      });


    });
    // 신규사원 일괄등록-결과 팝업 닫기
    $(document).on('click','#btnEmployeeBatchResultOk', function() {
      $.fn.employeeBatchResultPopup('hidden');
    });

  });
  /* End Function() */

  // 신규사원 일괄등록-파일 업로드 레이어 팝업
  $.fn.employeeBatchPopup = function(mode) {
    
    $('#employeeBatchUploadLayer').remove();

    if(mode!='hidden') {
      setHtml = '';
      setHtml += '<div id="employeeBatchUploadLayer" class="pz_layer_warp">';
      setHtml += '  <div class="layer_inner">';
      setHtml += '    <p class="tit">신규 사원 일괄등록</p>';
      setHtml += '    <p class="txt">업로드 양식을 다운로드 받아 사원정보를 입력한 파일을 업로드 해주세요.</p>';
      setHtml += '    <button id="btnEmployeeBatchFormDown" class="btn btn_form_down">업로드 양식 다운로드</button>';
      setHtml += '    <div class="gray_bg">';
      setHtml += '<form name="frmEmployeeBatchUploadForm">';
      setHtml += '      <div class="input_box"><label class="input_file"><input type="file" name="frmBatchFile" class="hidden"><span id="uploadFileName" class="file_name"></span> <span class="file_select">파일선택</span></label></div>';
      setHtml += '      <button type="button" id="btnEmployeeBatchSubmit" class="btn btn_allUpload">사원 일괄 등록하기</button>';
      setHtml += '</form>';
      setHtml += '    </div>';
      setHtml += '  </div>';
      setHtml += '</div>';

      $('body').append(setHtml);
    }
  }
  // 신규사원 일괄등록-레이어 팝업
  $.fn.employeeBatchResultPopup = function(mode, resultData) {

    $.fn.employeeBatchPopup('hidden');

    $('#employeeBatchResultLayer').remove();

    if(mode!='hidden') {
      resultTable = '';
      if(resultData['failNum']>0) {
        resultMsg = '처리되지 않은 데이터가 있습니다.<br>아래 사항을 수정 후 다시 진행하시기 바랍니다.';

        resultTable += '    <table cellspacing="0" cellpadding="0" class="reason_table">';
        resultTable += '      <tr>';
        resultTable += '        <th>사원명</th>';
        resultTable += '        <th>사유</th>';
        resultTable += '      </tr>';

        $.each(resultData['failInfo'], function(idx, aInfo){
          resultTable += '      <tr>';
          resultTable += '        <td>'+aInfo['name']+'</td>';
          resultTable += '        <td>'+aInfo['msg']+'</td>';
          resultTable += '      </tr>';
        });

        resultTable += '    </table>';

      }
      else {
        resultMsg = '사원 일괄 등록이 정상적으로 처리 되었습니다.';
      }

      setHtml = '';
      setHtml += '<div id="employeeBatchResultLayer" class="pz_layer_warp">';
      setHtml += '  <div class="layer_inner result">';
      setHtml += '    <p class="tit">'+resultMsg+'</p>';
      setHtml += '    <div class="result_info">';
      setHtml += '      <span>성공 : <b class="c_red">'+resultData['successNum']+'</b>건</span><span>실패 : <b class="c_blue">'+resultData['failNum']+'</b>건</span>';
      setHtml += '    </div>';
      setHtml += resultTable; // 실패사유
      setHtml += '    <button type="button" id="btnEmployeeBatchResultOk" class="btn btn_confirm">확인</button>';
      setHtml += '  </div>';
      setHtml += '</div>';

      $('body').append(setHtml);
    }

  }

  $.fn.frmSrchCheck = function(){
    if($("#srchKwrd").val() == "검색어 입력" || $.trim($("#srchKwrd").val()).length < 2){
      if($("#frmSortType").val() != "" ){
        $("#srchKwrd").val("");
      }else{
        alert("검색어를 확인해주세요.\n\n검색어는 최소 2자 이상이어야 합니다.");
        $("#srchKwrd").select();
        return false;
      }
    }
    return;
  }

  // 삭제 후 리턴 호출
  $.fn.pageReload = function(){
    location.replace("/pzPersonnel/employeeMnt.php");
    return;
  }

//-->
</script>

  <section>
  <div id="main_container">
  <!-- 타이틀 이미지 -->
    <div class="sub_titimg">
    <ul>
    <li class="tit_img p_r7"><img src="/_commonImg/eadmin_tit_img.gif" width="70" height="68" alt="사원관리" title="사원관리"></li>
    <li class="p_t10"><img src="/_commonImg/eadmin_tit_01.gif" width="131" height="25" alt="사원관리" title="사원관리"></li>
    <li class="p_t5">전체사원 현황을 보실 수 있으며, 선택하면 해당사원 등록(정보) 페이지로 이동합니다.</li>
    </ul>
      <!--<span class="calculator anchor" onclick="$.layerCreateCommon('manualView','B01');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span> -->
    </div>
    <hr>


   <!-- 사원관리 -->
<div class="main_titimg wp_100">
   <!-- 사원 현황_table형식
    <div class='e_total p_t10'>
      <ul>
      <li class='black w_70 height_22'><span class='c_white'><strong>총원</strong></span></li>
      <li class='g1 c_black height_22 w_100'><strong>120</strong></li>
      <li class='w_20'></li>
      <li class='blue w_70'><span class='c_white'><strong>재직</strong></span></li>
      <li class='g1 c_black w_70'><strong>120</strong></li>
      <li class='g2 w_70'><strong>퇴사</strong></li>
      <li class='g1 c_black w_70'><strong>1</strong></li>
      <li class='w_20'></li>
      <li class='g3 w_70'><strong>정규직</strong></li>
      <li class='g4 c_black w_70'><strong>120</strong></li>
      <li class='g3 w_70'><strong>계약직</strong></li>
      <li class='g4 c_black w_70'><strong>1</strong></li>
      <li class='g3 w_70'><strong>임시직</strong></li>
      <li class='g4 c_black w_70'><strong>1</strong></li>
      <li class='g3 w_70'><strong>일용직</strong></li>
      <li class='g4 c_black w_70'><strong>1</strong></li>
      </ul>  
    </div>-->
    <div class="e_total p_t10">
      <ul class="em_count em_count_work">
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_01.png" alt="재직자"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortStat=srchDrof"><img src="/_commonImg/today_1.png" width="12" height="24"><img src="/_commonImg/today_2.png" width="16" height="24"></a></div>
        </li>
      </ul>
      <ul class="em_count em_count_division">
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_02.png" alt="정규직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%C1%A4%B1%D4%C1%F7"><img src="/_commonImg/today_7.png" width="16" height="24"></a><!-- (<img src="/_commonImg/today_0.png" width="16" height="24">) --></div>
          <i></i>
        </li>
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_03.png" alt="계약직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%B0%E8%BE%E0%C1%F7"><img src="/_commonImg/today_1.png" width="12" height="24"></a></div>
          <i></i>
        </li>
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_04.png" alt="임시직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%C0%D3%BD%C3%C1%F7"><img src="/_commonImg/today_1.png" width="12" height="24"></a></div>
          <i></i>
        </li>
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_05.png" alt="파견직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%C6%C4%B0%DF%C1%F7"><img src="/_commonImg/today_0.png" width="16" height="24"></a></div>
          <i></i>
        </li>
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_06.png" alt="위촉직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%C0%A7%C3%CB%C1%F7"><img src="/_commonImg/today_0.png" width="16" height="24"></a></div>
          <i></i>
        </li>
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_07.png" alt="일용직"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortEmpl=%C0%CF%BF%EB%C1%F7"><img src="/_commonImg/today_3.png" width="14" height="24"></a></div>
        </li>
      </ul>
      <ul class="em_count em_count_resign">
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_08.png" alt="퇴사자"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortStat=srchRsnt"><img src="/_commonImg/today_2.png" width="16" height="24"></a></div>
        </li>
      </ul>
      <ul class="em_count em_count_total">
        <li>
          <p><img src="https://img.payzon.co.kr/_commonImg/em_count_title_09.png" alt="전체"></p>
          <div><a href="/pzPersonnel/employeeMnt.php?selSortStat=srchAll"><img src="/_commonImg/today_1.png" width="12" height="24"><img src="/_commonImg/today_4.png" width="16" height="24"></a></div>
        </li>
      </ul>
    </div>
  <!-- 검색 & 정렬 -->
<form name="frmSrchEmployee" id="frmSrchEmployee" onsubmit="return $.fn.frmSrchCheck();">
    <div class="search_box p10">
      <ul class="p_t1">
      <div class="ddOutOfVision" style="height:0px;overflow:hidden;position:absolute;" id="frmSearchTarget_msddHolder"><select name="frmSearchTarget" id="frmSearchTarget" style="width:100px;">
			 <option value="srchAlls">전체</option>
           <option value="srchName">이름</option>
           <option value="srchDprt">부서</option>
           <option value="srchPstn">직위</option>
           <option value="srchMbId">사원번호</option>
      </select></div><div id="frmSearchTarget_msdd" class="dd" style="width: 95.1818px;"><div id="frmSearchTarget_title" class="ddTitle"><span id="frmSearchTarget_arrow" class="arrow"></span><span class="ddTitleText" id="frmSearchTarget_titletext"><span class="ddTitleText">전체</span></span></div><div id="frmSearchTarget_child" class="ddChild" style="width: 93.1818px;"><a href="javascript:void(0);" class="selected enabled" style="[object CSSStyleDeclaration]" id="frmSearchTarget_msa_0"><span class="ddTitleText">전체</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="frmSearchTarget_msa_1"><span class="ddTitleText">이름</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="frmSearchTarget_msa_2"><span class="ddTitleText">부서</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="frmSearchTarget_msa_3"><span class="ddTitleText">직위</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="frmSearchTarget_msa_4"><span class="ddTitleText">사원번호</span></a></div></div></ul>
        <ul class="p_l5 "><input name="srchKwrd" id="srchKwrd" type="text" value="검색어 입력" class="border w_170 height_22 p_l5" onfocus="this.value = (this.value == '검색어 입력')?'':this.value;" style="ime-mode:active;"></ul>
        <ul class="p_t1"><input type="image" value="검색어 입력" src="/_commonImg/btn_s_search.png" width="23px" height="23px" alt="검색어 입력" title="검색어 입력" class="p_l5 "></ul>
        <ul class="p_t1"><a href="/pzPersonnel/employeeMnt.php"><img name="btnListInit" id="btnListInit" type="image" value="전체보기" src="/_commonImg/btn_list_all01.png" width="74px" height="23px" alt="전체보기" title="전체보기" class="p_l5"></a></ul>
      
      <ul class="right w_140 p_t1"><span id="btnEmplItemSet" class="anchor"><img name="btnListItemSet" id="btnListItemSet" type="image" value="표시항목설정" src="/_commonImg/btn_sell_set.png" width="89px" height="23px" alt="표시항목설정" title="표시항목설정"></span></ul>
      <ul class="right w_120 p_t1"><span id="btnSetSort" class="anchor"><img src="/_commonImg/btn_align_set.png" width="114" height="23" alt="정렬기준 설정하기" title="정렬기준 설정하기"></span></ul>
      <ul class="right p_t1">
          <div>
          <!-- <select name="frmSortPstn" id="frmSortPstn" >
           <option value="">직급별</option>
           <option value="srchName">이름</option>
           <option value="srchDprt">부서</option>
           <option value="srchPstn">직위</option>
          </select> -->
          <div class="ddOutOfVision" style="height:0px;overflow:hidden;position:absolute;" id="selSortEmpl_msddHolder"><select name="selSortEmpl" id="selSortEmpl" style="width:100px;">
           <option value="">고용형태별</option>
	<option value="정규직">정규직</option>
	<option value="계약직">계약직</option>
	<option value="임시직">임시직</option>
	<option value="파견직">파견직</option>
	<option value="위촉직">위촉직</option>
	<option value="일용직">일용직</option>
          </select></div><div id="selSortEmpl_msdd" class="dd" style="width: 95.1818px;"><div id="selSortEmpl_title" class="ddTitle"><span id="selSortEmpl_arrow" class="arrow"></span><span class="ddTitleText" id="selSortEmpl_titletext"><span class="ddTitleText">고용형태별</span></span></div><div id="selSortEmpl_child" class="ddChild" style="width: 93.1818px;"><a href="javascript:void(0);" class="selected enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_0"><span class="ddTitleText">고용형태별</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_1"><span class="ddTitleText">정규직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_2"><span class="ddTitleText">계약직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_3"><span class="ddTitleText">임시직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_4"><span class="ddTitleText">파견직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_5"><span class="ddTitleText">위촉직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortEmpl_msa_6"><span class="ddTitleText">일용직</span></a></div></div>
          <div class="ddOutOfVision" style="height:0px;overflow:hidden;position:absolute;" id="selSortStat_msddHolder"><select name="selSortStat" id="selSortStat">
           <option value="srchAll">상태별</option>
           <option value="srchDrof" selected="">재직</option><!-- during office  -->
           <option value="srchRsnt">퇴직</option><!-- resignation -->
          </select></div><div id="selSortStat_msdd" class="dd" style="width: 57.1818px;"><div id="selSortStat_title" class="ddTitle"><span id="selSortStat_arrow" class="arrow"></span><span class="ddTitleText" id="selSortStat_titletext"><span class="ddTitleText">재직</span></span></div><div id="selSortStat_child" class="ddChild" style="width: 55.1818px;"><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortStat_msa_0"><span class="ddTitleText">상태별</span></a><a href="javascript:void(0);" class="selected enabled" style="[object CSSStyleDeclaration]" id="selSortStat_msa_1"><span class="ddTitleText">재직</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="selSortStat_msa_2"><span class="ddTitleText">퇴직</span></a></div></div>
          <div class="ddOutOfVision" style="height:0px;overflow:hidden;position:absolute;" id="scale_msddHolder"><select name="scale" id="scale">
           <option value="">리스트 수</option>
           <option value="10">10개씩 보기</option>
           <option value="30" selected="">30개씩 보기</option>
           <option value="50">50개씩 보기</option> 
           <option value="100">100개씩 보기</option>
          </select></div><div id="scale_msdd" class="dd" style="width: 94.1818px;"><div id="scale_title" class="ddTitle"><span id="scale_arrow" class="arrow"></span><span class="ddTitleText" id="scale_titletext"><span class="ddTitleText">30개씩 보기</span></span></div><div id="scale_child" class="ddChild" style="width: 92.1818px;"><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="scale_msa_0"><span class="ddTitleText">리스트 수</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="scale_msa_1"><span class="ddTitleText">10개씩 보기</span></a><a href="javascript:void(0);" class="selected enabled" style="[object CSSStyleDeclaration]" id="scale_msa_2"><span class="ddTitleText">30개씩 보기</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="scale_msa_3"><span class="ddTitleText">50개씩 보기</span></a><a href="javascript:void(0);" class="enabled" style="[object CSSStyleDeclaration]" id="scale_msa_4"><span class="ddTitleText">100개씩 보기</span></a></div></div>
          </div>
      </ul>  

    </div>
<input type="hidden" name="frmSortItem" id="frmSortItem" value="">
<input type="hidden" name="frmSortType" id="frmSortType" value="">
</form>

   <!-- 사원관리 리스트 -->
      <div class="e_total">

<div class="w_1150 scroll_x">

        <div id="table1" style="width:1149px;">
        <p class="caption"></p>
        <ul>
        <li class="w_24 tit"><label class="label_check" for="chkBoxGrpEmployeeInfo"><input id="chkBoxGrpEmployeeInfo" type="checkbox"></label></li>
<li class="tit w_74">구분</li><li class="tit w_100">입사일</li><li class="tit w_92">사원번호</li><li class="tit w_92">성명(한글)</li><li class="tit w_100">부서</li><li class="tit w_90">직위</li><li class="tit w_110">주민번호</li><li class="tit w_120">휴대폰</li><li class="tit w_165">이메일</li><li class="tit w_100">퇴사일</li><li class="tit w_70">상태</li>        <!-- <li  class='w_74 tit '>구분</li>
        <li  class='w_100 tit'>입사일</li>
        <li  class='w_92 tit '>사원번호</li>
        <li  class='w_92 tit'>성명(한글)</li>
        <li  class='w_92 tit'>성명(영문)</li>
        <li  class='w_100 tit'>부서</li>
        <li  class='w_90 tit'>직위</li>
        <li  class='w_110 tit'>주민번호</li><!-- 생년월일 - ->
        <li  class='w_74 tit '>내/외국인</li>
        <li  class='w_330 tit '>주소</li>
        <li  class='w_120 tit'>휴대폰</li>
        <li  class='w_165 tit'>이메일</li>
        <li  class='w_165 tit'>SNS</li>
        <li  class='w_100 tit'>퇴사일</li>
        <li  class='w_70 tit'>상태</li> -->
        </ul>

<!-- <h2 id="test">...</h2>
<h2 id="test1">...</h2>
<h2 id="test2">...</h2>
<h2 id="test3">...</h2> -->


         <form id='searchForm' action="/test" method='get'>
        <ul id="employeeNo031" class="tmpClass anchor" style="background-color: rgb(255, 255, 255);">
          
          <li class="w_24"><label class="label_check" for="grpEmployeeInfoId0"><input type="checkbox" name="grpEmployeeInfoId" id="grpEmployeeInfoId0" value="1171353"></label></li>

          <li class="w_74 goEmployeeView">정규직</li>
          <li class="w_100 goEmployeeView">2000-02-22</li>
          <li class="w_92 goEmployeeView">No-140034</li>
          <li class="w_92 goEmployeeView classEmployeeName">이응열</li>
          <li class="w_100 goEmployeeView">사장실</li>
          <li class="w_90 goEmployeeView">사장</li>
          <li class="w_110 goEmployeeView">610101-0000000</li>
          <li class="w_120 goEmployeeView">010-1111-0000</li>
          <li class="w_165 a_l goEmployeeView"><span class="p_l5">ceo@yesform.com</span></li>
          <li class="w_100 goEmployeeView"></li>
          <li class="w_70 goEmployeeView">재직</li>

        </ul>
        </form>

       

        </div>

</div>

    </div>
  <!-- 페이지 인덱스 -->
<!-- <style>
/*페이징*/
.paging{display:block; position:relative; clear:both; width:100%; padding:10px 0; text-align:center;}
/*
.paging{display:block; position:relative; clear:both; width:100%; margin:0 0 48px 30px; _margin-bottom:0px; padding:15px 0; text-align:center;}
*/
.paging a,
.paging strong{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #ffffff; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging strong{color:#f23219 !important; border:1px solid #d7d7d7;}
.paging a:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;line-height:normal;}
.paging .pre, .paging .next{font-weight:normal; display:inline-block; color:#565656; border:1px solid #d7d7d7;_position:relative; _top:-1px; font:12px Gulim; _width:60px;}
.paging .pre{margin-right:9px; padding:7px 6px 3px 16px; background:url(http://imgs.yesform.com/z_i/btn_arrow_left_on.gif) no-repeat 8px 9px !important;}
.paging .next{margin-left:9px; padding:7px 16px 3px 6px; background:url(http://imgs.yesform.com/z_i/btn_arrow_right_on.gif) no-repeat 47px 9px !important;}
.paging .line, .paging .line:visited{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #d7d7d7; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging .line:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;padding:3px 3px 5px 3px;line-height:normal; font:bold 13px Verdana; _width:26px;}
</style>
 -->

<!-- 페이지 링크 -->
<div class="paginate">
<a href="#" onclick="msg_pagelink(''); return false;" class="prev">이전페이지</a> 
<a href="#현재페이지" class="on"><strong>1</strong></a> <a href="#" onclick="msg_pagelink(''); return false;" class="next">다음페이지</a>
</div>
<!-- 페이지 링크 끝 -->
<script language="Javascript">
function msg_pagelink(ptype) {
  if(ptype);
  else alert('더 이상 이동할 페이지가 없습니다.');
}
</script>

  
<!-- 버튼 -->   
    <div class="btn c">
    <li>
    <input name="btnEmployeeInsGo" id="btnEmployeeInsGo" type="image" value="신규 사원등록" src="/_commonImg/btn_new_employee_s.png" alt="신규 사원등록" title="신규 사원등록">
    <span class="p_l10"><button name="btnEmployeeBatchIns" id="btnEmployeeBatchIns" style="height:45px; vertical-align:top">신규사원 일괄등록</button></span>
    <span class="p_l10"><span name="btnSelectedDel" id="btnSelectedDel" class="anchor"><img src="/_commonImg/btn_select_delete_s.png" alt="선택 삭제" title="선택 삭제"></span></span>
    <span class="p_l10"><input name="btnEmployeeDown" id="btnEmployeeDown" type="image" value="엑셀로 다운로드" src="/_commonImg/btn_xls_down_s.png" alt="엑셀로 다운로드" title="엑셀로 다운로드"></span>
<!--
   <span class='p_l10'> <img src='/_commonImg/btn_sms_s.png'  alt='sms보내기' title='sms보내기' onclick="javascript:$.fn.commonMsg('sms-end');" style="cursor:pointer;"></span>
-->
    </li>
    </div>

  </div>
</div>      
  </section>



<style>
.em_photo img {
max-width: 84px ;
width: expression(this.width > 84 ? 84: auto) ;
max-height: 112px ;
height: expression(this.height > 112 ? 112: auto) ;
}
</style>
<!-- 사원 레이어 -->
<div id="pop01" class="w_490 p5 disHide" onmouseover="$.fn.layerTimerFlag(1);" style="z-index:9">
  <ul class="em height_160">
    <div class="em_photo">
      <li class="border_box b_gray "><img id="curEmployeePhoto" src="/_commonImg/setting_photo.gif" height="112px" vspace="12"></li><!--  width='84px'  -->
    </div>
    <div class="em_table w_330">
      <ul class="border_zip">
        <li class="w_70  tit">성명</li>
        <li class="w_88 c" id="curEmployeeName" value="" alt=""><strong>홍길동</strong></li>
        <li class="w_70  tit">근속연수</li>
        <li class="w_88 c" '="" id="curEmployeeYrAg">1년</li>
      </ul>
      <ul>
        <li class="w_70  tit">주소</li>
        <li class="w_238  aling_l p_l10" id="curEmployeeAddr">서울시 성동구 성수1가 서울숲 코오롱3차</li>
      </ul>
      <ul>
        <li class="w_70 tit_y">국민연금</li>
        <li class="w_88 c" id="curEmployeePay41">공제</li>
        <li class="w_70 tit_y">건강보험</li>
        <li class="w_88 c " id="curEmployeePay42">공제</li>
      </ul>
      <ul>
        <li class="w_70  tit_y">고용보험</li>
        <li class="w_88 c" id="curEmployeePay43">비공제</li>
        <li class="w_70  tit_y">갑근세</li>
        <li class="w_88 c" id="curEmployeePay44">근로소득자</li>
      </ul>
    </div>
  </ul>
  <li class="footer c"><input name="btnEmployeeMnt" id="btnEmployeeMnt" type="image" value="정보수정" src="/_commonImg/btn_em_edit01.png" width="97px" height="30px" alt="정보수정" title="정보수정"><span class="p_l10"><span name="btnEmplCert" id="btnEmplCert" class="anchor"><img type="image" value="제증명발급" src="/_commonImg/btn_cert.png" width="112px" height="30px" alt="제증명발급" title="제증명발급"></span></span><span class="p_l10"><span name="btnEmplRegister" id="btnEmplRegister" class="anchor"><img type="image" value="인사기록카드" src="/_commonImg/btn_emcard.png" width="118px" height="30px" alt="인사기록카드" title="인사기록카드"></span></span></li>
</div>


<!-- footer -->
      <footer>
        <iframe ref="nofollow" name="iFrmMulti" id="iFrmMulti" src="about:blank" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
        <iframe ref="nofollow" name="iFrmLog" id="iFrmLog" src="about:blank" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><!--  -->
        <div id="main_footer"><img src="https://img.payzon.co.kr/_commonImg/bottom_2023.gif" usemap="#footer"></div>

        <map name="footer">
          <area shape="rect" coords="456,9,627,87" href="/pzServiceGuide/customerFAQList.php" alt="faq" title="faq">
          <area shape="rect" coords="636,12,819,87" href="/pzMyPage/onlineQnAEdit.php" alt="qna" title="qna">
          <area shape="rect" coords="827,12,991,86" href="/pzServiceManual/manualStart.php" alt="이용안내" title="이용안내">
          <area shape="rect" coords="998,12,1150,86" href="/pzServiceGuide/memberPayment.php" alt="충전&amp;결제" title="충전&amp;결제">
        </map>
     </footer>

        <!-- <iframe ref="nofollow" name="iFrmMulti" id="iFrmMulti" src="/_commonLog/logProc.php?pc=A001" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="display:none;"></iframe>
        <iframe ref="nofollow" name="iFrmLog" id="iFrmLog" src="/_commonLog/logProc.php?pc=A002" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="display:none;"></iframe> --><!-- /_commonLog/logProc.php?pc=A001 -->
<!-- // footer -->
  


</body></html>