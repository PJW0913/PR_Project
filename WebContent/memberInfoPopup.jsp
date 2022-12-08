<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO | 회원 정보 관리</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/memberInfoPopup.css">
</head>
<body>
    <div class="container">
        <!-- 회원정보영역 -->
        <div class="memberInfo-box">
            <!-- 회원정보 제목 -->
            <div class="memberInfo-title">
                <h2>회원정보</h2>
            </div>
            <!-- 기본정보 테이블 -->
            <div class="memberInfo-table">
                <table border="1">
                    <tr>
                        <td class="td1">아이디</td>
                        <td>사용자 아이디</td>
                    </tr>
                    <tr>
                        <td class="td1">이름</td>
                        <td>사용자 이름</td>
                    </tr>
                    <tr>
                        <td class="td1">비밀번호</td>
                        <td>사용자 비밀번호</td>
                    </tr>
                    <tr>
                        <td class="td1">전화번호</td>
                        <td>사용자 전화번호</td>
                    </tr>
                    <tr>
                        <td class="td1">이메일</td>
                        <td>사용자 이메일</td>
                    </tr>
                </table>
            </div>
            <!-- 등급관리영역 -->
            <div class="memberGrade-box">
                <!-- 등급관리 제목 -->
                <div class="memberGrade-title">
                    <h2>등급관리</h2>
                </div>
                <!-- 등급관리 테이블 -->
                <div class="memberGrade-table">
                    <table border="1">
                        <tr>
                            <td class="td1">회원등급</td>
                            <td>
                                <select>
                                    <option value="member">일반회원</option>
                                    <option value="vipMember">VIP회원</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="td1">비고</td>
                            <td class="td2">최다방문</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- 변경버튼 -->
            <div class="btn-verify">
                <button onclick="updateMsg()">변경</button>
            </div>
        </div>
    </div>

<script>
    function updateMsg() {
        alert("회원정보가 변경되었습니다.")
    }
</script>
</body>
</html>