Create database DuAnMau;



create table KhoiHoc(
	IDKH int  not null primary key,
	TenKhoi nvarchar(15) not null
	)
create table LopHoc(
	IDLop int not null primary key,
	TenLop nvarchar(15) not null
	)
create table ThongTinSinhVien(
	MaSinhVien nvarchar( 15) not null primary key,
	HoTen nvarchar(50) not null,
	IDLop int FOREIGN KEY REFERENCES LopHoc(IDLop),
	IDKH int FOREIGN KEY REFERENCES KhoiHoc(IDKH),
	GioiTinh bit,
	NamSinh Date,
	SDT int,
	DiaChi nvarchar(100),
	Avartar nvarchar(150),
	)
create table DiemSinhVien(
	ID int IDENTITY(1, 1) not null primary key,
	MaSinhVien nvarchar(15) FOREIGN KEY REFERENCES ThongTinSinhVien(MaSinhVien),
	MonToan float,
	MonAnh float,
	MonVan float,
	MonSu float,
	MonLy float,
	MonHoa float,
	)
create table PhanHoi(
	ID int IDENTITY(1, 1) not null primary key,
	NoiDung nvarchar( 150) ,
	NgayGui date,
	)
create table LoginForm(
	ID nvarchar(15) not null primary key,
	Username nvarchar(15) not null,
	Pass nvarchar(15) not null,
	ChucVu nvarchar(25) not null,
	)