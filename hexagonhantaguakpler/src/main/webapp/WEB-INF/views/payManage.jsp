<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여지급 &amp;관리</title>
</head>
<body>

<a href="/">홈페이지</a>

<h1>돈 주세요!!</h1>

<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.temporal.TemporalAdjusters" %>
<%
    LocalDate lastMonth = LocalDate.now().minusMonths(1);
    int lastMonthYear = lastMonth.getYear();
    int lastMonthValue = lastMonth.getMonthValue();
%>
<form action="/pay/access" method="GET">
    <!-- 연도 선택 -->
    <select name="imputedYear">
        <% for(int year = java.time.Year.now().getValue(); year >= java.time.Year.now().getValue() - 20; year--) { %>
            <option value="<%= year %>" <%= year == lastMonthYear ? "selected" : "" %>><%= year %>년</option>
        <% } %>
    </select>

    <!-- 월 선택 -->
    <select name="imputedMonth">
        <% for(int month = 1; month <= 12; month++) { %>
            <option value="<%= month %>" <%= month == lastMonthValue ? "selected" : "" %>><%= month %>월</option>
        <% } %>
    </select>

    <!-- 급여 차수 선택 -->
    <select name="payOrder">
        <% for(int order = 1; order <= 10; order++) { %>
            <option value="<%= order %>" <%= order == 1 ? "selected" : "" %>>급여-<%= String.format("%02d", order) %>차</option>
        <% } %>
    </select>

    <input type="submit" value="Submit">
</form>

<h2> 급여 내역 테스트</h2>
<table border="1">
<tr>
<th>구분</th>
<th>성명</th>
<th>부서</th>
<th>지급총액</th>
<th>공제총액</th>
<th>실지급액</th>
</tr>
<c:forEach var="ready" items="${readyList }">
<tr>
<td>${ready.member.m_type }</td>
<td>${ready.member.m_name }</td>
<td>${ready.member.m_class }</td>
<td>${ready.totalPay }</td>
<td>${ready.totalDeduction }</td>
<td>${ready.actualPay }</td>
</tr>
</c:forEach>
</table>

<h2>급여항목</h2>
<table border="1">
<tr>
<th>성명</th>
<th>급여번호</th>
<th>기본급</th>
<th>식비(비)</th>
<th>보육수당</th>
<th>직책수당</th>
<th>차량유지비(비)</th>
<th>근속수당</th>
<th>당직수당</th>
<th>상여금</th>
<th>휴일수당</th>
</tr>
<c:forEach var="ready" items="${readyList }">
<tr>
<td>${ready.member.m_name }</td>
<td>${ready.payroll.payNo }</td>
<td>${ready.payroll.basePay }</td>
<td>${ready.payroll.mealPay }</td>
<td>${ready.payroll.childPay }</td>
<td>${ready.payroll.jobPay }</td>
<td>${ready.payroll.carPay }</td>
<td>${ready.payroll.tenurePay }</td>
<td>${ready.payroll.dutyPay }</td>
<td>${ready.payroll.bonusPay }</td>
<td>${ready.payroll.holidayPay }</td>
</tr>
</c:forEach>
</table>




<h2>공제항목</h2>
<!-- parsedEtc 데이터를 표시하는 테이블 -->
<table border="1">
    <tr>
        <th>사원명</th>
        <th>국민연금</th>
        <th>건강보험</th>
        <th>장기요양보험</th>
        <th>고용보험</th>
        <th>소득세</th>
        <th>주민세</th>
        <!-- etcList의 키들을 헤더로 추가 -->
        <c:forEach var="key" items="${etcList}">
            <th>${key}</th>
        </c:forEach>
    </tr>
    <!-- readyList의 각 항목에 대한 데이터 행 생성 -->
    <c:forEach var="ready" items="${readyList}">
    <tr>
        <td>${ready.member.m_name}</td>
        <td>${ready.deduction.nationalPension}</td>
        <td>${ready.deduction.healthInsurance}</td>
        <td>${ready.deduction.longInsurance}</td>
        <td>${ready.deduction.empInsurance}</td>
        <td>${ready.deduction.incomeTax}</td>
        <td>${ready.deduction.residentTax}</td>
        <!-- etcList의 키에 대응하는 값을 표시, 없으면 '0' 표시 -->
        <c:forEach var="key" items="${etcList}">
            <c:set var="value" value="0"/>
            <c:forEach var="etc" items="${ready.deduction.parsedEtc}">
                <c:if test="${etc.containsKey(key)}">
                    <c:set var="value" value="${etc[key]}"/>
                </c:if>
            </c:forEach>
            <td>${value}</td>
        </c:forEach>
    </tr>
</c:forEach>
</table>

</body>
</html>