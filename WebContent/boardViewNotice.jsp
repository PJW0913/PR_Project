<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 게시판</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/boardViewNotice.css">
</head>
<body>
    <div id="container">
    <!-- 헤더(로고 및 로그인, 네비바) -->
        <header>
            <!-- 로고 및 로그인 -->
            <div class="header-box">
                <!-- 로고 -->
                <div class="logo-box">
                    <h1><a href="main.html">LOGO</a></h1>
                </div>
                <div class="login-box">
                    <h2><a href="#"></a></h2>
                    <h2><a href="login.html">로그인</a></h2>
                </div>
            </div><!-- 로고 및 로그인 -->
            <!-- 네비바 -->
            <nav>
                <!-- 네비바 박스 -->
                <div class="nav-bar">
                    <ul>
                        <li><a href="betatest.html">베타테스트</a></li>
                        <li><a href="prediction.html">수익성예측</a></li>
                        <li><a href="board.html">게시판</a></li>
                    </ul>
                </div><!-- 네비바 박스 -->
            </nav><!-- 네비바 -->
        </header><!-- 헤더(로고 및 로그인, 네비바) -->

        <div class="board">
            <div class="board_wrap">
                <div class="board_title">
                    <h1><strong>공지사항</strong></h1>
                </div>
                <div class="board_view_wrap">
                    <div class="board_view">
                        <div class="title">
                            글 제목
                        </div>
                        <div class="edit">
                            <a href="boardEditNotice.html">수정</a>
                        </div>
                        <div class="info">
                            <dl>
                                <dt>번호</dt>
                                <dd>1</dd>
                            </dl>
                            <dl>
                                <dt>작성자</dt>
                                <dd>사용자 1</dd>
                            </dl>
                            <dl>
                                <dt>작성일</dt>
                                <dd>2019-11-20</dd>
                            </dl>
                            <dl>
                                <dt>조회</dt>
                                <dd>111</dd>
                            </dl>
                        </div>
                        <div class="cont">
                            공지사항내용입니다!!!<br>
                            공지사항내용입니다!!!<br>
                            공지사항내용입니다!!!<br>
                        </div>
                    </div>
                    <div class="bottom-wrap">
                        <a href="board.html" class="on">목록</a>
                    </div>
                </div>
            </div>
        </div>

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
function openCity(evt, rct1) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(rct1).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</body>
</html>