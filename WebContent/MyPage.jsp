<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pr.user.model.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 마이페이지</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/MyPage.css">
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userid") != null){
		userID = (String) session.getAttribute("userid");
	}
	
	UserDto userDto = null;
	if(session.getAttribute("userDto") != null){
		userDto = (UserDto) session.getAttribute("userDto");
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

        <div class="main">
            <div class="mypage">
                <!-- 리스트영역 -->
                <div class="mypageList" >
                    <!-- 아이콘 및 이름 영역 -->
                    <div class="myInfo">
                        <!-- 아이콘 -->
                        <div class="userIcon">
                            <img src="images/user.png" alt="">
                        </div>
                        <!-- 사용자이름 -->
                        <div class="userName">
                            <p><%=userID%> 님 안녕하세요</p>
                        </div>
                    </div>

                    <!-- 선택영역 -->
                    <div class="select">
                        <!-- 정보제목 -->
                        <div class="infoTitle">
                            <h2>정보</h2>
                        </div>
                        <!-- 정보선택 -->
                        <div class="tab">
                            <button class="tablinks" onclick="openMyInfo(event, 'personalInfo')">개인정보</button>
                            <button class="tablinks" onclick="openMyInfo(event, 'unregister')" >회원탈퇴</button>
                        </div>

                        <!-- 자료제목 -->
                        <div class="dataTitle">
                            <h2>자료</h2>
                        </div>
                            <!-- 자료선택 -->
                        <div class="tab">
                            <button class="tablinks" onclick="openMyInfo(event, 'mydata')" id="defaultOpen">저장된 자료</button>
                        </div>
                    </div>
                </div>

                <!-- 정보영역 -->
                <div class="mypageInfo">
                    <div id="personalInfo" class="tabcontent">
                        <h1>개인정보</h1>
                        <!-- 안내 -->
                        <div class="text">
                            <p>· 개인정보 보호를 위해 회원님의 비밀번호를 한번 더 입력해 주세요.</p>
                        </div>
                        <!-- 비밀번호 입력영역 -->
                        <form class="pwBox" method="post" action="/PR_Project/myPrivacy.do">
                            <p>비밀번호</p>
                            <div class="pwInput">
                                <input type="password" name="userpw">
                            </div>
                            <div class="btn-verify">
                            	<input type="submit" value="확인" >
                        	</div>
                        </form>
                    </div>
                    <form id="unregister" class="tabcontent">
                        <h1>회원탈퇴</h1>
                        <!-- 안내 -->
                        <div class="text">
                            <p>· 회원탈퇴를 하시면 귀하의 <strong>회원정보와 서비스 기록들이 모두 삭제</strong> 됩니다.</p>
                        </div>
                        <!-- 탈퇴사유 -->
                        <div class="unregisterReasonTitle">
                            <h2>탈퇴사유</h2>
                        </div>
                        <!-- 탈퇴사유 리스트 -->
                        <div class="unregisterReasonList">
                            <ul>
                                <li>
                                    <input type="radio" id="leaveReason1">
                                    <label for="leaveReason1">원하는 기능이 없어서</label>
                                </li>
                                <li>
                                    <input type="radio" id="leaveReason2">
                                    <label for="leaveReason2">사이트 속도가 느려서</label>
                                </li>
                                <li>
                                    <input type="radio" id="leaveReason3">
                                    <label for="leaveReason3">사용하기가 불편해서</label>
                                </li>
                                <li>
                                    <input type="radio" id="leaveReason4">
                                    <label for="leaveReason4">서비스를 더 이상 이용할 필요가 없어서</label>
                                </li>
                                <li>
                                    <input type="radio" id="leaveReason5">
                                    <label for="leaveReason5">기타</label>
                                </li>
                            </ul>
                        </div>
                        <!-- 탈퇴정보 -->
                        <div class="unregisterUserInfoTitle">
                            <h2>탈퇴정보</h2>
                        </div>
                        <div class="unregisterUserInfo">
                            <table>
                                <tr>
                                    <td class="t1">아이디</td>
                                    <td class="t2"><%=userID %></td>
                                </tr>
                                <tr>
                                    <td class="t1">비밀번호</td>
                                    <td class="t2"><input type="password"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="btn-leave">
                            <input type="submit" value="탈퇴하기">
                        </div>
                    </form>

                    <div id="mydata" class="tabcontent">
                        <h1>저장된 자료</h1>
                        <!-- 안내 -->
                        <div class="text">
                            <p>· 저장된 자료는 최대 5개까지 보관 가능합니다.</p>
                        </div>
                        <!-- 백테스트 자료 -->
                        <div class="backtestDataTitle" >
                            <h2>백테스트 자료</h2>
                        </div>
                        <div class="backtestData">
                            <table>
                                <tr>
                                    <th class="th1">번호</th>
                                    <th class="th2">제목</th>
                                    <th class="th3">저장한 날짜</th>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><a href="betatestResult.jsp">백테스트 결과데이터 - (5)</a></td>
                                    <td>2022.12.01</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><a href="betatestResult.jsp">백테스트 결과데이터 - (4)</a></td>
                                    <td>2022.11.30</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="betatestResult.jsp">백테스트 결과데이터 - (3)</a></td>
                                    <td>2022.11.28</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="betatestResult.jsp">백테스트 결과데이터 - (2)</a></td>
                                    <td>2022.11.20</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><a href="betatestResult.jsp">백테스트 결과데이터 - (1)</a></td>
                                    <td>2022.11.11</td>
                                </tr>
                            </table>
                        </div>
                        <!-- 수익성예측자료 -->
                        <div class="PredictionDataTitle" >
                            <h2>수익성 예측 자료</h2>
                        </div>
                        <div class="PredictionData">
                            <table>
                                <tr>
                                    <th class="th1">번호</th>
                                    <th class="th2">제목</th>
                                    <th class="th3">저장한 날짜</th>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><a href="predictionResult.jsp">수익성예측 결과데이터 - (5)</a></td>
                                    <td>2022.12.01</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><a href="predictionResult.jsp">수익성예측 결과데이터 - (4)</a></td>
                                    <td>2022.11.30</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="predictionResult.jsp">수익성예측 결과데이터 - (3)</a></td>
                                    <td>2022.11.28</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="predictionResult.jsp">수익성예측 결과데이터 - (2)</a></td>
                                    <td>2022.11.20</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><a href="predictionResult.jsp">수익성예측 결과데이터 - (1)</a></td>
                                    <td>2022.11.11</td>
                                </tr>
                            </table>
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
function openMyInfo(evt, infoName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(infoName).style.display = "block";
    evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function openLeave() {
    alert("탈퇴가 완료되었습니다.")
}

</script>
</body>
</html>