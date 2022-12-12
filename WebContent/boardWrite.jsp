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
    <link rel="stylesheet" href="css/boardWrite.css">
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

            
        <div class="board">
            <form class="board_write">
                <div class="board_title">
                    <h1><strong>글쓰기</strong></h1>
                </div>
                <div class="board_write_wrap">
                	<form>
                		<div class="write-wrap">
                        <div class="title">
                            <dl>
                                <dt>제목</dt>
                                <dd><input type="text" name="bbsTitle" placeholder="제목 입력" maxlength="50"></dd>
                            </dl>
                        </div>
                        <div class="cont">
                            <div class="cont-left">
                                <h2>내용</h2>
                            </div>
                            <div class="cont-right">
                            <textarea name="bbsContent" maxlength="1500" placeholder="내용 입력 (1500자 이하)"></textarea>
                            </div>
                        </div>
                    	</div>
                    	<div class="bottom-wrap">
                        	<input type="submit" value="등록">
                        <input type="button" value="취소" onclick="location.href='board.jsp'">
                    	</div>
                	</form>
                </div>
            </form>
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
</body>
</html>