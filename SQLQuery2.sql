//Ã»ÓÃµÄ
select * from FLIGHTS;

select * from HOTELS;

select * from CARS;

select * from CUSTOMERS;

select * from RESERVATIONS;

Insert into RESERVATIONS values('zj',1,'hotel1')

alter table RESERVATIONS drop constraint flights_fk
alter table RESERVATIONS drop constraint hotels_fk
alter table RESERVATIONS drop constraint cars_fk

delete from RESERVATIONS where custName='zj';