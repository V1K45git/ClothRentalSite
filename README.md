
# Cloth Rental Website Project

Welcome to the Cloth Rental Website project! This web application allows users to rent a wide variety of clothing items for different occasions. Users can browse, rent, and manage their rental orders through this platform.



## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Database Schema](#database-schema)
- [Contributing](#contributing)

## Features

- **User Registration and Authentication**: Users can create accounts and log in securely.
- **Browse Clothing Inventory**: Browse a diverse selection of clothing items categorized by occasion, style, and size.
- **Search**: Search for specific clothing items based on keywords or filters.
- **Rent Clothing**: Add clothing items to your cart, specify rental duration, and complete the rental process.
- **Order Management**: Users can view and manage their rental orders, including viewing rental history and extending rental periods.
- **Admin Panel**: Admin users have access to an admin panel to manage clothing inventory, user accounts, and rental orders.
- **Responsive Design**: The website is responsive and works seamlessly on various devices.

## Technologies Used

- **Frontend**:
  - JSP (JavaServer Pages)
  - HTML/CSS

- **Backend**:
  - Java Servlets
  - JDBC (Java Database Connectivity)
  - MySQL for database management

## Getting Started

To get this Cloth Rental Website project up and running on your local machine, follow these steps:

1. Clone this repository:
   ```bash
   git clone https://github.com/V1k45git/clothrental.git
   ```

2. Set up a MySQL database and create the necessary tables. You can use the provided SQL scripts in the `database` directory to create the schema and initial data.

3. Configure the database connection in the `web/WEB-INF/web.xml` file:

   ```xml
   <context-param>
       <param-name>dbURL</param-name>
       <param-value>jdbc:mysql://localhost:3306/your-database-name</param-value>
   </context-param>
   <context-param>
       <param-name>dbUser</param-name>
       <param-value>your-username</param-value>
   </context-param>
   <context-param>
       <param-name>dbPassword</param-name>
       <param-value>your-password</param-value>
   </context-param>
   ```

4. Deploy the project to a servlet container like Apache Tomcat.

5. Access the application in your web browser at `http://localhost:8080/cloth-rental-website`.

## Usage

- Create an account or log in to an existing account.
- Browse the clothing inventory by occasion, style, or size.
- Search for specific clothing items.
- Add items to your cart and specify the rental duration.
- Complete the rental process by providing necessary information.
- Manage your rental orders, view rental history, and extend rental periods if needed.
- Admin users can log in to the admin panel to manage clothing inventory, user accounts, and rental orders.

## Database Schema

The database schema includes the following tables:

- `users`: Stores user account information.
- `clothing_items`: Contains details about each clothing item.
- `rental_orders`: Tracks rental orders, including rental duration and return dates.
- `cart_items`: Stores items in a user's shopping cart.

You can find the SQL scripts to create these tables and populate initial data in the `database` directory.

## Contributing

Contributions to this project are welcome! If you would like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and test thoroughly.
4. Create a pull request with a detailed description of your changes.


---

Enjoy renting stylish clothing items for your special occasions! 👗👔
