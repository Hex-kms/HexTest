<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여지급 &amp;관리</title>
</head>
<body>

<h2> 급여 내역 테스트</h2>
<table border="1">
<tr>
<th>사원번호</th>
<th>사원명</th>
<th>기본급</th>
<th>식대</th>
<th>국민연금</th>
<th>건강보험</th>
</tr>
<tr>
<c:forEach var="payroll" items="${payrollList }">
<tr>
<td>${payroll.member.m_number }</td>
<td>${payroll.member.m_name }</td>
<td>${payroll.payroll.basePay }</td>
<td>${payroll.payroll.mealPay }</td>
<td>${payroll.deduciton.nationalPension }</td>
<td>${payroll.deduciton.healthInsurance }</td>
</tr>
</c:forEach>
</table>

</body>
</html>