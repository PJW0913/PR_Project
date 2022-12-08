<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 회원관리(관리자계정)</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/memberManagement.css">
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
            <div class="tab">
                <button class="tablinks" onclick="openMember(event, 'memeberManage')" id="defaultOpen">회원관리</button>
                <button class="tablinks" onclick="openMember(event, 'leaveMember')">탈퇴회원</button>
            </div>
            
            <div id="memeberManage" class="tabcontent">
                <!-- 검색박스 -->
                <div class="memberSearchbox">
                    <div class="memberSearchbox-left">
                        <table>
                            <tr>
                                <td class="td1">회원등급</td>
                                <td class="td2"><input type="checkbox"> 전체</td>
                                <td class="td2"><input type="checkbox"> 일반회원</td>
                                <td class="td2"><input type="checkbox"> VIP회원</td>
                            </tr>
                            <tr>
                                <td class="td1">회원검색</td>
                                <td class="td2">
                                    <select>
                                        <option value="user_name">이름</option>
                                        <option value="user_id">아이디</option>
                                    </select>
                                </td>
                                <td class="td2" colspan="2"><input type="text"> </td>
                            </tr>
                        </table>
                    </div>
                    <div class="memberSearchbox-right">
                        <button class="btnSearchmember">검색</button>
                    </div>
                </div>
                <!-- 회원리스트(표) -->
                <form>
                    <div class="list">
                        <table border="1">
                            <tr>
                                <th class="th1">번호</th>
                                <th class="th2">아이디</th>
                                <th class="th2">회원등급</th>
                                <th class="th2">이름</th>
                                <th class="th2">전화번호</th>
                                <th class="th2">가입날짜</th>
                                <th class="th1">관리</th>
                            </tr>
                            <tr>
                                <td>380</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button onclick="openMemberInfo()">관리</button></td>
                            </tr>
                            <tr>
                                <td>379</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>378</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>377</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>376</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>375</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>374</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>373</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>372</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                            <tr>
                                <td>371</td>
                                <td>aaaaa</td>
                                <td>일반회원</td>
                                <td>이름 1</td>
                                <td>010-0000-0000</td>
                                <td>2022-11-03</td>
                                <td><button>관리</button></td>
                            </tr>
                        </table>
                    </div>
                    <div class="paging"> 
                        <a href="#" class="bt first "><<</a>
                        <a href="#" class="bt prev "><</a>
                        <a href="#" class="num">1</a>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>
                        <a href="#" class="num">4</a>
                        <a href="#" class="num">5</a>
                        <a href="#" class="bt next">></a>
                        <a href="#" class="bt last">>></a>
                    </div>
                </form>
            </div>
            
            <div id="leaveMember" class="tabcontent">
                <!-- 검색박스 -->
                <div class="memberSearchbox">
                    <div class="memberSearchbox-left">
                        <table>
                            <tr>
                                <td class="td1">회원상태</td>
                                <td class="td2"><input type="checkbox"> 전체</td>
                                <td class="td2"><input type="checkbox"> 탈퇴</td>
                                <td class="td2"><input type="checkbox"> 반려</td>
                                <td class="td2"><input type="checkbox"> 미처리</td>
                            </tr>
                            <tr>
                                <td class="td1">회원검색</td>
                                <td class="td2">
                                    <select>
                                        <option value="user_name">이름</option>
                                        <option value="user_id">아이디</option>
                                    </select>
                                </td>
                                <td class="td2" colspan="3"><input type="text"> </td>
                            </tr>
                        </table>
                    </div>
                    <div class="memberSearchbox-right">
                        <button class="btnSearchmember">검색</button>
                    </div>
                </div>
                <!-- 회원리스트(표) -->
                <form>
                    <div class="list">
                        <table border="1">
                            <tr>
                                <th class="th1">번호</th>
                                <th class="th2">아이디</th>
                                <th class="th2">회원등급</th>
                                <th class="th2">이름</th>
                                <th class="th2">전화번호</th>
                                <th class="th2">가입날짜</th>
                                <th class="th1">관리</th>
                            </tr>
                            <tr>
                                <td>50</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button onclick="openMemberUnregister()">보기</button></td>
                            </tr>
                            <tr>
                                <td>49</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button>보기</button></td>
                            </tr>
                            <tr>
                                <td>48</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button>보기</button></td>
                            </tr>
                            <tr class="return">
                                <td>47</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="return">반려</button></td>
                            </tr>
                            <tr class="return">
                                <td>46</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="return">반려</button></td>
                            </tr>
                            <tr class="unregister">
                                <td>45</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="unregister">탈퇴</button></td>
                            </tr>
                            <tr class="unregister">
                                <td>44</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="unregister">탈퇴</button></td>
                            </tr>
                            <tr class="unregister">
                                <td>43</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="unregister">탈퇴</button></td>
                            </tr>
                            <tr class="unregister">
                                <td>42</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="unregister">탈퇴</button></td>
                            </tr>
                            <tr class="unregister">
                                <td>41</td>
                                <td>bbbbb</td>
                                <td>일반회원</td>
                                <td>이름 2</td>
                                <td>010-0000-0000</td>
                                <td>2022-09-13</td>
                                <td><button class="unregister">탈퇴</button></td>
                            </tr>
                        </table>
                    </div>
                    <div class="paging"> 
                        <a href="#" class="bt first "><<</a>
                        <a href="#" class="bt prev "><</a>
                        <a href="#" class="num">1</a>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>
                        <a href="#" class="num">4</a>
                        <a href="#" class="num">5</a>
                        <a href="#" class="bt next">></a>
                        <a href="#" class="bt last">>></a>
                    </div>
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
                    <li><a href="#"><img src="../images/sns-1.png"></a></li>
                    <li><a href="#"><img src="../images/sns-2.png"></a></li>
                </ul>
            </div>
        </footer>
    </div><!--/container-->
<script>
function openMember(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
}
document.getElementById(tabName).style.display = "block";
evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function openMemberInfo() {
        window.open("memberInfoPopup.html", "pop", "width=520, height=720, top= 200, left=700" );
}
function openMemberUnregister() {
        window.open("memberLeavePopup.html", "pop", "width=520, height=720, top= 200, left=700" );
}
</script>
</body>
</html>