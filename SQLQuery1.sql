--创建TravelDB数据库：
Create Database TravelDB;

--使用TravelDB：
Use TravelDB

--创建表：

--航班表
Create table FLIGHTS
(
flightNum varchar(255) primary key,
price int not null,
numSeats int not null,
numAvail int not null,
FromCity varchar(255) not null,
ArivCity varchar(255) not null
)

--旅店表
Create table HOTELS
(
name varchar(255) primary key,
location varchar(255) not null,
price int not null,
numRooms int not null,
numAvail int not null
)

--出租车表：
Create table CARS
(
cartype varchar(255) primary key,
location varchar(255),
price int not null,
numRooms int not null,
numAvail int not null
)

--旅客表
Create table CUSTOMERS
(
custName varchar(255) primary key,
phone varchar(50)
)

--预定表
Create table RESERVATIONS
(
custName varchar(255) not null,
resvType varchar(255) not null,
resvKey varchar(255) not null,
)

Create table RESERVATIONSFLIGHT
(
orderId int primary key,
custName varchar(255) not null foreign key references CUSTOMERS(custName),
resvType varchar(255) not null,
resvKey varchar(255) not null foreign key references FLIGHTS(flightNum),
)

Create table RESERVATIONSHOTEL
(
orderId int primary key,
custName varchar(255) not null foreign key references CUSTOMERS(custName),
resvType varchar(255) not null,
resvKey varchar(255) not null foreign key references HOTELS(name),
)

Create table RESERVATIONSCAR
(
orderId int primary key,
custName varchar(255) not null foreign key references CUSTOMERS(custName),
resvType varchar(255) not null,
resvKey varchar(255) not null foreign key references CARS(cartype),
)


--插入数据：

--给FLIGHTS关系插入数据：
Insert into FLIGHTS values('F001',500,150,150,'北京','青岛')
Insert into FLIGHTS values('F002',600,150,150,'苏州','深圳')
Insert into FLIGHTS values('F003',700,150,150,'苏州','北京')
Insert into FLIGHTS values('F004',800,150,150,'苏州','上海')
Insert into FLIGHTS values('F005',900,150,150,'长沙','重庆')
Insert into FLIGHTS values('F006',1000,150,150,'苏州','长沙')
Insert into FLIGHTS values('F007',300,150,150,'杭州','合肥')
Insert into FLIGHTS values('F008',200,150,150,'上海','杭州')
Insert into FLIGHTS values('F009',400,150,150,'苏州','南京')
Insert into FLIGHTS values('F010',600,150,150,'上海','广州')
Insert into FLIGHTS values('F011',700,150,150,'苏州','天津')
Insert into FLIGHTS values('F012',800,150,150,'广州','昆明')
Insert into FLIGHTS values('F013',900,150,150,'苏州','延安')
Insert into FLIGHTS values('F014',500,150,150,'深圳','宝鸡')
Insert into FLIGHTS values('F015',100,150,150,'苏州','三亚')
Insert into FLIGHTS values('F016',500,150,150,'太原','惠州')
Insert into FLIGHTS values('F017',500,150,150,'苏州','玉林')
Insert into FLIGHTS values('F018',500,150,150,'苏州','济南')
Insert into FLIGHTS values('F019',500,150,150,'青岛','太原')
Insert into FLIGHTS values('F020',500,150,150,'苏州','沈阳')

--给HOTELS关系插入数据：
Insert into HOTELS values('hotel1','location1',500,100,100)
Insert into HOTELS values('hotel2','location2',400,100,100)
Insert into HOTELS values('hotel3','location3',300,100,100)
Insert into HOTELS values('hotel4','location4',200,100,100)
Insert into HOTELS values('hotel5','location5',600,100,100)
Insert into HOTELS values('hotel6','location6',700,100,100)
Insert into HOTELS values('hotel7','location7',800,100,100)
Insert into HOTELS values('hotel8','location8',900,100,100)
Insert into HOTELS values('hotel9','location9',1000,100,100)
Insert into HOTELS values('hotel10','location10',500,100,100)
Insert into HOTELS values('hotel11','location11',300,100,100)
Insert into HOTELS values('hotel12','location12',200,100,100)
Insert into HOTELS values('hotel13','location13',400,100,100)
Insert into HOTELS values('hotel14','location14',600,100,100)
Insert into HOTELS values('hotel15','location15',700,100,100)
Insert into HOTELS values('hotel16','location16',800,100,100)
Insert into HOTELS values('hotel17','location17',10000,100,100)
Insert into HOTELS values('hotel18','location18',500,100,100)
Insert into HOTELS values('hotel19','location19',500,100,100)
Insert into HOTELS values('hotel20','location20',500,100,100)

--给CARS关系插入数据：
Insert into CARS values('Car1','location1',50,50,50)
Insert into CARS values('Car2','location2',30,50,50)
Insert into CARS values('Car3','location3',40,50,50)
Insert into CARS values('Car4','location4',20,50,50)
Insert into CARS values('Car5','location5',10,50,50)
Insert into CARS values('Car6','location6',60,50,50)
Insert into CARS values('Car7','location7',50,50,50)
Insert into CARS values('Car8','location8',70,50,50)
Insert into CARS values('Car9','location9',80,50,50)
Insert into CARS values('Car10','location10',60,50,50)
Insert into CARS values('Car11','location11',90,50,50)
Insert into CARS values('Car12','location12',100,50,50)
Insert into CARS values('Car13','location13',30,50,50)
Insert into CARS values('Car14','location14',120,50,50)
Insert into CARS values('Car15','location15',40,50,50)
Insert into CARS values('Car16','location16',90,50,50)
Insert into CARS values('Car17','location17',50,50,50)
Insert into CARS values('Car18','location18',50,50,50)
Insert into CARS values('Car19','location19',20,50,50)
Insert into CARS values('Car20','location20',80,50,50)


--给CUSTOMERS关系插入数据：
Insert into CUSTOMERS values('zj','17854238285')
Insert into CUSTOMERS values('c1','12854238281')
Insert into CUSTOMERS values('c2','14854238282')
Insert into CUSTOMERS values('c3','16854238283')
Insert into CUSTOMERS values('c4','1854238284')
Insert into CUSTOMERS values('c5','18854238285')
Insert into CUSTOMERS values('c6','19854238286')
Insert into CUSTOMERS values('c7','12854238287')
Insert into CUSTOMERS values('c8','14854238288')
Insert into CUSTOMERS values('c9','14854238289')
Insert into CUSTOMERS values('c10','14854238205')
Insert into CUSTOMERS values('c11','16854238215')
Insert into CUSTOMERS values('c12','16854238225')
Insert into CUSTOMERS values('c13','12854238235')
Insert into CUSTOMERS values('c14','12854238245')
Insert into CUSTOMERS values('c15','12854238255')
Insert into CUSTOMERS values('c16','13854238265')
Insert into CUSTOMERS values('c17','13854238275')
Insert into CUSTOMERS values('c18','17254238285')
Insert into CUSTOMERS values('c19','17354238295')

select * from FLIGHTS
select * from HOTELS
select * from CARS

select * from RESERVATIONSFLIGHT
select * from RESERVATIONSHOTEL
select * from RESERVATIONSCAR
select * from RESERVATIONS