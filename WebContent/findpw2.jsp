<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 비밀번호찾기</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/findpw2.css">
</head>
<body>
    <div id="container">
    <!-- 헤더(로고 및 로그인, 네비바) -->
        <header>
            <!-- 로고 및 로그인 -->
            <div class="header-box">
                <!-- 로고 -->
                <div class="logo-box">
                    <h1><a href="main.jsp">LOGO</a></h1>
                </div>
                <div class="login-box">
                    <h2><a href="#"></a></h2>
                    <h2><a href="login.jsp">로그인</a></h2>
                </div>
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

        <div class="main">
            <div class="box-find-pw">
                <h1><a href="login.jsp">비밀번호 찾기</a></h1>
                <h4>재설정할 비밀번호를 입력해주세요.</h4>
                <form method="post" action="/PR_Project/changePw.do" class="find-pw">
                    <input type="password" id="userNewPw1" name="userNewPw1" required placeholder="새로운 비밀번호 입력">
                    <input type="password" id="userNewPw2" name="userNewPw2" required placeholder="비밀번호 재입력">
                    <button type="submit" id="confirm_newPw">확인</button>
                </form>
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
   <script type="text/javascript">
      var newPassword1 = document.getElementById('userNewPw1');
      var newPassword2 = document.getElementById('userNewPw2');
//       var confirm_newPassword = document.getElementById('confirm_newPw');
      
      function matchPassword() {
         if(newPassword1.value.length < 6){
            newPassword1.setCustomValidity("6글자 이상 작성하세요");
         }else {
            newPassword1.setCustomValidity("");
         }
         
         if(newPassword1.value != newPassword2.value) {
            newPassword2.setCustomValidity('비밀번호 불일치');
         }else {
            newPassword2.setCustomValidity("");
         }
      }
      
      newPassword1.onchange = matchPassword;
      newPassword2.onkeyup = matchPassword;
   </script>
</body>
</html>