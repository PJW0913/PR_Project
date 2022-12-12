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
    <link rel="stylesheet" href="css/boardView.css">
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
            <div class="board_wrap">
                <div class="board_title">
                    <h1><strong>커뮤니티</strong></h1>
                </div>
                <div class="board_view_wrap">
                    <div class="board_view">
                        <div class="title">
                            글 제목
                        </div>
                        <div class="edit">
                            <a href="boardEdit.jsp">수정</a>
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
                            내가 쓴 글 입니다!!<br>
                            내가 쓴 글 입니다!!<br>
                            내가 쓴 글 입니다!!<br>
                        </div>
                    </div>
                    <div class="bottom-wrap">
                        <a href="board.jsp" class="on">목록</a>
                    </div>
                </div>
                <!-- 댓글입력 -->
                <div class="comment">
                    <div class="comment-input">
                        <textarea cols="30" rows="10" placeholder="댓글을 입력하세요."></textarea>
                    </div>
                    <div class="comment-btn">
                        <input type="submit" value="등록">
                    </div>
                </div>
                <!-- 댓글제목  및 개수-->
                <div class="userComment-title">
                    <h2>댓글 2</h2>
                </div>
                <!-- 댓글보기 -->
                <div class="userCommentBox">
                    <!-- 아이디 -->
                    <div class="userId">
                        <h2>사용자 1</h2>
                    </div>
                    <!-- 댓글내용 -->
                    <div class="userComment">
                        <p>댓글내용입니다.<br>댓글내용입니다.<br>댓글내용입니다.</p>
                    </div>
                    <!-- 작성시간 -->
                    <div class="time">
                        <p>1시간 전</p>
                    </div>
                    <!-- 답글 -->
                    <div class="reComment">
                        <button class="tablinks" onclick="openCity(event, 'rct')">답글</button>
                    </div>
                    <div id="rct" class="tabcontent">
                        <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
                        <h3>답글 달기</h3>
                        <!-- 댓글달리는 영역 -->
                        <div class="reComment-text">
                            <div class="reComment-user">
                                <p>사용자 3</p>
                            </div>
                            <div>
                                <p>답글 내용입니다.</p>
                            </div>
                        </div>
                        <!-- 답글 입력 -->
                        <div>
                            <div class="reComment-input">
                                <textarea cols="30" rows="10" placeholder="댓글을 입력하세요."></textarea>
                                <div class="comment-btn">
                                    <input type="submit" value="등록">
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 댓글보기 -->
                    <div class="userCommentBox">
                        <!-- 아이디 -->
                        <div class="userId">
                            <h2>사용자 2</h2>
                        </div>
                        <!-- 댓글내용 -->
                        <div class="userComment">
                            <p>댓글내용입니다.<br>댓글내용입니다.<br>댓글내용입니다.</p>
                        </div>
                        <!-- 작성시간 -->
                        <div class="time">
                            <p>1시간 전</p>
                        </div>
                        <!-- 답글 -->
                        <div class="reComment">
                            <input type="button" value="답글">
                        </div>
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