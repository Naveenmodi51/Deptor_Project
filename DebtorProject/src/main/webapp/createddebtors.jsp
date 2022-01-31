<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./deboters.css">
</head>
<body>
 <sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/nanidb"
                           user="root"  password="Naveen@51"/>
 
        <sql:query dataSource="${dbsource}" var="result">
           select debtor_id,debtor_name,transaction_status,transaction_date from debtor_details, natural join transaction_details;

        </sql:query>
    

  <a href="index.jsp"><button type="button" name="button" style="float:right; background-color:red;color:white;">Log Out</button></a>
  <h1>CREATED DEBTORS</h1>
  <table class="styled-table">
    <thead>
        <tr>
            <th>DEBTOR ID</th>
            <th>DEBTOR NAME</th>
            <th>TRANSACTION STATUS</th>
            <th>DATE OF ADDITION/MODIFICATION</th>

        </tr>
    </thead>
    <tbody>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td><c:out value="${row.debtor_id}"/></td>
            <td><c:out value="${row.debtor_name}"/></td>
             <td><c:out value="${row.transaction_status}"/></td>
              <td><c:out value="${row.transaction_date}"/> </td>

        </tr>
        </c:forEach>
    </tbody>
</table>
<a href="Welcome.jsp" id="a1">GO BACK TO WORKSPACE</a>
</body>
</html>
