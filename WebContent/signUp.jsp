<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 회원가입</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/signUp.css">
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

        <div class="main">
                <!-- 상자 -->
                <div class="box-signup">
                    <h1>회원가입</h1>
                    <!-- 회원가입 폼 -->
                    <form action="">
                        <!-- 이름 -->
                        <label for="userName">이름</label>
                        <input type="text" id="userName" required>
                        <!-- 비밀번호 -->
                        <label for="userpw">비밀번호</label>
                        <input type="password" id="userid" placeholder="6글자이상" required>
                        <!-- 비밀번호 확인 -->
                        <label for="confirm_password">비밀번호 확인</label>
                        <input type="password" id="confirm_password" required placeholder="6글자이상">
                        <!-- 이메일 -->
                        <label for="userEmail">이메일</label>
                        <input type="email" id="userEmail" required>
                        <!-- 번호 -->
                        <label for="userNumber">핸드폰 번호</label>
                        <input type="tel" id="userNumber" required>
                        <!-- 회원가입 버튼 -->
                        <button type="submit">회원가입</button>
                    </form>
                    <!-- 로그인화면으로 -->
                    <p class="p1">이미 계정이 있으신가요?<a href="login.html">로그인화면</a></p>
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
                    <li><a href="#"><img src="../images/sns-1.png"></a></li>
                    <li><a href="#"><img src="../images/sns-2.png"></a></li>
                </ul>
            </div>
        </footer>
    </div><!--/container-->
</body>
</html>