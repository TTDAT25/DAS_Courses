﻿﻿USE MASTER
DROP DATABASE  IF EXISTS DAS 
CREATE DATABASE DAS
USE DAS

CREATE TABLE SINHVIEN(
	ID VARCHAR(10) NOT NULL PRIMARY KEY,
	TEN NVARCHAR(50),
	AVATAR VARCHAR(50),
	EMAIL VARCHAR(50)
);
CREATE TABLE PHANLOAI(
	IDPL VARCHAR(10) PRIMARY KEY,
	TENPL NVARCHAR(50),
);
CREATE TABLE KHOAHOC(
	IDKH VARCHAR(20) NOT NULL PRIMARY KEY,
	TENKHOAHOC NVARCHAR(50),
	MOTA NVARCHAR(512),
	MOTAAI NVARCHAR(256),
	ANHMOTA VARCHAR(50),
	IDPL VARCHAR(10),
	FOREIGN KEY (IDPL) REFERENCES PHANLOAI(IDPL)
);

CREATE TABLE KHOAHOC_SINHVIEN(
	IDSV VARCHAR(10) NOT NULL,
	IDKH VARCHAR(20) NOT NULL,
	PRIMARY KEY(IDSV,IDKH),
	FOREIGN KEY (IDSV) REFERENCES SINHVIEN(ID),
	FOREIGN KEY (IDKH) REFERENCES KHOAHOC(IDKH)
);

CREATE TABLE DIEM(
	IDSV VARCHAR(10),
	IDKH VARCHAR(20),
	DIEM FLOAT,
	PRIMARY KEY (IDSV,IDKH),
	FOREIGN KEY (IDSV) REFERENCES SINHVIEN(ID),
	FOREIGN KEY (IDKH) REFERENCES KHOAHOC(IDKH)
);

CREATE TABLE DANHGIA(
	IDSV VARCHAR(10),
	IDKH VARCHAR(20),
	BINHLUAN NVARCHAR(512),
	SAO FLOAT,
	PRIMARY KEY (IDSV,IDKH),
	FOREIGN KEY (IDSV) REFERENCES SINHVIEN(ID),
	FOREIGN KEY (IDKH) REFERENCES KHOAHOC(IDKH)
);



CREATE TABLE TAINGUYEN(
	IDTN VARCHAR(10) PRIMARY KEY NOT NULL,
	TENTAINGUYEN NVARCHAR(50),
	IDYOUTUBE VARCHAR(50),
	MOTA NVARCHAR(256),
	IDKH VARCHAR(20),
	FOREIGN KEY (IDKH) REFERENCES KHOAHOC(IDKH)
);

CREATE TABLE CAUHOI(
	IDCH VARCHAR(10) PRIMARY KEY NOT NULL,
	CAUHOI NVARCHAR(256),
	DAPANA NVARCHAR(64),
	DAPANB NVARCHAR(64),
	DAPANC NVARCHAR(64),
	DAPAND NVARCHAR(64),
	DAPANDUNG VARCHAR(1),
	IDKH VARCHAR(20),
	FOREIGN KEY (IDKH) REFERENCES KHOAHOC(IDKH)
);