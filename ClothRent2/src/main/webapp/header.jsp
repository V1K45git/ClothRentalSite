<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString();%>
            <center><p style="font-family: Arial, sans-serif; color: #FF9900; font-size: 30px; font-weight: bold; text-shadow: 2px 2px 4px #000000;">Clothing-<span style="color: #000000">-Rentals</span></p></center>
            <h2><a href=""><%out.println("Hello "+email); %> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
           
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" name="search" placeholder="Search">
             <button type="submit"><i class="fa fa-search" ></i></button>
             </form>
             
            </div>
          </div>
           <br>
           <!--table-->
