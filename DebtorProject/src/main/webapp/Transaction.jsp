<!DOCTYPE html>
<%@ page import ="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
<style>
input[type=submit]
{
  width: 300px;
  background-color:tomato;
  color:white;
  padding:7px;
  margin:8px;
 font-size:16px;
}
input[type=reset]
{
  width: 100px;
  background-color:red;
  color:white;
  padding:7px;
  margin:8px;
  font-size:16px;
}
</style>
</head>
<body>

<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
 url="jdbc:mysql://localhost:3306/debtormaintenance" user="root" password="root" />

<%--DATA SOURCE FOR TRANSACTION  TABLE --%>

<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
 url="jdbc:mysql://localhost:3306/nanidb" user="root" password="Naveen@51"/>
 <sql:query var="result" dataSource="${dbsource}">select * from transaction_details where debtor_id=100</sql:query>
<c:forEach var="row" items="${result.rows}">

<center><h1><u>TRANSACTION INFORMATION</u></h1></center>

<center><h2>CONTACT ADMIN FOR APPROVAL</h2></center>


<form>
<label for="transaction Ref">Transaction Reference Number:</label>
	<c:out value="${row.transaction_no}"></c:out><br><br>

	<label for="transdate">Transaction Date and Time:</label>
		<c:out value="${row.transaction_date}"></c:out><br><br>

	<label for="transstatus">Transaction Status:</label>
		<c:out value="${row.transaction_status}"></c:out><br><br>

	<label for="transinfo">Transaction Info:</label>
		<c:out value="${row.transaction_info}"></c:out><br><br>
</c:forEach>
</form>

<center><a href="Welcome.jsp"><input type="submit" value="GO BACK TO WORKSPACE"></a>
<a href="index.jsp"><input type="reset" value="LOGOUT"></a></center>
</body>
</html>
