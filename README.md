# BookHaven-SQL-Database
A comprehensive SQL database project for managing a bookstore, including inventory, sales, and customer data.

<!-- Improved compatibility of back to top link: See: https://github.com/Don-Withana/BookHaven-SQL-Database/pull/73 -->
<a id="readme-top"></a>
<!--
*** Thanks for checking out the BookHaven-SQL-Database. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a>
    <img src="https://github.com/Don-Withana/BookHaven-SQL-Database/blob/main/SQL-Logo.png" alt="Logo" width="300" height="200">
  </a>

  <h3 align="center">BookHaven BookStore Management SQL</h3>

</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#database-structure">Database Structure</a></li>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#example-queries">Example Queries</a></li>
    <li><a href="#data-dump">Data Dump</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project is a SQL database designed for a bookstore management system named **BookHaven** with complete `ERD` diagrams. It contains various tables that store information about books, customers, orders, items, suppliers, and payments. The project uses MySQL as the database server.

### Built With

SQL: The primary language used for designing and managing the database structure and performing data operations.
<br>
DBMS (Database Management System): Utilized to manage and interact with the SQL database, ensuring data integrity and efficient querying.
<br>
ERD (Entity-Relationship Diagram): Created to visually represent the data model and relationships between entities within the bookstore database.

[![MySQL][MySQL-shield]][MySQL-url]

## Database Structure

The database `bookhaven` consists of the following tables:

- **book**: Stores information about books such as item code, ISBN, title, genre, category, author, publisher, and year of publication.
- **customer**: Stores customer details like customer ID, name, NIC, contact number, email address, and postal address.
- **item**: Contains information on items such as item code, price, and stock level.
- **order_**: Stores order details including order ID, quantity, order date, delivery date, destination address, payment ID, and customer ID.
- **order_item**: Maps the relationship between orders and items.
- **payment**: Records payment information such as payment ID, amount, date, time, and payment type ID.
- **payment_type**: Defines different types of payment methods.
- **stationary**: Stores details about stationary items.
- **stock**: Represents the stock information for items and their suppliers.
- **supplier**: Stores supplier details such as supplier ID and name.

<!-- GETTING STARTED -->
## Installation

To set up the database locally:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/bookhaven-sql-database.git
   cd bookhaven-sql-database
   ```

2. Import the SQL Dump:
Open phpMyAdmin or any `MySQL/MariaDB` client.
Create a new database named bookhaven.
Import the `bookhaven.sql` file included in this repository.

3. Run SQL Scripts:
Ensure that all tables are created and data is loaded by executing the SQL commands in the `bookhaven.sql` file.

## Usage

This database can be used to manage the inventory, customer orders, and payment processing of a bookstore. To interact with the database, you can use SQL queries to retrieve, insert, update, or delete data as required.

## Example Queries

1. Retrieve all books in the store:
   ```bash
   SELECT * FROM book;
   ```
2. Get details of a specific customer:
   ```bash
   SELECT * FROM customer WHERE cust_id = '4001';
   ```
3. Check stock levels of items:
   ```bash
   SELECT * FROM item WHERE stock_level > 0;
   ```

## Data Dump

The SQL dump included in this repository contains initial data for testing and development purposes. It is not intended for use in a production environment.   

<!-- CONTRIBUTING -->
## Contributing

Contributions are welcome! If you have ideas for new features or bug fixes, please fork the repository and submit a pull request. Here’s how:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

This project is licensed under the MIT License. See the `LICENSE.txt` for more details. This means you can freely use, modify, and distribute the code, but please include the license notice in any copies or substantial portions of the software

<!-- CONTACT -->
## Contact

Have questions, suggestions, or just want to chat about the project? Reach out to me!

Name: Himan Withana
<br>
Email: himanhansadh.withana@gmail.com 

## Acknowledgments

Special thanks to the following resources and tools that have been invaluable in the creation and development of this project:

* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Malven's Flexbox Cheatsheet](https://flexbox.malven.co/)
* [Malven's Grid Cheatsheet](https://grid.malven.co/)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [Font Awesome](https://fontawesome.com)
* [React Icons](https://react-icons.github.io/react-icons/search)
* [phpMyAdmin](https://www.phpmyadmin.net/)
* [MySQL](https://www.mysql.com/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Don-Withana/BookHaven-SQL-Database.svg?style=for-the-badge
[contributors-url]: https://github.com/Don-Withana/BookHaven-SQL-Database/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Don-Withana/BookHaven-SQL-Database.svg?style=for-the-badge
[forks-url]: https://github.com/Don-Withana/BookHaven-SQL-Database/network/members
[stars-shield]: https://img.shields.io/github/stars/Don-Withana/BookHaven-SQL-Database.svg?style=for-the-badge
[stars-url]: https://github.com/Don-Withana/BookHaven-SQL-Database/stargazers
[issues-shield]: https://img.shields.io/github/issues/Don-Withana/BookHaven-SQL-Database.svg?style=for-the-badge
[issues-url]: https://github.com/Don-Withana/BookHaven-SQL-Database/issues
[license-shield]: https://img.shields.io/github/license/Don-Withana/BookHaven-SQL-Database.svg?style=for-the-badge
[license-url]: https://github.com/Don-Withana/BookHaven-SQL-Database/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/himanwithana
[MySQL-shield]: https://shields.io/badge/MySQL-lightgrey?logo=mysql&style=plastic&logoColor=white&labelColor=blue
[MySQL-url]: https://www.mysql.com/
