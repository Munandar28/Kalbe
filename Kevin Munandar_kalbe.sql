NOMOR 1
select Marital_status, AVG(Age)
from customer
group by Marital_status;

NOMOR 2
select gender, avg(Age)
from customer
group by gender

NOMOR 3
select max(q), sn
from (
	select StoreName sn, COUNT(Qty) q
	from kalbe.store s 
	left join kalbe.`transaction` t 
	on s.StoreID = t.StoreID
	GROUP by StoreName
)x
group by sn

NOMOR 4
select pn, q
from (
	select Product_name pn, qty q
	from kalbe.product p
	join kalbe.`transaction` t 
	on p.ProductID = t.ProductID 
)x