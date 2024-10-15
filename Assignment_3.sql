-- 1. Create an ‘Orders’ table which comprises of these columns – ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’

create table orders(
	order_id varchar(10),
	order_date date,
	amount float(20),
	customer_id int
);

insert into orders values('20','2021-01-01','80','10'),
						('41','2021-01-31','40','20'),
						('50','2021-02-25','50','30');


-- 2. Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column 

select cd.customer_id,
	Order_id,
	first_name,
	last_name,
	Order_date
from Customer cd inner join
Orders o on cd.customer_id = o.order_id



-- 3. Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column

--Left Join
select
	cd.customer_id,
	Order_id,
	first_name,
	last_name,
	Order_date
from Customer cd left join
Orders o on cd.customer_id = o.customer_id

--Right Join
select cd.customer_id,
	Order_id,
	first_name,
	last_name,
	Order_date
from Customer cd right join
Orders o on cd.customer_id = o.customer_id




4. Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3

update Orders
	set amount = 100 
		where customer_id = 3

select * from Orders
