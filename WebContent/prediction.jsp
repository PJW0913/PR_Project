<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 수익성예측</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/prediction.css">
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
            <!-- 포트폴리오 영역 -->
            <div class="portfolio">
                <!-- 종목리스트 영역 -->
                <div class="stockList">
                    <!-- 종목리스트 -->
                    <div class="tab">
                        <div><button class="tablinks" onclick="openstock(event, 'Lgenergysolution')" id="defaultOpen">LG에너지솔루션</button></div>
                        
                        <div><button class="tablinks" onclick="openstock(event, 'SKinnovation')">SK이노베이션</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'samsungsdi')">삼성SDI</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'samjin')">삼진엘앤디</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'CIS')">씨아이에스</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'landf')">앨앤에프</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'AFW')">에이에프더블유</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'ecoprobm')">에코프로비엠</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'mplus')">엠플러스</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'uitekno')">유니테크노</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'iljinm')">일진머티리얼즈</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'cosmoamt')">코스모신소재</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'cosmochem')">코스모화학</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'cowintech')">코윈테크</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'poscochemcical')">포스코케미칼</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'PNT')">피엔티</button></div>
                        <div><button class="tablinks" onclick="openstock(event, 'foosungchem')">후성</button></div>
                    </div><!--/tab-->
                </div>
                <!-- 각 종목 정보 -->
                <div class="stockInfo">
                    <!-- 정보버튼 -->

                    <div id="Lgenergysolution" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>LG에너지솔루션</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="SKinnovation" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>SK이노베이션</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="samsungsdi" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>삼성SDI</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="samjin" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>삼진엘앤디</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="CIS" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>씨아이에스</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="landf" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>앨앤에프</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="AFW" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>에이에프더블유</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="ecoprobm" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>에코프로비엠</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="mplus" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>엠플러스</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="uitekno" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>유니테크노</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="iljinm" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>일진머티리얼즈</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="cosmoamt" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>코스모신소재</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="cosmochem" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>코스모화학</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="cowintech" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>코윈테크</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="poscochemcical" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>포스코케미칼</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="PNT" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>피엔티</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>

                    <div id="foosungchem" class="tabcontent">
                        <!-- 종목제목 -->
                        <div class="stock-title">
                            <h1>후성</h1>
                        </div>
                        <!-- 종합정보제목 -->
                        <div class="integrated-title">
                            <h2>종합정보</h2>
                        </div>
                        <!-- 종합정보출력영역 -->
                        <div class="integrated-info">
                            종합정보내용
                        </div>
                        <!-- 시세제목 -->
                        <div class="marketprice-title">
                            <h2>시세</h2>
                        </div>
                        <!-- 시세정보출력영역 -->
                        <div class="marketprice-info">
                            시세내용
                        </div>
                        <!-- 뉴스공시제목 -->
                        <div class="news_announcements-title">
                            <h2>뉴스·공시</h2>
                        </div>
                        <!-- 뉴스·공시 정보 -->
                        <div class="news_announcements-info">
                            뉴스·공시 내용
                        </div>
                        <!-- 공매도현황 제목 -->
                        <div class="short-title">
                            <h2>공매도 현황</h2>
                        </div>
                        <!-- 공매도현황 -->
                        <div class="short-info">
                            공매도현황 내용
                        </div>
                    </div>
                    
                </div>
                <!-- 수익예측 -->
                <div class="prediction">
                    <!-- 수익예측제목  -->
                    <div class="prediction-title">
                        <h1>수익성 예측</h1>
                    </div>
                    <!-- 옵션설정 제목-->
                    <div class="prediction-option-title">
                        <h2>설정</h2>
                    </div>
                    <!-- 옵션설정 영역 -->
                    <form class="prediction-option-box">
                        <!-- 초기투자금액 제목 -->
                        <div class= option>
                            <div class="investmoney-title">
                                <p>초기투자금액 설정</p>
                            </div>
                            <div class="investmoney-input">
                                <input type="text" placeholder="금액을 입력하세요"> <h2>만원</h2>
                            </div>
                            <!-- 수수료 제목 -->
                            <div class="commission-title" >
                                <p>수수료</p>
                            </div>
                            <div class="commission-input">
                                <input type="text" placeholder="수수료를 입력하세요"><h2>%</h2>
                            </div>
                            <!-- 초기투자금액 설정  박스-->
                            <div class="start_end">
                                <div class="a">
                                    <!-- 초기투자금액 제목 -->
                                    <div class="startend-title">
                                        <p>시작일 설정 (금일고정)</p>
                                    </div>
                                    <div class="startend-input">
                                        <input type="date" id="now_date">
                                    </div>
                                </div>
                                <div class="b">
                                    <!-- 수수료 제목 -->
                                    <div class="startend-title" >
                                        <p>종료일 설정</p>
                                    </div>
                                    <div class="startend-input">
                                        <input type="date">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 설정끝! -->
                        <div class="verify-box">
                            <!-- <input type="submit" value="확인" onclick="location.href='../PREDICTION_RESULT/index.html'"> -->
                            <input type="button" value="결과 확인" onclick="location.href='predictionResult.html'">
                        </div>
                    </form>
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
                    <li><a href="#"><img src="../images/sns-1.png"></a></li>
                    <li><a href="#"><img src="../images/sns-2.png"></a></li>
                </ul>
            </div>
        </footer>
    </div><!--/container-->
    

<script>
    // 종목리스트탭
    function openstock(evt, stockName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(stockName).style.display = "block";
    evt.currentTarget.className += " active";
    }
    document.getElementById("defaultOpen").click();

    // 로그인팝업
    function openLogin() {
    document.getElementById("myForm").style.display = "block";
    }
    function closeLogin() {
    document.getElementById("myForm").style.display = "none";
    }
    document.getElementById('now_date').valueAsDate = new Date();
</script>
</body>
</html>