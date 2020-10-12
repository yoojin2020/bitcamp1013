<!-- 지시부 -> import -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar, java.util.Scanner" %>
<%@ page import="java.io.InputStream" %>
<%!
	//선언부 : 메소드나 변수를 선언하는 곳이다.
	public String gugudan(int dan){
		String guguDan = "<ul>";
		for(int i=2; i<=9; i++){
			guguDan += "<li>"+ dan +"*"+ i +"="+ (dan*i) +"</li>";
		}
		guguDan += "</ul>";
		return guguDan;
	}
	public int multiple(int a, int b){
		return a*b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{width:200px;height:200px;}
</style>
<script>
	document.write("<h2>JAVAScript</h2>");
</script>
</head>
<body>
<h1>JSP HOME</h1>
<!-- 스크립트릿 -->
<%
	int a = 200;
%>
<!--         /webJSP -->
<img src="<%=request.getContextPath() %>/img/flower2.jpg"/>
<%
	int result = a * 1000;
	// jsp에서 out내장객체
	out.println("<div style='background-color:pink'>result="+result+"</div>");
	
	//오늘날짜
	Calendar now = Calendar.getInstance(); //날짜와 시간
	
	int month = now.get(Calendar.MONTH)+1;
	int day = now.get(Calendar.DAY_OF_MONTH);
	out.println("<h1>오늘은 "+ month +"월 "+ day +"입니다.</h1>");
%>
<hr/>
<%
	//선언부의 메소드 호출
	out.println(gugudan(9));
	out.println("곱="+ multiple(1234, 5678));
	System.out.println("gob="+ multiple(500,400));
%>
</body>
</html>