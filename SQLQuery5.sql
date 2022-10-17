create table Asm3_Consumers(
ID int primary key identity(1,1),
Name nvarchar(255) not null,
Address nvarchar(100) not null,
Tel varchar(15) not null unique check(Tel like '0%')
);
create table Asm3_Products(
ID int primary key identity(1,1),
Name nvarchar(100) not null unique,
Description ntext,
Unit nvarchar(50) not null check(Unit in (N'chiếc', N'cặp', N'bộ' )),
Price decimal(12,4) not null check(Price >= 0) default 0,
);
create table Asm3_Orders(
Code int primary key identity(1,1),
Orderdate date not null check(Orderdate <= getdate()),
GrandTotal decimal(12,4) not null check(GrandTotal >= 0),
ConsumerID int foreign key references Asm3_Consumers(ID) not null
);

Create table Asm3_ProductOrders(
Qty int not null check(Qty >0),
Total decimal(12,4) not null  check(Total >= 0),
ProductID int foreign key references Asm3_Products(ID) not null,
OrderCode int foreign key references Asm3_Orders(Code) not null
);

