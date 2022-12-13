<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//받아온 변수 설정
	String userID = null;
	if (session.getAttribute("userid") != null){
		userID = (String) session.getAttribute("userid");
	}
	String bbsTitle = null;
	if(request.getAttribute("bbsTitle") != null){
		bbsTitle = (String)request.getAttribute("bbsTitle");
	}
	String bbsContent = null;
	if(request.getAttribute("bbsContent") != null){
		bbsContent = (String)request.getAttribute("bbsContent");
	}
	
	int bws = 0;
	if(request.getAttribute("bws") != null) {
		bws = (int) request.getAttribute("bws");
	}
	
	//비로그인
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	//로그인
	else {
		// 제목, 글내용에 아무것도 안쓸때
		if(bbsTitle == null || bbsContent == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//글쓰기 실패
		if(bws == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//글쓰기 성공
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글을 성공적으로 게시했습니다.')");
			script.println("location.href='board.jsp'");
			script.println("</script>");
		}
		
	}
	
	
%>
</body>
</html>