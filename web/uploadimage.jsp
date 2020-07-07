<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
  background-repeat: no-repeat;
    background-size: cover;
}
.content {
    background: black;
    color: orange;
    width: 50%;
    padding: 20px;
    height: 287px;
    opacity:0.85;
    margin-left: 20%;
    margin-top:16%;
}

#myBtn {
    margin-top: 10px;
    width: 130px;
    height:30px;
    font-size: 18px;
    border: none;
    background: orange;
    color: #fff;
    cursor: pointer;
}
#myBtn:hover {
    background: #ddd;
    color: black;
}
#h
{
  margin-left:33%;
}
#frm
{
  margin-top:90px;
  margin-left:12%;
}

</style>
<meta charset="ISO-8859-1">
</head>
<body >

<div class="content">
  <h1 id="h">Upload Image</h1>
<form  id="frm" method="post" action="product_details_db.jsp"  enctype="multipart/form-data">
<input id="i" type="file" id="img" name="imgupload" multiple >
<button id="myBtn" value="submit" name="insert">Add</button></div>
</form>
</body>
</html>





