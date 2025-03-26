create table Church (
Id int primary key identity,
Name nvarchar(300) not null,
Type nvarchar(50) not null,
Adress nvarchar(50) not null,
Quantity_ecclesiastic int not null,
)
create table SpiritualMinister (
Id int primary key identity,
Name nvarchar(150) not null,
Patronymic nvarchar(150) not null,
Last_Name nvarchar(150) not null,
Holy_orders nvarchar(200) not null,
Number nvarchar(15) not null,
IdChurch int,
Foreign key (IdChurch) References Church
)
create table [event] (
Id int primary key identity,
Name nvarchar(300) not null,
Date date not null,
IdChurch int,
IdSpiritualMinister int,
Foreign key (IdSpiritualMinister) References SpiritualMinister,
Foreign key (IdChurch) References Church
)
create table YouthConvention (
Id int primary key identity,
Name nvarchar(300) not null,
Number nvarchar(15) not null,
Age int not null
)