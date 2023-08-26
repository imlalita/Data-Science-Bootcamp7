-- restaurant Database --

-- 5 tables
-- write 3-5 queries
-- 1x with
-- 1x subquery
-- 1x agreegate function

.open restaurant.db

drop table menu;

create table menu (
  menu_id int unique,
  menu_name text,
  menu_price real
);

insert into menu values 
  (1, 'Fish and Chip', 150),
  (2, 'Pork chop', 130),
  (3, 'BBQ Pork', 140),
  (4, 'Chicken steak', 100),
  (5, 'Lemongrass Chicken steak', 120),
  (6, 'Spaghetti Cabonara', 100),
  (7, 'Spaghetti with tomato sauce', 100);

drop table customers;

CREATE TABLE customers (
  customer_id int unique,
  customer_name Text
);

insert into customers values
  (01, 'Nut'),
  (02, 'Lin'),
  (03, 'Im'),
  (04, 'Muai'),
  (05, 'Khaow');
  
DROP TABLE customer_order;

CREATE TABLE customer_order(
  order_id INT UNIQUE,
  customer_id INT,
  menu_id INT,
  menu_price REAL
);

insert into customer_order values
  (001,01,1,150),
  (002,01,6,100),
  (003,02,7,100),
  (004,03,2,130),
  (005,03,5,120),
  (006,04,1,150),
  (007,04,3,140),
  (008,04,4,100),
  (009,05,3,140),
  (010,05,6,100);

drop table rating;

CREATE table rating (
  customer_id INT UNIQUE,
  score real
);

INSERT INTO rating VALUES 
	(01, 3.5),
  (02, 4.7),
  (03, 3.0),
  (04, 4.5),
  (05, 4.2);

.mode column
.header on

/*Select * from menu;
Select * from customers;
Select * from customer_order;
Select * from rating;*/

select 
  customers.customer_name,
  menu.menu_name,
  menu.menu_price
from customer_order
join menu on customer_order.menu_id = menu.menu_id
join customers on customers.customer_id = customer_order.customer_id
Order by customers.customer_name;

select
  c.customer_name,
  r.score 
from customers c
join rating r on c.customer_id = r.customer_id
order by r.score desc;

select
  c.customer_name,
  SUM(co.menu_price) Total_Price
FROM customer_order co
join customers c on c.customer_id = co.customer_id
Group by c.customer_name
Order by Total_Price desc;

with sub AS (
	select
  c.customer_name,
  SUM(co.menu_price) Total_Price
FROM customer_order co
join customers c on c.customer_id = co.customer_id
Group by c.customer_name
)
Select 
  Max(sub.Total_Price) Max_Total_Price from sub;

SELECT count(*) As Total_customer,
    CASE
    	WHEN r.score >= 4.5 THEN 'Very Good' 
      WHEN r.score >= 3.5 THEN 'Good'
         ELSE 'Not Good'
    END AS comment
FROM rating r
Group by comment
Order by Total_customer desc;
