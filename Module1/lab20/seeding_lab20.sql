use lab_mysql;
INSERT INTO cars VALUES(0,'3K096I98581DHSNUP', 'Volkswagen','Tiguan', '2019', 'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',	2019 ,'Red'),
(2,'RKXVNNIHLVVZOUB4M' ,'Ford', 'Fusion', 2018 ,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota', 'RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019 ,	'Gray');
insert into customers values (10001,"PabloPic",34636176382,"-","Paseo de la Chopera, 14", "Madrid","Madrid","Spa",28045),
(20001,"AbrahamL", 13059077086,"-","120 SW 8th St","Miami","Florida","Usa",33130),
(30001,"NapoléonB",33179754000,"-","40 Rue du Colisée"," Paris","Île-de-France","Fra",75008);
insert into sales (STAFF_ID, Name, Store_ID)
values (00001, "Petey Cruiser", "Madrid"),(00002, "Anna Sthesia", "Barcelona"),(00003,"Paul Molive","Berlin"),(00004, "Gail Forcewind","Paris"),(00005, "Paige Turner","Mimia"),(00006, "Bob Frapples", "Mexico City"),(00007, "Walter Melon", "Amsterdam"),(00008, "Shonda Leer", "São Paulo");
insert into invoices (invoice_id, inv_date, car_id, cust_id, sales_name)
values ("852399038", "2018-08-22", 0, 1, 3), ("731166526", "2018-12-31", 3, 0, 5), ("271135104","2019-01-22", 2, 2, 7);

select * from cars;
select * from sales;
select * from customers;
select * from invoices;