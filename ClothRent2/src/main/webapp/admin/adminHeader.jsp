<%@ page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <% String email=session.getAttribute("email").toString();%>
            <center><h2 style="font-family: Arial, sans-serif; color: #FF9900; font-size: 30px; font-weight: bold; text-shadow: 2px 2px 4px #000000;">Clothing-<span style="color: #000000">-Rentals</span></h2></center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products and Edit Products <i class='fab fa-elementor'></i></a>
          
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
           
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
