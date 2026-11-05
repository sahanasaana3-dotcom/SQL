
CREATE DATABASE OnlineStore;
USE OnlineStore;

DROP TABLE Customers;

CREATE TABLE Customers(
customer_id int auto_increment primary key,
customer_name varchar(100) NOT NULL,
email varchar(100) unique
);

DROP TABLE Orders;

CREATE TABLE Orders(
order_id int auto_increment primary key,
order_date date NOT NULL,
customer_id int ,
foreign key(customer_id) references Customers(customer_id)
ON delete cascade
);

INSERT INTO Customers(customer_name,email)
VALUES
("sahana","sahana@gmail.com"),
("sanjana","sanjana@gmail.com"),
("Ankitha","ankitha@gmail.com");

INSERT INTO Orders(order_date,customer_id)
VALUES
("2026-09-24",1),
("2026-09-22",1),
("2025-08-21",2),
("2023-04-10",2),
("2022-03-12",3);

SELECT * FROM Customers;
SELECT * FROM Orders;

DELETE FROM Customers WHERE customer_id=101;