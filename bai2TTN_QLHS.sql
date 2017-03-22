--I. tao bang
 -- taoj bangr bo mon
 create table bomon
 ( ma varchar(10) primary key,
  mahienthi varchar(20) not null,
  ten nvarchar(100) not null,
  gioithieu ntext not null,
  sodienthoai varchar(20) not null,
  diachi nvarchar(200) not null,
  email nvarchar(20) not null,
  dinhhuong ntext not null
 )
 
 -- tao bang hoc ham
 create table hocham
 ( ma varchar(10) primary key,
 ten nvarchar(50) not null,
 tainghiencuu decimal(18,2) not null,
 taigiangday decimal(18,2) not null
 )
 select *from tailieu
 -- toa bang hoc vi
 create table hocvi
 (
  ma varchar(10) primary key,
 ten nvarchar(50) not null,
 tainghiencuu decimal(18,2) not null,
 taigiangday decimal(18,2) not null
 )

 -- tao bang chuc vu
 create table chucvu
 ( ma varchar(10) primary key,
 ten nvarchar(50) not null,
 hesogiamtai nvarchar(50) not null
 )

 -- tao bang chuc vu dang
 create table chucvudang
 (
 ma varchar(10) primary key,
 ten nvarchar(50) not null,
 hesogiamtai nvarchar(50) not null
 )

 -- taoj bang chuc danh ky thuat
 create table chucdanhkythuat
 (
  ma varchar(10) primary key,
 ten nvarchar(50) not null,
 tainghiencuu decimal(18,2) not null,
 taigiangday decimal(18,2) not null
 )

 -- tao bang giao vien
 create table giaovien
 (ma varchar(10) primary key,
 ten nvarchar(50) not null,
 ngaysinh datetime not null,
 gioitinh bit not null,
 email varchar(20) not null,
 dienthoai varchar(11) not null,
 vaitro nvarchar(200) not null,
 anhgiaovien nvarchar(200) not null,
 taikhoan nvarchar(50) not null,
 matkhau nvarchar(50) not null,
 luongcoban bigint not null,
 nhiemvu nvarchar(50) not null,
 hochamma varchar(10),
 hocvima varchar(10),
 chucvuma varchar(10),
 chucdanhkythuatma varchar(10),
 chucvudangma varchar(10),
 bomonma varchar(10),
 constraint KP_giaovien foreign key (hochamma) references hocham(ma),
 constraint KP_giaovien1 foreign key (hocvima) references hocvi(ma),
 constraint PK_giaovien2 foreign key (chucvuma) references chucvu(ma),
 constraint KP_giaovien3 foreign key (chucdanhkythuatma) references chucdanhkythuat(ma),
 constraint KP_giaovien4 foreign key (chucvudangma) references chucvudang(ma),
 constraint KP_giaovien5 foreign key (bomonma) references bomon(ma)
 )
-- tao bang sinhvien
 create table sinhvien
 ( ma varchar(10) primary key,
 ten nvarchar(50) not null,
 ngaysinh datetime not null,
 gioitinh bit not null,
 email nvarchar(50) not null,
 sodienthoai varchar(50) not null,
 dantoc nvarchar(50) not null,
 doituong nvarchar(50) not null,
 nganhma varchar(50) not null,
 lophocphanma varchar(10),
 nhomma varchar(10),
 constraint KP_sinhvien foreign key (lophocphanma) references lophocphan(ma),

 )
 -- tao bang lop hoc phan
 create table lophocphan
 ( ma varchar(10) primary key,
 tengiaovien nvarchar(50) not null,
 giangduong varchar(10) not null,
 thoigian nvarchar(20) not null,
 siso int not null,
 monma varchar(10),
 giaovienma varchar(10),
 constraint KP_lophocphan foreign key (monma) references monhoc(ma),
 constraint KP_lophocphan1 foreign key (giaovienma) references giaovien(ma)
 )


-- tao bang mon hoc
 create table monhoc
 ( ma varchar(10) primary key,
 mahienthi nvarchar(20) not null,
 ten nvarchar(200) not null,
 tinchi int not null,
 sotiet int not null,
 gioithieu ntext not null,
 hinhthucthi nvarchar(30) not null
 )


 --II. them du lieu vao bang

  --1. them du lieu vao bang bo mon
  select *from bomon
  begin transaction 
  begin try
  insert into bomon values('BM001','',N'Công nghệ thông tin',N'Công nghệ thông tin','0123456789',N'236 hoàng quốc việt Hà Nội','fitmta@gmail.com',N'Công nghệ thông tin')
  insert into bomon values('BM002','',N'Công nghệ hóa học',N'Công nghệ hóa học','0123456789',N'236 hoàng quốc việt Hà Nội','fitmta@gmail.com',N'Công nghệ thông tin')
  insert into bomon values('BM003','',N'Điện tử viễn thông',N'Điện tử viễn thông','0123456789',N'236 hoàng quốc việt Hà Nội','fitmta@gmail.com',N'Công nghệ thông tin')
  insert into bomon values('BM004','',N'Điện tử y sinh',N'Điện tử y sinh','0123456789',N'236 hoàng quốc việt Hà Nội','fitmta@gmail.com',N'Công nghệ thông tin')
  insert into bomon values('BM005','',N'Ô tô',N'Ô tô','0123456789',N'236 hoàng quốc việt Hà Nội','fitmta@gmail.com',N'Công nghệ thông tin')
 
  commit
  print 'thành công'
  end try
  begin catch
  rollback
  print 'loi'
  end catch
 

  --2. them du lieu cho học hàm
  select *from hocham
  begin transaction 
  begin try
  insert into hocham values('HH001',N'',N'1.1',N'1.1')
  insert into hocham values('HH002',N'',N'1.1',N'1.1')
  insert into hocham values('HH003',N'',N'1.1',N'1.1')
  insert into hocham values('HH004',N'',N'1.1',N'1.1')
  insert into hocham values('',N'',N'1.1',N'1.1')
  commit 
  print 'thanh cong'
  end try
  begin catch
  rollback
  print'loi'
  end catch

  --3.them du lieu cho hoc vi
  select *from hocvi
  begin transaction 
  begin try
  insert into hocvi values('HV001',N'',N'1.1',N'1.1')
  insert into hocvi values('HV002',N'',N'1.1',N'1.1')
  insert into hocvi values('HV003',N'',N'1.1',N'1.2')
  insert into hocvi values('HV004',N'',N'1.2',N'2.1')
  insert into hocvi values('',N'',N'1.2',N'4.3')
  commit 
  print 'thanh cong'
  end try
  begin catch 
  rollback
  print 'loi'
  end catch

  --4. thêm dữ liệu vào bảng chức vụ
  select *from chucvu
  begin transaction 
  begin try
  insert into chucvu values('CVU001',N'',N'')
  insert into chucvu values('CVU002',N'',N'')
  insert into chucvu values('CVU003',N'',N'')
  insert into chucvu values('CVU004',N'',N'')
  insert into chucvu values('',N'',N'')
  commit
  print 'thành công'
  end try
  begin catch
  rollback
  print 'loi'
  end catch

  --5. thêm dữ liệu vào bảng chức danh kỹ thuật
  select *from chucdanhkythuat
  begin transaction
  begin try
  insert into chucdanhkythuat values('CDKT001',N'',N'1.1',N'1.1')
  insert into chucdanhkythuat values('CDKT002',N'',N'1.1',N'1.2')
  insert into chucdanhkythuat values('CDKT003',N'',N'1.1',N'1.3')
  insert into chucdanhkythuat values('CDKT004',N'',N'1.3',N'1.3')
  insert into chucdanhkythuat values('',N'',N'1.2',N'1.4')
  commit 
  print 'thành công'
  end try
  begin catch
  rollback
  print 'loi'
  end catch

  --6. thêm dữ liệu vào dữ liệu bảng chức vụ đảng
  select *from chucvudang
  begin transaction 
  begin try
  insert into chucvudang values('CVD001',N'',N'')
  insert into chucvudang values('CVD002',N'',N'')
  insert into chucvudang values('CVD003',N'',N'')
  insert into chucvudang values('CVD004',N'',N'')
  insert into chucvudang values('',N'',N'')
  commit
  print ' thành công'
  end try
  begin catch
  rollback
  print ' lỗi '
  end catch

  --7. thêm dữ liệu vào bảng giáo viên
  select *from giaovien
  begin transaction 
  begin try
  insert into giaovien 
       values
           ('GV001','Bùi Thu Lâm','08/12/1970',1,'Lam.bui@mta.edu.vn','01274567891',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'','BM001')
		 insert into giaovien 
       values   ('GV002','Ngô Thành Long','11/03/1977',1,'ngotlong@gmail.com','01271594862',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'','BM002')
		 insert into giaovien 
       values   ('GV003','Tống Minh Đức','06/25/1965',1,'tmduc08@Gmail.com','01277891575',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'','BM003')
		 insert into giaovien 
       values   ('GV004','Trần Nguyên Ngọc','1/15/1980',1,'','01271983576',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'','BM003')
		  insert into giaovien 
       values  ('GV005','Hoa Tất Thắng','6/9/1969',1,'hoatatng@gmail.com','012768427',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'',N'','BM004')
		   commit 
		   print 'thành công'
 end try
 begin catch
 rollback
 print 'lỗi'
 end catch

 --8. thêm dữ liệu vào bảng lớp học phần
 select *from lophocphan
 begin transaction
 begin try 
 insert into lophocphan
 values ('000101', 'Nguyễn Văn A', 'H9201','T4(1-3)',50,'MMT','GV001'),
		('000102',N'Nguyễn Văn A', 'H9201','T4(4-6)',50,'TRR','GV001'),
		('000201', 'Nguyễn Văn A', 'H9301','T2(1-3)',50,'MMT','GV001'),
		('000301', 'Vũ Văn C', 'H9401','T2(10-12)',50,'TCD','GV003'),
		('000401', 'Lưu Ngọc A', 'H9401','T2(4-6)',50,'LTCB','GV002'),
		('000402', 'Lưu Ngọc A', 'H9601','T5(7-9)',50,'TCD','GV001')

commit
print ' thành công'
end try
begin catch
rollback
print ' lỗi'
end catch

--9.thêm dữ liệu vào môn học
select *from monhoc
begin transaction 
   begin try
      insert into monhoc values('LTCB',1,N'lập trình cơ bản','3','45','CUng cấp những kiến thức cơ bản về C','vấn đáp')
							 ,('LTHDT',1,N'lập trình hướng đối tượng','3','45','CUng cấp những kiến thức cơ bản về C','vấn đáp')
							,('TRR',1,N'toán rời rạc','3','45','CUng cấp những kiến thức cơ bản về C','vấn đáp')
							,('TCD',1,N'toán chuyên đề','3','45','CUng cấp những kiến thức cơ bản về C','vấn đáp')
							 ,('MMT',1,N'mạng máy tính','3','45','CUng cấp những kiến thức cơ bản về C','vấn đáp')
    commit 
	print ' thành công'
	end try
	begin catch
	rollback 
	print ' lỗi'
	end catch
	
	-- 12. thêm dữ liệu vào bảng sinh viên
	select *from BAITAPLON.dbo.sinhvien
	begin transaction
	  begin try
	    insert into sinhvien values ('14150934','Nguyễn Văn A','1-6-1996','0','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0001'),
									('14153934','Nguyễn Văn A','1-6-1996','1','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0002'),
									('14150234','Nguyễn Văn A','1-6-1996','0','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0001'),
									('14150964','Nguyễn Văn A','1-6-1996','1','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0003'),
									('14150944','Nguyễn Văn A','1-6-1996','0','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0001'),
									('14150936','Nguyễn Văn A','1-6-1996','1','lightmoon@gmail.com','01626126614',N'kinh','sinhvien',N'','000101','N0004')
	  commit
	  print ' thành công '
	  end try
	  begin catch
	  rollback
	  print ' lỗi '
	  end catch
