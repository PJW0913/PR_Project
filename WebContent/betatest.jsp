<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 백테스트</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/betatest.css">
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
            <!-- 옵션 영역 -->
            <form class="option">
                <!-- 옵션박스1 -->
                <div class="option-box1">
                    <!-- 옵션1제목 -->
                    <div class="box1-title">
                        <p>종목 선택</p>
                    </div>
                    <!-- 종목선택체크박스 -->
                    <div class="stock-select">
                        <table>
                            <tr>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> LG에너지솔루션</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> SK이노베이션</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 삼성SDI</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 삼진엘앤디</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 씨아이에스</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 앨앤에프</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 에코프로비엠</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 엠플러스</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 에이에프더블유</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 유니테크노</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 일진머티리얼즈</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 코스모신소재</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 코스모화학</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 코원테크</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 포스코케미칼</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 피엔티</td>
                                <td><input type="checkbox" name="stock" onclick="getCheckedCnt()"> 후성</td>
                                <!-- <td><input type="checkbox"></td> -->
                            </tr>
                        </table>
                    </div>
                </div>

                <!-- 옵션박스2-->
                <div class="option-box2">
                    <!-- 옵션2제목 -->
                    <div class="box2-title">
                        <p>금액 설정</p>
                    </div>
                    <!-- 초기투자금액 설정  박스-->
                    <div class="investmoney">
                        <!-- 초기투자금액 제목 -->
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
                            <input type="text" placeholder="수수료 입력하세요"><h2>%</h2>
                        </div>
                    </div>
                </div>

                <!-- 옵션박스3-->
                <div class="option-box3">
                    <!-- 옵션3제목 -->
                    <div class="box3-title">
                        <p>리밸런싱 설정</p>
                    </div>
                    <!-- 기간 및 종목수 박스 -->
                    <div class="period_stock">
                        <!-- 초기투자금액 제목 -->
                        <div class="period-title">
                            <p>기간</p>
                        </div>
                        <div class="period-input">
                            <select class="period-inputbox">
                                <option value="0">월별</option>
                                <option value="1">분기별</option>
                                <option value="2">반기별</option>
                                <option value="3">매년</option>
                            </select>
                        </div>
                        <!-- 종목수 제목 -->
                        <div class="stock-title" >
                            <p>선택한 종목 수</p>
                        </div>
                        <div class="stock-input">
                            <div id="Count">
                            </div>
                            <h2>개</h2>
                        </div>
                    </div>
                </div>

                <!-- 옵션박스4-->
                <div class="option-box4">
                    <!-- 옵션4제목 -->
                    <div class="box4-title">
                        <p>기간 설정</p>
                    </div>
                    <!-- 초기투자금액 설정  박스-->
                    <div class="start_end">
                        <div class="a">
                            <!-- 초기투자금액 제목 -->
                            <div class="startend-title">
                                <p>시작일 설정</p>
                            </div>
                            <div class="startend-input">
                                <input type="date">
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
                    <!-- <input type="submit" value="확인" onclick="location.href='../betatest_RESULT/index.html'"> -->
                    <input type="button" value="확인" onclick="location.href='betatestResult.html'">
                    <input type="reset" value="취소">
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
                    <li><a href="#"><img src="../images/sns-1.png"></a></li>
                    <li><a href="#"><img src="../images/sns-2.png"></a></li>
                </ul>
            </div>
        </footer>
    </div><!--/container-->
    
<script>
    // 로그인팝업
    function openLogin() {
    document.getElementById("myForm").style.display = "block";
    }
    function closeLogin() {
    document.getElementById("myForm").style.display = "none";
    }

    // 종목수 세기
    function getCheckedCnt()  {
  // 선택된 목록 가져오기
  const query = 'input[name="stock"]:checked';
  const selectedElements = 
      document.querySelectorAll(query);
  
  // 선택된 목록의 갯수 세기
  const selectedElementsCnt =
        selectedElements.length;
  
  // 출력
  document.getElementById('Count').innerText
    = selectedElementsCnt;
}
</script>
</body>
</html>