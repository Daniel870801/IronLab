use lab_mysql;
#1. Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner.
update sales
set store_id="Miami"
where store_id="Mimia";
select * from sales;
#2. Also, you received the email addresses of the three customers
update customers
set email = "ppicasso@gmail.com"
where name ="PabloPic";
select * from customers;
update customers
set email = "lincoln@us.gov"
where name ="AbrahamL";
update customers
set email = "hello@napoleon.me"
where name ="NapoléonB";
select * from customers;
#3. In addition, you also find a duplicated car entry for VIN DAM41UDN3CHU2WVF6. You want to delete car ID #4 from the database. Create delete.sql to perform the deletion.
delete from cars
where car_id = 4;
select * from cars;