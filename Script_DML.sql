--sv: Dương Quang Minh, mssv: K225480106047
--tao database
CREATE DATABASE QLSV
go
--su dung database QLSV
use QLSV
--tao bang
--bang sinhvien
create table SinhVien
(	masv nchar(13) not null,
	hoten nvarchar(50) null,
	Ngaysinh date null
	)
--bang lop
create table lop
(	maLop nchar(10) not null,
	tenLop nchar(20) null
	)
--bang gcvn
create table GVCN
(	maLop nchar(10) not null,
	magv nchar(10) not null,
	HK nchar(10) not null
	)
--bang lopSV
create table LopSV
(	maLop nchar(10) not null,
	maSV nchar(13) not null,
	ChucVu nvarchar(30) null
	)
--bang giaovien
create table GiaoVien
(	magv nchar(10) not null,
	hoten nvarchar(50) not null,
	NgaySinh date null,
	maBM nchar(10) null
	)
--bang BoMon
create table BoMon
(	MaBM nchar(10) not null,
	tenBM nvarchar(50) null,
	maKhoa nchar(10) null
	)
--bang khoa
create table Khoa
(	maKhoa nchar(10) not null,
	tenKhoa nvarchar(50) null
	)
--bang monhoc
create table MonHoc
(	mamon nchar(10) not null,
	Tenmon nvarchar(50) null,
	STC int not null
	)
--bang LopHP
create table LopHP
(	maLopHP nchar(10) not null,
	TenLopHP nvarchar(50) null,
	HK nchar(10) null,
	maMon nchar(10) null,
	maGV nchar(10) null
	)
--bang DKMH
create table DKMH
(	maLopHP nchar(10) not null,
	maSV nchar(13) not null,
	DiemTP int null,
	DiemThi int null,
	PhamTramThi nchar(10) not null
	)

--tao khoa chinh (primary key)
--bang sinhvien
alter table SinhVien add primary key (masv)
--bang lop
alter table Lop add primary key (maLop)
--bang LopSV
alter table LopSV add primary key (maLop,maSV)
--bang giaovien
alter table GiaoVien add primary key (magv)
--bang BoMon
alter table BoMon add primary key (MaBM)
--bang khoa
alter table Khoa add primary key (maKhoa)
--bang monhoc
alter table MonHoc add primary key (mamon)
--bang gcvn
alter table GVCN add primary key (maLop,magv)
--bang LopHP
alter table LopHP add primary key (maLopHP)
--bang DKMH
alter table DKMH add primary key (maLopHP,maSV)

--tao khoa ngoai (foreign key)
--bang gcvn
alter table GVCN add foreign key (maLop) references Lop(maLop)
alter table GVCN add foreign key (magv) references GiaoVien(magv)
--bang LopSV
alter table LopSV add foreign key (maLop) references Lop(maLop)
alter table LopSV add foreign key (maSV) references SinhVien(masv)
--bang giaovien
alter table GiaoVien add foreign key (maBM) references BoMon (maBM)
--bang BoMon
alter table BoMon add foreign key (maKhoa) references Khoa(maKhoa)
--bang LopHP
alter table LopHP add foreign key (maMon) references MonHoc(mamon)
alter table LopHP add foreign key (maGV) references GiaoVien(magv)
--bang DKMH
alter table DKMH add foreign key (maLopHP) references LopHP(maLopHP)
alter table DKMH add foreign key (maSV) references SinhVien(masv)

--tao check
--bang sinhvien
alter table SinhVien add constraint CK_SinhVien_NgaySinh check (NgaySinh <='2007-01-01')
--bang gcvn
alter table GVCN add constraint CK_GVCN_HK check (HK > (0) AND HK <= (4))
--bang monhoc
alter table MonHoc add constraint CK_MonHoc_STC check (STC > (0) AND STC <= (4))
--bang LopHP
alter table LopHP add constraint CK_LopHP_HK check (HK > (0) AND HK <= (4))
--bang DKMH
alter table DKMH add constraint CK_DKMH_DIEM check (DiemTP >= (0) AND DiemTP <= (10) AND DiemThi >= (0) AND DiemThi <= (10))