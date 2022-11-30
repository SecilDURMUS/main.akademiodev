--1
select * from categories
inner join products
on categories.id=products.category_id;
--2
select * from addresses
inner join countries
on addresses.id=countries.address_id;
--3
select * from countries
inner join cities
on countries.id=cities.country_id;
--4
select * from cities
inner join districts
on cities.id=districts.city_id;
--5
select * from districts
inner join streets
on districts.id=streets.district_id;

---6
select * from addresses
left join countries
on addresses.id=countries.address_id
full outer join  cities
on countries.id=cities.country_id
full outer join  districts
on cities.id=districts.city_id
full outer join  streets
on districts.id=streets.district_id;

--7
select customers.name, customers.surname, products.name from orders 
full outer join order_details on order_details.order_id=orders.id
full outer join customers on orders.customer_id=customers.id
full outer join products on order_details.product_id=products.id

--8
select * from products
inner join product_brand
on products.id=product_brand.product_id
inner join brands
on brands.id=product_brand.brand_id;

--9
select * from products
inner join product_color
on products.id=product_color.product_id
inner join colors
on colors.id=product_color.color_id;

--10
select * from products
inner join product_size
on products.id=product_size.product_id
inner join size
on size.id=product_size.size_id;


--11
select * from orders
inner join customers
on customers.id= orders.customer_id

--12
select customers.name,customers.surname,cargo_companies.name AS cargo_name from customers
inner join orders
on customers.id= orders.customer_id
inner join cargo_companies
on orders.cargo_company_id= cargo_companies.id

--13
select * from  orders o 
inner join order_details od
on o.id= od.order_id
inner join products p
on od.product_id= p.id
--14

select * from  products p
left join baskets b
on p.id= b.product_id

--15
select * from  baskets b
right join products p
on b.product_id= p.id

--16
select * from  orders o
inner join cargo_companies cp
on o.cargo_company_id= cp.id
where cargo_details= 'Sipariş yolda'



