Create database DuanM;

create table LopHoc(
	IDLop nvarchar(15) not null primary key,
	TenLop nvarchar(15) not null
	)
create table ThongTin(
	MaID nvarchar( 15) not null primary key,
	HoTen nvarchar(50) not null,
	IDLop nvarchar(15) FOREIGN KEY REFERENCES LopHoc(IDLop),
	GioiTinh bit,
	NamSinh Date,
	SDT nvarchar(12),
	DiaChi nvarchar(100),
	Avartar nvarchar(150),
)
create table DiemSinhVien(
	ID int IDENTITY(1, 1) not null primary key,
	MaSinhVien nvarchar(15) FOREIGN KEY REFERENCES ThongTin(MaID),
	MonToan float,
	MonAnh float,
	MonVan float,
	MonSu float,
	MonLy float,
	MonHoa float,
	)
create table luuTT(
	ID int IDENTITY(1, 1) not null primary key,
	Tendangnhap nvarchar(15) not null  FOREIGN KEY REFERENCES  ThongTin(MaID),
	)
create table PhanHoi(
	ID int IDENTITY(1, 1) not null primary key,
	MaID nvarchar(15)  not null FOREIGN KEY REFERENCES ThongTin(MaID),
	NoiDung nvarchar( 150) ,
	NgayGui date,
	)
create table Account(
	Username nvarchar(15) FOREIGN KEY REFERENCES ThongTin(MaID),
	ID nvarchar(50) not null primary key,
	Pass nvarchar(15) not null,
	Chucvu nvarchar(15) not null ,
	)

	select MaID,HoTen,TenLop,GioiTinh,NamSinh,SDT, DiaChi,Avartar
	from ThongTin join LopHoc on ThongTin.IDLop = LopHoc.IDLop
	WHERE MAID ='ST01'

	select MaID,HoTen,TenLop,GioiTinh as sex,MonToan,MonAnh,MonVan,MonSu,MonLy,MonHoa
	from ThongTin join LopHoc on ThongTin.IDLop = LopHoc.IDLop
	 join DiemSinhVien on ThongTin.MaID = DiemSinhVien.MaSinhVien
	 
	 

	select MaID,HoTen,TenLop,GioiTinh
	from ThongTin join LopHoc on ThongTin.IDLop = LopHoc.IDLop

	select MaID,HoTen,TenLop,GioiTinh
                     from ThongTin join LopHoc on ThongTin.IDLop = LopHoc.IDLop
                     where MaID = 'ST01'

 
