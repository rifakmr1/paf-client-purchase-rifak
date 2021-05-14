<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.Payment" %>
    
    <%
    //insert record--------
    
    if (request.getParameter("cardNo") != null)
    {
    Payment itemObj = new Payment();
    String stsMsg = itemObj.insertItem(request.getParameter("userName"),
    request.getParameter("userMobile"),
    request.getParameter("cardNo"),
    request.getParameter("amount"));
    session.setAttribute("statusMsg", stsMsg);
    } 
    
    //delete record -------------
    if (request.getParameter("paymentID") != null)
	 {
	 Payment del = new Payment();
	 String stsMsg = del.deleteItem(request.getParameter("paymentID"));
	 session.setAttribute("statusMsg", stsMsg);
	 } 
    
    if (request.getParameter("paymentID") != null)
 	 {
 	 Payment update = new Payment();
	 String stsMsg = update.updateItem(
	 request.getParameter("paymentID"),
	 request.getParameter("userName"),
 	 request.getParameter("userMobile"),
     request.getParameter("cardNo"),
     request.getParameter("amount"));
 	 session.setAttribute("statusMsg", stsMsg);
 	 } 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Payment Management</h1>
<form method="post" action="add.jsp">
 User Name: <input name="userName" type="text"><br><br>
 User Mobile: <input name="userMobile" type="text"><br><br>
 Card No: <input name="cardNo" type="text"><br><br>
 Amount: <input name="amount" type="text"><br><br>
 <input name="btnSubmit" type="submit" value="Save"><br><br>
 
 <%
 out.print(session.getAttribute("statusMsg"));
%>
 
 <br><br>
 
 <%

 Payment read = new Payment();
 out.print(read.readItems());
%>

</form>
</body>
</html>