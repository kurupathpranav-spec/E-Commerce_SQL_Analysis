create database e_commerce;
use e_commerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1,'Arjun Reddy','Hyderabad','2023-01-10'),
(2,'Neha Sharma','Bangalore','2023-02-15'),
(3,'Rahul Verma','Delhi','2023-03-20'),
(4,'Priya Nair','Kochi','2023-01-25'),
(5,'Amit Singh','Mumbai','2023-04-12'),
(6,'Sneha Iyer','Chennai','2023-05-18'),
(7,'Rohit Kumar','Pune','2023-06-22'),
(8,'Anjali Gupta','Jaipur','2023-07-05'),
(9,'Karan Mehta','Ahmedabad','2023-03-30'),
(10,'Divya Pillai','Trivandrum','2023-02-08'),
(11,'Vikram Rao','Hyderabad','2023-02-10'),
(12,'Pooja Shah','Mumbai','2023-03-11'),
(13,'Nikhil Jain','Delhi','2023-04-01'),
(14,'Meera Menon','Kochi','2023-05-06'),
(15,'Ravi Teja','Hyderabad','2023-06-09'),
(16,'Kavya Reddy','Bangalore','2023-07-12'),
(17,'Suresh Kumar','Chennai','2023-03-18'),
(18,'Manish Gupta','Jaipur','2023-01-29'),
(19,'Ayesha Khan','Mumbai','2023-04-20'),
(20,'Varun Sharma','Delhi','2023-05-22'),
(21,'Harsha','Hyderabad','2023-02-14'),
(22,'Tejas','Pune','2023-03-19'),
(23,'Anu','Chennai','2023-04-23'),
(24,'Deepak','Delhi','2023-05-25'),
(25,'Sanjay','Mumbai','2023-06-27'),
(26,'Lavanya','Hyderabad','2023-07-01'),
(27,'Rakesh','Pune','2023-02-02'),
(28,'Keerthi','Bangalore','2023-03-03'),
(29,'Arvind','Chennai','2023-04-04'),
(30,'Bhavana','Kochi','2023-05-05'),
(31,'Kishore','Delhi','2023-06-06'),
(32,'Naveen','Hyderabad','2023-07-07'),
(33,'Ritu','Mumbai','2023-02-08'),
(34,'Pavan','Pune','2023-03-09'),
(35,'Swathi','Chennai','2023-04-10'),
(36,'Ajay','Delhi','2023-05-11'),
(37,'Snehal','Mumbai','2023-06-12'),
(38,'Raghu','Hyderabad','2023-07-13'),
(39,'Ishita','Bangalore','2023-01-14'),
(40,'Farhan','Delhi','2023-02-15'),
(41,'Girish','Pune','2023-03-16'),
(42,'Komal','Mumbai','2023-04-17'),
(43,'Lokesh','Hyderabad','2023-05-18'),
(44,'Nisha','Chennai','2023-06-19'),
(45,'Omkar','Pune','2023-07-20'),
(46,'Preeti','Delhi','2023-01-21'),
(47,'Rahul','Mumbai','2023-02-22'),
(48,'Siddharth','Hyderabad','2023-03-23'),
(49,'Tanvi','Bangalore','2023-04-24'),
(50,'Yash','Pune','2023-05-25');

INSERT INTO products VALUES
(1,'iPhone 13','Electronics',65000),
(2,'Samsung TV','Electronics',45000),
(3,'Nike Shoes','Fashion',5000),
(4,'Levis Jeans','Fashion',3000),
(5,'Wooden Table','Furniture',8000),
(6,'Office Chair','Furniture',6000),
(7,'HP Laptop','Electronics',55000),
(8,'Boat Earphones','Electronics',1500),
(9,'Adidas T-shirt','Fashion',2000),
(10,'Sofa Set','Furniture',20000),
(11,'Dell Laptop','Electronics',60000),
(12,'Realme Phone','Electronics',15000),
(13,'Puma Shoes','Fashion',4000),
(14,'Dining Table','Furniture',15000),
(15,'Bed','Furniture',18000),
(16,'Smart Watch','Electronics',8000),
(17,'Headphones','Electronics',3000),
(18,'T-shirt','Fashion',1000),
(19,'Wardrobe','Furniture',22000),
(20,'Microwave','Electronics',12000),
(21,'Refrigerator','Electronics',30000),
(22,'Blender','Electronics',4000),
(23,'Jacket','Fashion',3500),
(24,'Saree','Fashion',5000),
(25,'Bookshelf','Furniture',7000),
(26,'Gaming Mouse','Electronics',2000),
(27,'Keyboard','Electronics',2500),
(28,'Sneakers','Fashion',4500),
(29,'Curtains','Furniture',3000),
(30,'TV Stand','Furniture',6000),
(31,'Tablet','Electronics',20000),
(32,'Speaker','Electronics',5000),
(33,'Formal Shirt','Fashion',2500),
(34,'Coffee Table','Furniture',5500),
(35,'Air Conditioner','Electronics',35000),
(36,'Dress','Fashion',4000),
(37,'Shoes','Fashion',3000),
(38,'Lamp','Furniture',1500),
(39,'Router','Electronics',3000),
(40,'Monitor','Electronics',12000),
(41,'Bag','Fashion',2000),
(42,'Watch','Fashion',6000),
(43,'Fan','Electronics',2500),
(44,'Carpet','Furniture',5000),
(45,'Iron','Electronics',2000),
(46,'Mixer','Electronics',3500),
(47,'Sofa Chair','Furniture',9000),
(48,'Cap','Fashion',800),
(49,'Charger','Electronics',1000),
(50,'Power Bank','Electronics',1500);

INSERT INTO orders VALUES
(1,1,2,1,'2023-06-01','UPI'),
(2,3,5,2,'2023-06-02','Credit Card'),
(3,1,1,1,'2023-06-03','Debit Card'),
(4,5,3,3,'2023-06-04','Cash on Delivery'),
(5,4,7,1,'2023-06-05','UPI'),
(6,6,10,1,'2023-06-06','Credit Card'),
(7,7,8,2,'2023-06-07','UPI'),
(8,8,4,1,'2023-06-08','Debit Card'),
(9,2,6,1,'2023-06-09','Cash on Delivery'),
(10,10,9,2,'2023-06-10','UPI'),
(11,11,12,1,'2023-06-11','UPI'),
(12,12,15,2,'2023-06-12','Credit Card'),
(13,13,18,1,'2023-06-13','Debit Card'),
(14,14,20,1,'2023-06-14','UPI'),
(15,15,25,2,'2023-06-15','UPI'),
(16,16,30,1,'2023-06-16','Credit Card'),
(17,17,35,1,'2023-06-17','UPI'),
(18,18,40,1,'2023-06-18','Debit Card'),
(19,19,45,2,'2023-06-19','UPI'),
(20,20,50,1,'2023-06-20','Cash on Delivery'),
(21,21,3,2,'2023-06-21','UPI'),
(22,22,6,1,'2023-06-22','Credit Card'),
(23,23,9,3,'2023-06-23','UPI'),
(24,24,12,1,'2023-06-24','Debit Card'),
(25,25,15,2,'2023-06-25','UPI'),
(26,26,18,1,'2023-06-26','Cash on Delivery'),
(27,27,21,1,'2023-06-27','UPI'),
(28,28,24,2,'2023-06-28','Credit Card'),
(29,29,27,1,'2023-06-29','UPI'),
(30,30,30,1,'2023-06-30','Debit Card'),
(31,31,33,2,'2023-07-01','UPI'),
(32,32,36,1,'2023-07-02','Credit Card'),
(33,33,39,1,'2023-07-03','UPI'),
(34,34,42,2,'2023-07-04','Debit Card'),
(35,35,45,1,'2023-07-05','UPI'),
(36,36,48,3,'2023-07-06','Cash on Delivery'),
(37,37,50,1,'2023-07-07','UPI'),
(38,38,5,2,'2023-07-08','Credit Card'),
(39,39,10,1,'2023-07-09','UPI'),
(40,40,15,1,'2023-07-10','Debit Card'),
(41,41,20,2,'2023-07-11','UPI'),
(42,42,25,1,'2023-07-12','Cash on Delivery'),
(43,43,30,1,'2023-07-13','UPI'),
(44,44,35,2,'2023-07-14','Credit Card'),
(45,45,40,1,'2023-07-15','UPI'),
(46,46,45,1,'2023-07-16','Debit Card'),
(47,47,50,2,'2023-07-17','UPI'),
(48,48,8,1,'2023-07-18','Credit Card'),
(49,49,16,1,'2023-07-19','UPI'),
(50,50,22,2,'2023-07-20','Cash on Delivery');

-- =======================================================================================================================================
-- Sales Performance Analysis
-- =======================================================================================================================================

-- Total Revenue of the Business
select sum(o.quantity * p.price) as total_revenue from
orders o join products p on
o.product_id = p.product_id;

-- Total Orders and Unique Customers
select count(distinct order_id) as total_orders,
	count(distinct customer_id) as total_customers
from orders;

-- Revenue by city
-- Insight: Revenue is concentrated in metro cities like Chennai, Hyderabad, and Bangalore, indicating higher demand in urban regions
select c.city, sum(o.quantity * p.price) as total_revenue
from orders o join products p on 
o.product_id = p.product_id join customers c on
o.customer_id = c.customer_id
group by city
order by total_revenue desc;

-- ======================================================================================================================================
-- Product & Sales Trend Analysis
-- ======================================================================================================================================

-- Top 5 Selling Products
-- Insight: Adidas T-shirt, Bed, and Nike Shoes are the highest-selling products, indicating high demand for clothing and essential household products
select p.product_name, sum(o.quantity) as total_sold
from orders o join products p on
o.product_id = p.product_id
group by p.product_name
order by total_sold desc
limit 5;

-- Revenue by Category
-- Insight: Electronics Category generates the highest revenue contribution
select p.category, sum(o.quantity * p.price) as revenue
from orders o join products p on
o.product_id = p.product_id 
group by p.category;

-- Monthly Sales Trend
-- Insight: Sales peak during specific months indicating seasonal demand patterns
select month(o.order_date) as Month, sum(o.quantity * p.price) as revenue from
orders o join  products p on 
o.product_id = p.product_id
group by month(o.order_date)
order by Month;

-- Preferred Payment Method
-- Insight: UPI is the most preferred  payment method among customers
select payment_method, count(order_id) as total_orders 
from orders group by payment_method;

--  ======================================================================================================================================
--  Customer Behavior & Advanced Analysis
-- =======================================================================================================================================

-- High-Value Customers (Above Average Spending)
-- Insight: A small group of customers spend above average and contribute significantly to revenue
select customer_id, total_spent from (
select o.customer_id, sum(o.quantity * p.price) as total_spent from
orders o join products p on
o.product_id = p.product_id
group by o.customer_id) as customer_totals
where Total_Spent > (select avg(Total_Spent)
from (
select sum(o.quantity * p.price) as total_spent from 
orders o join products p on
o.product_id = p.product_id
group by o.customer_id) as avg_table)
order by customer_id;

-- Running Total Revenue
select order_date, sum(o.quantity * p.price) as Daily_Revenue,
sum(sum(o.quantity * p.price)) over (order by order_date) as Running_Total
from orders o join products p on
o.product_id = p.product_id
group by order_date;

-- Customer Revenue  Ranking
select o.customer_id, sum(o.quantity * p.price) as total_spent,
dense_rank() over (order by sum(o.quantity * p.price) desc) as Customer_rank
from orders o join products p on
o.product_id = p.product_id
group by o.customer_id;

-- High-Spending Customers 
with customer_spending as(
select o.customer_id, sum(o.quantity * p.price) as total_spent
from orders o join products p on
o.product_id = p.product_id 
group by o.customer_id)
select * from customer_spending order by total_spent
desc limit 5;

-- =======================================================================================================================================
-- Data Modelling & Reporting Layer
-- =======================================================================================================================================

create view Sales_Summary as
select c.customer_name, p.category, sum(o.quantity * p.price) as revenue 
from orders o join products p on o.product_id = p.product_id
join customers c on c.customer_id  = o.customer_id
group by c.customer_name, p.category;

select * from sales_Summary;

             
