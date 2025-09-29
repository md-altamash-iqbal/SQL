

/* CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)
SELECT * FROM persons

ALTER TABLE persons
DROP COLUMN phone
ADD email VARCHAR(50) NOT NULL

DROP TABLE persons */

/* INSERT INTO customers (id, first_name)
VALUES 
	 (8, 'Sam')


	 Select
	 id,
	 first_name,
	 NULL,
	 'Unknown'
	 from customers */

	/*UPDATE customers
	 SET score = 999
	 WHERE score = 0


	 SELECT *
	 FROM customers*/
	 

	 
SELECT *
from orders as o
full join customers as c
on c.id = o.customer_id


select * 
from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is not null