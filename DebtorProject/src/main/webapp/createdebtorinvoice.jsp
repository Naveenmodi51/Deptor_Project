<!DOCTYPE html>
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
  <a href="index.jsp"><button type="button" name="button" style="float:right; background-color:red;">Log Out</button></a>
<h1 style="text-align:center;">NEW DEBTOR INVOICE</h1>




<h2><b>Debtor Details</b></h2>
<form action="ServletController">
	<label for="name">Debtor Name:</label>
		<input type="text" placeholder="sampledata" name="debtorname" id="dname"><br>

	<label for="debtorid">Debtor Id:</label>
		<input type="text" placeholder="sampledata" name="debtorid" id="debtorid" ><br>

	<label for="address1">Address Line 1:</label>
		<input type="text" placeholder="sampledata" name="debtoradd1" id="add" ><br>

	<label for="address2">Address Line 2:</label>
		<input type="text" placeholder="sampledata" name="debtoradd2" id="add2"><br>

	<label for="faxno">Fax No:</label>
		<input type="text" placeholder="sampledata" name="email" id="faxno"><br>

	<label for="phoneno">Phone No:</label>
		<input type="text" placeholder="sampledata" name="phoneno" id="phoneno" ><br>

	<label for="email">Enter Email:</label>
		<input type="email" placeholder="sampledata" name="email" id="email" >
		
		


<h3><b>Bank Details</b></h3>

	<label for="bankname">Bank Name:</label>
		<input type="text" placeholder="sampledata" name="bankname" id="bankname" ><br>

	<label for="branchname">Branch Name:</label>
		<input type="text" placeholder="sampledata" name="branchname" id="branchname" ><br>

	<label for="IFSC">IFSC Code:</label>
		<input type="text" placeholder="sampledata" name="IFSC" id="IFSC" ><br>

	<label for="accno">Account No:</label>
		<input type="text" placeholder="sampledata" name="accno" id="accno"><br>

	<label for="currency">Currency Type:</label>
		<input type="text" placeholder="sampledata" name="currency" id="currency"><br>

		<button type="button" class="cancel" href="Confirm&Review.html">CANCEL </button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          
          
          <input type="hidden"  name="action" value="add_debtor">
		<input type="submit" value="CONFIRM">
       </form>
		<button type="button" class="edit">CLEAR</button>



</body>
</html>
