<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<title>PuppyShop</title>
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" type="text/css" href="../fontium/css/fontium.css"/>
<style type="text/css">
 /* 폰트 CSS */
    @font-face {
        font-family: 'KIMM_Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }
    /* 메인 컨텐츠 부분 */
    .wrap{
        width: 100%;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 105px;
        z-index: 1;
    }
    /* 헤더 박스 부분 */
   .headerbox{
      width : 100%;
      height : 105px;
        position: fixed;
        left: 50%;
        transform: translateX( -50% );
        border-bottom: 1px solid lightgray;
        background-color: white;
        z-index: 2;
   }
    /* 로고 이미지 */
    #logoImage{
        position: fixed;
        left: 7.7%;
        top: 7%;
        transform: translateX( -50% );
    }
    /* 헤더 박스 안의 컨텐츠 */
    .menubox{
        width: 1500px;
        height: 140px;
        position: fixed;
        left: 52%;
        transform: translateX( -50% );
    }
    /* 메뉴바 관련 */
    .navbarbox{
        width: 650px;
        height: 85px;
        position: fixed;
        left: 36%;
        top: 19%;
        transform: translateX( -50% );
    }
    .navbarbox a{
        color: black;
        text-decoration: none;
        font-family: 'KIMM_Bold', sans-serif;
        font-size: larger;
        margin : 0px 28px 0px 28px;
    }
    .navbarbox a:active{
        color: orange;
    }
    #a2{
       margin-left : 30px;
    }
    /* 드롭박스 관련 */
    #dropbtn{
        background-color: white;
        color: black;
        padding: 16px;
        font-family: 'KIMM_Bold', sans-serif;
        font-size: larger;
        border: none;
        margin-left: 12px;
    }
    #dropbtn:active{
        color: orange;
    }
    #dropdownbox{
        position: relative;
        display: inline-block;
    }
    #dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 170px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }
    #dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    #dropdownbox:hover #dropdown-content {
        display: block;
    }
    /* 회원가입, 로그인 관련 */
    .memberbox{
        width: 196px;
        height: 125px;
        position: fixed;
        right: 5%;
        top: 5%;
    }
    .memberbox a{
        color: black;
        text-decoration: none;
        font-family: 'KIMM_Bold', sans-serif;
        font-size :small;
    }
    .memberbox a:hover{
        color: blue;
    }
    /* 검색창 관련 */
    .searchbox{
        position: fixed;
        right: 4.8%;
        top: 30%;
        transform: translateX( -10% );
    }
    #search{
        width: 330px;
        height: 32px;
        font-size: 15px;
        font-weight: bold;
        border: 0.5px solid lightgrey;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(240, 239, 239);
        z-index: 2;
    }
    #searchBtn{
        width: 32px;
        height: 29px;
        position: fixed;
        right: 0;
        top: 5%;
        transform: translateX(-10%);
        border: none;
        border-radius: 15px;
        padding: 0;
    }
    /* 위로 가기 버튼 관련 */
    #topBtn{
        position: fixed;
        bottom: 45px;
        right: 5px;
        width: 60px;
        height: 47px;
        text-align: center;
        font-size: 15px;
        font-weight: bold;
        color: #787f83;
        transition: all 200ms ease-out;
        display: inline-block;
        z-index: 10;
    }
    #topBtn .icon{
        width: 100%;
        height: 100%;
        color: #787f83;
        cursor: pointer;
    }
    /* 클리어 */
    .clear{
      clear : both;
   }
</style>
</head>
<body>
<%
   String id = (String)session.getAttribute("id");
%>
<% if(id!=null){%> <%-- 회원일때 --%>
    <div class="headerbox">
        <div class="menubox">
            <a href="main_product.shop">
                <img src="<%=request.getContextPath()%>/images/main logo2.png" id="logoImage" width="200" height="90" alt="로고 사진">
            </a>
            <div class="memberbox">
                <a href="mypagemain.shop"><%=id %> 님</a> | <a href="member_logout.shop">로그아웃</a> <!-- a태그 링크 변경하여 회원가입/로그인 구현 -->
            </div>
            <div class="navbarbox">
               <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='puppy_product.shop'">사료</button>
                    <div id="dropdown-content">
                        <a href="puppy_product.shop">퍼피</a>
                        <a href="adult_product.shop">어덜트<br>(전연령)</a>
                        <a href="senior_product.shop">시니어</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='gum_product.shop'">간식</button>
                    <div id="dropdown-content">
                        <a href="gum_product.shop">개껌</a>
                        <a href="gansik_product.shop">일반간식</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='probio_product.shop'">영양제</button>
                    <div id="dropdown-content">
                        <a href="probio_product.shop">유산균</a>
                        <a href="omega3_product.shop">오메가3</a>
                    </div>
                </div>
                <a id="a2" href="cs_notice.shop">고객 센터</a>
                <a id="a3" href="location.shop">찾아오시는 길</a>
            </div>
            <div class="searchbox">
	            <input type="text" id="search" placeholder="검색어를 입력해주세요.">
	            <button type="button" id="searchBtn" alt="검색 버튼" onclick="openPopup_company_introduce();">
	                <img src="<%=request.getContextPath()%>/images/searchIcon.png" width="24px" height="24px">
	            </button>
            </div>
        </div>
    </div>
    <% if(id.equals("admin")){%> <%-- 관리자 일때 --%>
       <div class="headerbox">
        <div class="menubox">
            <a href="main_product.shop">
                <img src="<%=request.getContextPath()%>/images/main logo2.png" id="logoImage" width="200" height="90" alt="로고 사진">
            </a>
            <div class="memberbox">
                <a href="adminMain.shop">관리자 계정</a> | <a href="member_logout.shop">로그아웃</a> <!-- a태그 링크 변경하여 회원가입/로그인 구현 -->
            </div>
            <div class="navbarbox">
               <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='puppy_product.shop'">사료</button>
                    <div id="dropdown-content">
                        <a href="puppy_product.shop">퍼피</a>
                        <a href="adult_product.shop">어덜트<br>(전연령)</a>
                        <a href="senior_product.shop">시니어</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='gum_product.shop'">간식</button>
                    <div id="dropdown-content">
                        <a href="gum_product.shop">개껌</a>
                        <a href="gansik_product.shop">일반간식</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='probio_product.shop'">영양제</button>
                    <div id="dropdown-content">
                        <a href="probio_product.shop">유산균</a>
                        <a href="omega3_product.shop">오메가3</a>
                    </div>
                </div>
                <a id="a2" href="cs_notice.shop">고객 센터</a>
                <a id="a3" href="location.shop">찾아오시는 길</a>
            </div>
            <div class="searchbox">
	            <input type="text" id="search" placeholder="검색어를 입력해주세요.">
	            <button type="button" id="searchBtn" alt="검색 버튼" onclick="openPopup_company_introduce();">
	                <img src="<%=request.getContextPath()%>/images/searchIcon.png" width="24px" height="24px">
	            </button>
            </div>
        </div>
    </div>
    <%}%>
    <%} else { %> <%-- 비회원일떄 --%>
    <div class="headerbox">
        <div class="menubox">
            <a href="main_product.shop">
                <img src="<%=request.getContextPath()%>/images/main logo2.png" id="logoImage" width="200" height="90" alt="로고 사진">
            </a>
            <div class="memberbox">
                <a href="member_join.shop">회원가입</a> | <a href="member_login.shop">로그인</a> <!-- a태그 링크 변경하여 회원가입/로그인 구현 -->
            </div>            
            <div class="navbarbox">
               <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='puppy_product.shop'">사료</button>
                    <div id="dropdown-content">
                        <a href="puppy_product.shop">퍼피</a>
                        <a href="adult_product.shop">어덜트<br>(전연령)</a>
                        <a href="senior_product.shop">시니어</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='gum_product.shop'">간식</button>
                    <div id="dropdown-content">
                        <a href="gum_product.shop">개껌</a>
                        <a href="gansik_product.shop">일반간식</a>
                    </div>
                </div>
                <div id="dropdownbox">
                    <button id="dropbtn" value="강아지 식품" onclick="location='probio_product.shop'">영양제</button>
                    <div id="dropdown-content">
                        <a href="probio_product.shop">유산균</a>
                        <a href="omega3_product.shop">오메가3</a>
                    </div>
                </div>
                <a id="a2" href="cs_notice.shop">고객 센터</a>
                <a id="a3" href="location.shop">찾아오시는 길</a>

            </div>
            <div class="searchbox">
	            <input type="text" id="search" placeholder="검색어를 입력해주세요.">
	            <button type="button" id="searchBtn" alt="검색 버튼" onclick="openPopup_company_introduce();">
	                <img src="<%=request.getContextPath()%>/images/searchIcon.png" width="24px" height="24px">
	            </button>
            </div>
            
        </div>
    </div>
    <%} %>
    <script type="text/javascript">
        // 클릭 이벤트 핸들러
        $("#topBtn").click(function(e){
            e.stopPropagation();
            $("html, body").animate({scrollTop : 0}, 'fast', 'easeOutCubic');
        });

        // 스크롤 이벤트 핸들러
        $(window).scroll(function(){
            if($(window).scrollTop()==0) {
                $("#topBtn").css("opacity", 0); // TOP 버튼 숨기기
            } else {
                $("#topBtn").css("opacity", 1); // TOP 버튼 나타내기
            }
        });
        
        // 회사소개 클릭시 새창 열기
        function openPopup_company_introduce() {
            var page_width = '800';
            var page_height = '600';
        
            // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
            var page_left = Math.ceil((window.screen.width - page_width)/2);
            var page_top = Math.ceil((window.screen.height - page_height)/2);
    
        window.open("company_introduce.shop", "company_introduce",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
        
        }
    </script>
</body>
</html>