Create database DuAn1Nhom3;

Create table TaiKhoanKH(
	Username nvarchar(15) not null primary key,
	Pass nvarchar(6) not null ,
	)
Create table ThongTinKH(
	MaKH  int IDENTITY(1, 1) not null primary key,
	Username nvarchar(15) not null FOREIGN KEY REFERENCES TaiKhoanKH(Username),
	Hoten nvarchar(25) not null,
	SDT nvarchar(10) not null,
	Email nvarchar(50) ,
	GioiTinh Bit,
	)
Create table PhieuDat(
	MaPD int IDENTITY(1, 1) not null primary key,
	MaKH INT not null FOREIGN KEY REFERENCES ThongTinKH(MaKH),
	DateBook date ,
	SoNguoi int,
	DateXacNhan date,
	GhiChu nvarchar(100),
	TrangThai Bit,
	)
Create Table BanAn(
	MaBan nvarchar(10) not null primary key,
	TenBan nvarchar(10) not null,
	TrangThaiHD nvarchar(15) not null,
	)
Create Table HoaDon(
	MaHD int IDENTITY(1, 1) not null primary key,
	MaPD INT not null FOREIGN KEY REFERENCES PhieuDat(MaPD),
	MaBan  nvarchar(10) not null FOREIGN KEY REFERENCES BanAn(MaBan),
	NgayAn date,
	GhiChu nvarchar(150),
	NguoiTao nvarchar(15),
	)
Create table LoaiMon(
	MaLoaiMon nvarchar(15) not null primary key,
	TenLoaiMon nvarchar(30) not null,
)
Create table MonAn(
	MaMon nvarchar(10) not null primary key,
	MaLoaiMon nvarchar(15) not null FOREIGN KEY REFERENCES LoaiMon(MaLoaiMon),
	TenMon nvarchar(50) not null ,
	GiaTien money,
	Anh nvarchar(50),
	GioiThieu nvarchar(100),
	)
Create table CTHoaDon(
	MaID  int IDENTITY(1, 1) not null primary key,
	MaHD INT  not null FOREIGN KEY REFERENCES HoaDon(MaHD),
	MaMon nvarchar(10)not null FOREIGN KEY REFERENCES MonAn(MaMon),
	SoLuong int ,
	ThanhToan money,
	)

Create Table DanhGia(
	MaID int IDENTITY(1, 1) not null primary key,
	MaKH INT not null FOREIGN KEY REFERENCES ThongTinKH(MaKH),
	SoSao int ,
	)
Create table TaiKhoanNV(
	Username nvarchar(15) not null primary key,
	Pass nvarchar(15) not null,
	Vaitro nvarchar(15),
	)
Create table ThongTinNV(
	MaNV NVARCHAR(15) not null primary key,
	Username nvarchar(15) not null FOREIGN KEY REFERENCES TaiKhoanNV(Username),
	NamSinh Date,
	SDT varchar(10),
	DiaChi nvarchar(50),
	GioiTinh bit,
	Avatar nvarchar(50),
	)
