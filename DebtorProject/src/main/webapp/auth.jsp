<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autharization</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <style>
        .main{
            position: relative;
            
            text-align: center;
        }
        .star{
            color: red;
           font-size: 17px; 
            top:-2px;
        }
        .a{
            position: relative;
            left: 100px;
            
        }
        .b{
            position: relative;
            left: 100px;
        }
    </style>
</head>
<body>
 <h3 class="text-center text-uppercase  pb-2 pt-2"><u>DEBTOR<br>AUTHORIZATION/REJECTION</u></h3> <br>
 <section class="main">
     <article style="border: 2px solid black; width: 50%;margin:auto;padding: 10px;">
        <h3><u>DEBTOR DETAILS</u></h3><br>
         <span>DEBTOR NAME<sub class="star">*</sub>: SAMPLE DATA</span><br><br>
        <span>DEBTOR ID<sub class="star">*</sub>: SAMPLE DATA</span><br><br>
        <span>ADDRESS LINE1<sub class="star">*</sub>: SAMPLE DATA</span><br><br>  
        ADDRESS LINE2 : SAMPLE DATA <br><br>
        FAX NUMBER : SAMPLE DATA <br><br>
        PHONE NUMBER: SAMPLE DATA <br><br>
        EMAIL ID : SAMPLE DATA <br> <br> <br> <br>
        <button class="btn btn-dark">CLOSE</button>
        <button class=" a btn btn-success">AUTHORIZE</button>
        <button class=" b btn btn-danger">REJECT</button> <br> <br>
    </article>
 </section>
</body>
</html>