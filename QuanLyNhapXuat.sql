create database QuanLyNhapXuat;
use QuanLyNhapXuat;

create table NhaCC(
	MaNCC int primary key auto_increment,
    TenNCC varchar(20) not null,
    DiaChi varchar(50),
    SDT varchar(10)
);

create table DonDH(
	SoDH int primary key auto_increment,
    NgayDH datetime not null,
    MaNCC int,
    foreign key (MaNCC) references NhaCC(MaNCC)
);

create table VatTu(
	MaVTu int primary key auto_increment,
    TenVTu varchar(20) not null
);

create table ChiTietDonDatHang(
	SoDH int,
    MaVTu int,
    foreign key (SoDH) references DonDH(SoDH),
    foreign key (MaVTu) references VatTu(MaVTu)
);

create table PhieuXuat(
	SoPX int primary key auto_increment,
    NgayXuat datetime
);
create table ChiTietPhieuXuat(
	SoPX int,
    MaVTu int,
    DGXuat int,
    SLXuat int,
    foreign key (SoPX) references PhieuXuat(SoPX),
    foreign key (MaVTu) references VatTu(MaVTu)
);

create table PhieuNhap(
	SoPN int primary key auto_increment,
    NgayNhap datetime
);

create table ChiTietPhieuNhap(
	MaVTu int,
    SoPN int,
    DGNhap int,
    SLNhap int,
    foreign key (MaVTu) references VatTu(MaVTu),
    foreign key (SoPN) references PhieuNhap(SoPN)
);

