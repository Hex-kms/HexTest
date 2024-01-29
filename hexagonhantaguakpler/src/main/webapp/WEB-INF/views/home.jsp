<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<table border="1">
<tr>
<th><a href="/test"> 테스트 페이지 </a></th>
<th>&nbsp;&nbsp; ← &nbsp;가고 싶은 페이지를 골라주세요 &nbsp;→ &nbsp;&nbsp; </th>
<th><a href="/pay/access"> 급여입력/관리</a></th>
</tr>
</table>
</body>
</html>
