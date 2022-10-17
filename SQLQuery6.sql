insert into Asm3_Consumers(Name,Address,Tel)
values(N'Nguyễn Văn A',N'11 Hoàng mai, Hà nội','08409090');
insert into Asm3_Consumers(Name,Address,Tel)
values(N'Trần Hóa B',N'11 Hoàng mai, Hà nội','08409045');
insert into Asm3_Consumers(Name,Address,Tel)
values(N'Đại Văn C',N'11 Hoàng mai, Hà nội','08409093');

insert into Asm3_Products(Name,Description,Unit,Price)
values(N'Máy Tính T450', N'Máy nhập mới',N'chiếc',1000),
(N'Điện Thoại Nokia5670', N'Điện thoại đang hot',N'chiếc',200),
(N'Máy In Samsung 450', N'Máy in đang ế',N'chiếc',100);

insert into Asm3_Orders(Orderdate,GrandTotal,ConsumerID)
 values ('2022-09-10',1500,1);

  insert into Asm3_Orders(Orderdate,GrandTotal,ConsumerID)
 values ('2022-09-11',2500,2);

   insert into Asm3_Orders(Orderdate,GrandTotal,ConsumerID)
 values ('2022-10-17',2500,3);

 insert into Asm3_ProductOrders(OrderCode,ProductID,Qty,Total)
 values (1,1,1,1000),(1,2,2,400),(1,3,1,100);

  insert into Asm3_ProductOrders(OrderCode,ProductID,Qty,Total)
 values (2,1,1,1000),(2,2,2,400),(2,3,11,1100);

   insert into Asm3_ProductOrders(OrderCode,ProductID,Qty,Total)
 values (3,1,1,1000),(3,2,1,200),(3,3,12,1200);

 -- cau 4:
--liet ke danh sach khach hang da mua o cua hang
select * from Asm3_Consumers;
--liet ke danh sach san pham   cua hang
select * from Asm3_Products;
--liet ke danh sach don hang o cua hang
select * from Asm3_Orders;
--cau 5:viet cau truy van
-- Liệt kê danh sách khách hàng theo thứ thự alphabet.
select * from Asm3_Consumers order by Name asc;
--Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.
select ID,Name from Asm3_Products order by ID desc;
--Liệt kê các sản phẩm mà khách hàng Nguyễn Văn An đã mua.
select ProductID from Asm3_ProductOrders where OrderCode = 1;

-- câu 6. Viết các câu lệnh truy vấn để

-- Số khách hàng đã mua ở cửa hàng.
select   count(ID) as songuoimua from Asm3_Consumers;
-- Số mặt hàng mà cửa hàng bán.
select ProductID,Sum(Qty) as somathang from Asm3_ProductOrders group by ProductID;-- Tổng tiền của từng đơn hàng.select Code as donhang,GrandTotal as tongtien from Asm3_Orders;