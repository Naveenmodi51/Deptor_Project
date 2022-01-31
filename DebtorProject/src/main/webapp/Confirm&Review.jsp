<!DOCTYPE html>
<%@ page import ="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review and Confirm</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
*{
box-sizing: border-box;

}
body
{
  text-align: center;
}

input[type=text], input[type=password],input[type=email] {
  width: 25%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

.cancel{
	background-color: red;
	color: white;
	padding: 16px 20px;
	margin:8px 0;
	border:none;
	width:10%

}

.confirm{
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	margin:8px 0;
	border:none;
	width:10%


}

.edit {
	background-color: grey;
	color: white;
	position: right;
	padding: 16px 20px;
	margin:8px 0;
	border:none;
	width:10%

}

</style>
</head>
<body>
<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
   url="jdbc:mysql://localhost:3306/trproject" user="root" password="0000"/>
<%-- 
<sql:query var="result" dataSource="${dbsource}">select * from debtor_details where debtor_id=100</sql:query>--%>

<%--DATA SOURCE FOR DEBTOR DETAILS TABLE --%>
<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
   url="jdbc:mysql://localhost:3306/trproject" user="root" password="0000"/>
<sql:query var="result" dataSource="${dbsource}">select * from debtor_details where debtor_id=100</sql:query>

<%--DATA SOURCE FOR BANK DETAILS TABLE --%>
<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
   url="jdbc:mysql://localhost:3306/trproject" user="root" password="0000"/>
<sql:query var="result1" dataSource="${dbsource}">select * from bank_details where debtor_id=100</sql:query>

  <a href="index.jsp"><button type="button" name="button" style="float:right; background-color:red;">Log Out</button></a>
<h1 style="text-align:center;">REVIEW AND CONFIRM</h1>
<p style="text-align:center">Please review Debtor details. Click on confirm if all details are correct.</p>
<c:forEach var="row" items="${result.rows}">

<form action="ServletController">
<h2><b>Debtor Details</b></h2>

	<label for="name">Debtor Name:</label>
		<c:out value="${row.debtor_name}"></c:out><br><br>

	<label for="debtorid">Debtor Id:</label>
		<c:out value="${row.debtor_id}"></c:out><br><br>

	<label for="address1">Address Line 1:</label>
		<c:out value="${row.addrline1}"></c:out><br><br>

	<label for="address2">Address Line 2:</label>
		<c:out value="${row.addrline2}"></c:out><br><br>

	<label for="faxno">Fax No:</label>
		<c:out value="${row.fax_num}"></c:out><br><br>

	<label for="phoneno">Phone No:</label>
	<c:out value="${row.phone_num}"></c:out><br><br>

	<label for="email">Enter Email:</label>
		<c:out value="${row.email}"></c:out><br><br>
</c:forEach>

<h3><b>Bank Details</b></h3>
<c:forEach var="row" items="${result1.rows}">
	<label for="bankname">Bank Name:</label>
		<c:out value="${row.bank_name}"></c:out><br><br>

	<label for="branchname">Branch Name:</label>
	<c:out value="${row.branch_name}"></c:out><br><br>

	<label for="IFSC">IFSC Code:</label>
		<c:out value="${row.IFSC}"></c:out><br><br>

	<label for="accno">Account No:</label>
		<c:out value="${row.acc_no}"></c:out><br><br>

	<label for="currency">Currency Type:</label>
		<c:out value="${row.acc_currency}"></c:out><br><br>
</c:forEach>
		<button type="button" class="cancel">CANCEL </button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

         <input type="hidden" name="action" value="add_transaction">
		<a href="Transaction.jsp"><button class="confirm" type="submit">CONFIRM</button></a>

		<button type="button" class="edit">EDIT</button>
		</form>



</body>
</html>
