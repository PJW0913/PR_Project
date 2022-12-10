<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 메인화면</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userid") != null){
		userID = (String) session.getAttribute("userid");
	}
%>
    <div id="container">
    <!-- 헤더(로고 및 로그인, 네비바) -->
        <header>
            <!-- 로고 및 로그인 -->
            <div class="header-box">
                <!-- 로고 -->
                <div class="logo-box">
                    <h1><a href="main.jsp">LOGO</a></h1>
                </div>
                <%
                	if(userID == null) {
                %>
                 <div class="login-box">
                    <h2><a href="#"></a></h2>
                    <h2><a href="login.jsp">로그인</a></h2>
                </div>
                <% 
                	} else {
                %>
                 <div class="login-box">
                    <h2><a href="MyPage.jsp">마이페이지</a></h2>
                    <h2><a href="logoutAction.jsp">로그아웃</a></h2>
                </div>
                <%
                	}
                %>
                <!-- <div class="login-box">
                    <h2><a href="#"></a></h2>
                    <h2><a href="login.jsp">로그인</a></h2>
                </div> -->
            </div><!-- 로고 및 로그인 -->
            <!-- 네비바 -->
            <nav>
                <!-- 네비바 박스 -->
                <div class="nav-bar">
                    <ul>
                        <li><a href="betatest.jsp">베타테스트</a></li>
                        <li><a href="prediction.jsp">수익성예측</a></li>
                        <li><a href="board.jsp">게시판</a></li>
                    </ul>
                </div><!-- 네비바 박스 -->
            </nav><!-- 네비바 -->
        </header><!-- 헤더(로고 및 로그인, 네비바) -->

        <!-- 메인 -->
        <div class="main">
            <!-- 이미지 -->
            <div class="slideshow-container">

                <div class="mySlides fade mainimg1">
                    <div class="numbertext">1 / 2</div>
                    <img>
                    <div class="text-box">
                        <h1>LOGO</h1>
                        <p>서비스 제공 기능에 대한 설명 - 1</p>
                    </div>
                </div>
                
                <div class="mySlides fade mainimg2">
                    <div class="numbertext">2 / 2</div>
                    <img>
                    <div class="text-box">
                        <h1>LOGO</h1>
                        <p>서비스 제공 기능에 대한 설명 - 2</p>
                    </div>
                </div>
                
                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>
                
                </div>
                <br>
                
                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span> 
                    <span class="dot" onclick="currentSlide(2)"></span> 
                </div>








            <!-- 뉴스 및 지수 -->
            <div class="marketInfo">
                <!-- 지수 -->
                <div id="contnets1" class="contents1">
                    <div id = "tabMenu1">
                        <input type="radio" id="tab1" name="tabs1" checked>
                        <label for="tab1">국내증시</label>
                        <input type="radio" id="tab2" name="tabs1">
                        <label for="tab2">미국증시</label>
                        
                        <!-- 국내증시-->
                        <div id="KS" class="tabContent1">
                            <ul>
                                <li><img src="images/kospi.png" alt="코스피지수"></li>
                                <li><img src="images/kosdaq.png" alt="코스닥지수"></li>
                            </ul>
                        </div>
                        <!-- 미국증시-->
                        <div id="US" class="tabContent1">
                            <ul>
                                <li><img src="images/nasdaq.png" alt="나스닥지수"></li>
                                <li><img src="images/DJI.png" alt="다우지수"></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 뉴스 -->
                <div id="contnets2" class="contents2">
                    <div id = "tabMenu2">
                        <input type="radio" id="tab3" name="tabs2" checked>
                        <label for="tab3">국내뉴스</label>
                        <input type="radio" id="tab4" name="tabs2">
                        <label for="tab4">해외뉴스</label>
                        
                        <!-- 국내뉴스-->
                        <div id="KSNews" class="tabContent2">
                            <ul>
                                <a href="#" target="_blank"><li>[마켓뷰] 코스피, 두 달 만에 최고치 경신…외국인 6일 연속 ‘사자’</li></a>
                                <a href="#" target="_blank"><li>[Asia마감] 헷갈리는 '제로 코로나' 소문, 中증시 상승 전환</li></a>
                                <a href="#" target="_blank"><li>[시황종합] 코스피, 0.99% 오른 2371선…환율, 18원↓</li></a>
                                <a href="#" target="_blank"><li>[마감시황]코스피, 달러 약세에 강세…2370선서 마감</li></a>
                                <a href="#" target="_blank"><li>中 제로코로나 변화 기대…장중 환율, 한 달 만에 1400원 하회[외환마감]</li></a>
                                <a href="#" target="_blank"><li>[코스닥 마감]달러 약세·외인 사자 덕 700선 턱걸이</li></a>
                                <a href="#" target="_blank"><li>[Asia오전]'제로 코로나' 불안 中 홀로 약세</li></a>
                                <a href="#" target="_blank"><li>[굿모닝 증시] 美 높은 실업률에 달러화 약세…코스피, 외인 수급 유입 기대감 ↑</li></a>
                            </ul>
                        </div>
                        <!-- 해외뉴스-->
                        <div id="foreignNews" class="tabContent2">
                            <ul>
                                <a href="#" target="_blank"><li>중국 광저우, '귀향' 독려에 철도 역서 노숙 잇달아</li></a>
                                <a href="#" target="_blank"><li>일본 민간 달착륙선 발사 재연기... "로켓 점검 필요"</li></a>
                                <a href="#" target="_blank"><li>상하이 주거단지 입구 막는 방역요원들과 충돌하는 주민들</li></a>
                                <a href="#" target="_blank"><li>美재무부, 트럽프 세금자료 하원에 제출... 6년 다툼 마무리</li></a>
                                <a href="#" target="_blank"><li>중·러 공군기, 합동훈련 사상 첫 상대국 공항에 착륙</li></a>
                                <a href="#" target="_blank"><li>영국 영왕 최측근, 인종차별 발언 후 사임...윌리엄 왕세자 대모(종합)</li></a>
                                <a href="#" target="_blank"><li>중국 누리꾼 장쩌민 애도 물결 "현 체제에 대한 불만 반영"</li></a>
                                <a href="#" target="_blank"><li>'물의 나라' 네덜란드의 아이러니... "가뭄에 지하수 부족"'</li></a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/main-->


        <footer>
            <!-- 로고 -->
            <div class="footerlogo">
                LOGO
            </div>

            <div class="bottomInfo">
                <div class="info">
                    <ul>
                        <li>기획자: 박준우, 유상욱</li>
                        <li>전화:  010-6227-1051 / 010-6692-5539</li>
                        <li>주소: 중앙정보처리학원</li>
                    </ul>
                </div>
            </div>

            <div class="sns">
                <ul>
                    <li><a href="#"><img src="images/sns-1.png"></a></li>
                    <li><a href="#"><img src="images/sns-2.png"></a></li>
                </ul>
            </div>
        </footer>
    </div><!--/container-->

    <script>
        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
        showSlides(slideIndex += n);
        }

        function currentSlide(n) {
        showSlides(slideIndex = n);
        }

        function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) {slideIndex = 1}    
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " active";
        }

    // 로그인팝업
    function openLogin() {
    document.getElementById("myForm").style.display = "block";
    }
    function closeLogin() {
    document.getElementById("myForm").style.display = "none";
    }
    </script>
</body>
</html>