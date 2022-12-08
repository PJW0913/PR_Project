<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 게시판</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/board.css">
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
                    <!-- 공지사항 -->
                    <div class="board_list">
                        <h1>공지사항</h1>
                        <!-- 머리부분 -->
                        <div class="board_list_head">
                            <div class="num">번호</div>
                            <div class="tit">제목</div>
                            <div class="writer">작성자</div>
                            <div class="date">작성일</div>
                            <div class="view">조회</div>
                        </div>
                        <!-- 내용부분 -->
                        <div class="board_list_body">
                            <div class="item">
                                <div class="num">1</div>
                                <div class="tit"><a href="boardViewNotice.html">공지사항내용입니다.</a></div>
                                <div class="writer">관리자</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">2</div>
                                <div class="tit"><a href="#">공지사항내용입니다.</a></div>
                                <div class="writer">관리자</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">3</div>
                                <div class="tit"><a href="#">공지사항내용입니다.</a></div>
                                <div class="writer">관리자</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">4</div>
                                <div class="tit"><a href="#">공지사항내용입니다.</a></div>
                                <div class="writer">관리자</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">5</div>
                                <div class="tit"><a href="#">공지사항내용입니다.</a></div>
                                <div class="writer">관리자</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                        </div>
                        <div class="paging">
                            <a href="#" class="bt first "><<</a>
                            <a href="#" class="bt prev "><</a>
                            <a href="#" class="num on">1</a>
                            <a href="#" class="num">2</a>
                            <a href="#" class="num">3</a>
                            <a href="#" class="num">4</a>
                            <a href="#" class="num">5</a>
                            <a href="#" class="bt next">></a>
                            <a href="#" class="bt last">>></a>
                            <a href="boardWriteNotice.html" class="bt write">글쓰기</a>
                        </div>
                    </div>
                    <!-- /공지사항  -->

                    <!-- 문의사항 -->
                    <div class="board_list">
                        <h1>커뮤니티</h1>
                        <!-- 머리부분 -->
                        <div class="board_list_head">
                            <div class="num">번호</div>
                            <div class="tit">제목</div>
                            <div class="writer">작성자</div>
                            <div class="date">작성일</div>
                            <div class="view">조회</div>
                        </div>
                        <!-- 내용부분 -->
                        <div class="board_list_body">
                            <div class="item">
                                <div class="num">1</div>
                                <div class="tit"><a href="boardView.html">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 1</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">2</div>
                                <div class="tit"><a href="boardView.html">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 2</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">3</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 3</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">4</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 4</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">5</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 5</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">6</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 6</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">7</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 7</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">8</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 8</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">9</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 9</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
                            <div class="item">
                                <div class="num">10</div>
                                <div class="tit"><a href="#">게시글 제목입니다.</a></div>
                                <div class="writer">사용자 10</div>
                                <div class="date">2019-11-20</div>
                                <div class="view">111</div>
                            </div>
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
                            <a href="boardWrite.html" class="bt write">글쓰기</a>
                        </div>
                    </div>
                    <!-- /문의사항  -->
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