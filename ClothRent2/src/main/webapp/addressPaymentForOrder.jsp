<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forword(1) !=null)
	window.history.forword(1); </script>
</head>
<body>
<br>
<table>
<thead>
<%
String email=session.getAttribute("email").toString();
int total=0;
int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total)from cart where email= '"+email+"' and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
	

%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Status</th>
           <!--<th scope="col">Quantity</th>  --> 
<!--             <th scope="col">Sub Total</th> -->
          </tr>
        </thead>
        <tbody>
          <%
      ResultSet rs = st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
      while(rs.next())
      {
      %>
          <tr>
          <% sno=sno+1;%>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %> </td>
            </tr>
         <%} 
         ResultSet rs2= st.executeQuery("select *from users where email='"+email+"'");
         while(rs2.next())
         {
         %>
        </tbody>
      </table>
      
<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter Address</h3>
<input  class="input-style" type="text" name="address" value="<%=rs2.getString(5)%>" placeholder="Enter address " required>
 </div>

<div class="right-div">
<h3>Enter city</h3>
<input  class="input-style" type="text" name="city" value="<%=rs2.getString(6)%>" placeholder="Enter City " required>
</div> 

<div class="left-div">
<h3>Enter State</h3>
<input  class="input-style" type="text" name="state" value="<%=rs2.getString(7)%>" placeholder="Enter State " required>
</div>

<div class="right-div">
<h3>Enter country</h3>
<input  class="input-style" type="text" name="country" value="<%=rs2.getString(8)%>" placeholder="Enter Country " required>
</div>

<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
<select class="input-style" name="paymentMethod">
<option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
<option value="Online Payment">Online Payment</option>
</select>
 
</div>

<div class="right-div">
<h3>Pay online on this clothrental@pay.com</h3>
<input  class="input-style" type="text" name="transactionId" placeholder="Enter Transaction ID " >
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<input  class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Enter Mobile Number " required>

</div>
<div class="right-div">
<button class="button" type="submit">Proceed to Generate Bill & Save<i class='far fa-arrow-alt-circle-right'></i></button>
</div>
</form>
<%
         }     
}
catch(Exception e)
{
	System.out.println(e);
	}
%>

      <br>
      <br>
      <br>

</body>
</html>