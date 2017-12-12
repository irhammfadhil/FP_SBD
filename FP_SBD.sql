CREATE TABLE siswa(
 no_siswa	CHAR(5) NOT NULL PRIMARY KEY,
 s_nama		VARCHAR(150),
 s_alamat 	VARCHAR(150),
 s_telp		VARCHAR(15),
 s_email	VARCHAR(100)
);

CREATE TABLE pengajar(
 id_pengajar char(5) NOT NULL PRIMARY KEY,
 p_nama		VARCHAR(100),
 p_alamat	VARCHAR(150),
 p_telp		VARCHAR(15),
 p_email	VARCHAR(50)
);

CREATE TABLE level_table(
 lv_id		CHAR(5) NOT NULL PRIMARY KEY,
 lv_nama	VARCHAR(100),
 lv_deskripsi	VARCHAR(300)
);

create table cabang (
    cb_id char(15) not null primary key,
    cb_nama varchar(100),
    cb_alamat varchar(100),
    cb_email varchar(100)
);

CREATE TABLE paket_kursus(
 id_pk		CHAR(5) NOT NULL PRIMARY KEY,
 cb_id char(15),
 lv_id		CHAR(5) NOT NULL,
 id_pengajar	CHAR(5) NOT NULL,
 pk_nama	VARCHAR(100),
 pk_deskripsi	VARCHAR(300),
 pk_tarif	INTEGER,
 pk_tglmulai	DATE,
 pk_tglselesai	DATE,
 constraint fk_3 foreign key (id_pengajar) references pengajar(id_pengajar),
 constraint fk_4 foreign key (cb_id) references cabang(cb_id),
 constraint fk_5 foreign key (lv_id) references level_table(lv_id)
);

CREATE TABLE detil_kursus(
 id_pk char(5) not null,
 no_siswa	CHAR(5) NOT NULL,
 status_tes	VARCHAR(10) not null,
 nilai float,
 constraint fk_1 foreign key(no_siswa) references siswa(no_siswa),
 constraint fk_2 foreign key (id_pk) references paket_kursus(id_pk)
);


INSERT INTO SISWA values ('S0001','Rizka','Jl. Pondok Maritim II no 3','081234789269','pelkenuk@gmail.com');
INSERT INTO SISWA values ('S0002','Shafira','Jl. Dinoyo Sekolahan gg 1','081198000287','wagoonlife@gmail.com');
INSERT INTO siswa VALUES ('S0003','Nafiar','Jl. Keputih Perintis 5','085253718192','nafiar_dedek@hotmail.com');
INSERT INTO siswa VALUES ('S0004','Rafiar','Jl. Keputih Perintis 5','088265319210','rafiar_kakak@hotmail.com');
INSERT INTO siswa VALUES ('S0005','Nafia','Jl. Raya Mulyosari 24','08562383719','naf_iya@yahoo.co.id');
INSERT INTO siswa VALUES ('S0006','Cynthia','Jl. Ciputra 219','081673176883','cynd3@mhs.if.its.ac.id');
INSERT INTO siswa VALUES ('S0007','Subhan','Jl. Manyar Selatan 21b','081515580376','sabhuncolek@yahoo.com');
INSERT INTO siswa VALUES ('S0008','Brama','Jl. Ciputra 219','08289372989','bramski@mhs.if.its.ac.id');

INSERT INTO pengajar VALUES ('P0001','Hari Sudirman','Perumdos blok U-9','081673176883','sudirman38@gmail.com');
INSERT INTO pengajar VALUES ('P0002','Sugeng','Jl. Kedung doro 21','085739384826','sugenggeng@yahoo.com');
INSERT INTO pengajar VALUES ('P0003','Bondan Hartono','Jl. Achmad Yan 14','088975367131','bondan_ganz@yahoo.com');
INSERT INTO pengajar VALUES ('P0004','Hariyoso','Jl. Banyu Urip 119','081519848921','har_manchester@ymail.com');
INSERT INTO pengajar VALUES ('P0005','Sulastrini','Jl. Siwalan Kerto 99','085649829199','sulastri11@google.com');

INSERT INTO level_table VALUES ('LV001','BEGINNER','Level ini diperuntukkan bagi pemula');
INSERT INTO level_table VALUES ('LV002','INTERMEDIATE','Level ini telah melewati jenjang beginner dengan standar yang telah ditentukan');
INSERT INTO level_table VALUES ('LV003','ADVANCE','Level ini telah melewati jenjang intermediate dengan standar yang telah ditentukan');

insert into Cabang values ('CB01','Kertajaya','Jl Kertajaya 355','kertajaya@efl.id');
insert into Cabang values ('CB02','Rungkut','Jl Rungkut Industri 123','rungkut@efl.id');
insert into Cabang values ('CB03','Manyar','Jl Manyar Kertaadi','manyar@efl.id');

INSERT INTO paket_kursus VALUES ('PK001','CB01','LV001','P0001','Class Basic',NULL,'1000000',to_date('01-08-2017','dd-mm-yyyy'),to_date('01-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK002','CB01','LV001','P0005','Conversation Basic',NULL,'1150000',to_date('01-08-2017','dd-mm-yyyy'),to_date('01-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK003','CB01','LV001','P0004','Writing Basic',NULL,'1200000',to_date('01-08-2017','dd-mm-yyyy'),to_date('01-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK004','CB02','LV002','P0001','Class Mediate',NULL,'2000000',to_date('11-08-2017','dd-mm-yyyy'),to_date('11-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK005','CB02','LV002','P0003','Conversation Mediate',NULL,'2150000',to_date('11-08-2017','dd-mm-yyyy'),to_date('11-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK006','CB02','LV002','P0005','Writing Mediate',NULL,'2200000',to_date('11-08-2017','dd-mm-yyyy'),to_date('11-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK007','CB03','LV003','P0002','Class Pro',NULL,'2500000',to_date('21-08-2017','dd-mm-yyyy'),to_date('21-09-2017','dd-mm-yyyy'));
INSERT INTO paket_kursus VALUES ('PK008','CB03','LV003','P0003','Conversation Pro',NULL,'2800000',to_date('21-08-2017','dd-mm-yyyy'),to_date('21-09-2017','dd-mm-yyyy'));

INSERT INTO detil_kursus VALUES ('PK001','S0001','LULUS',80);
INSERT INTO detil_kursus VALUES ('PK003','S0003','LULUS',80);
INSERT INTO detil_kursus VALUES ('PK007','S0001','GAGAL',60);
INSERT INTO detil_kursus VALUES ('PK005','S0006','LULUS',75);
INSERT INTO detil_kursus VALUES ('PK002','S0008','LULUS',90);
INSERT INTO detil_kursus VALUES ('PK001','S0002','LULUS',90);
INSERT INTO detil_kursus VALUES ('PK004','S0001','LULUS',85);
INSERT INTO detil_kursus VALUES ('PK006','S0004','GAGAL',55);
INSERT INTO detil_kursus VALUES ('PK002','S0007','LULUS',80);
INSERT INTO detil_kursus VALUES ('PK007','S0005','GAGAL',65);
INSERT INTO detil_kursus VALUES ('PK001','S0003','LULUS',100);
INSERT INTO detil_kursus VALUES ('PK004','S0002','LULUS',90);

--Soal no 1--
select s.no_siswa,s.s_nama,s.s_alamat,s.S_TELP
from siswa s
where s.s_nama='Shafira';

--Soal no 2--
select p.pk_tglmulai,c.CB_NAMA,l.lv_nama,j.P_NAMA,p.PK_NAMA
from cabang c, paket_kursus p, pengajar j, detil_kursus d, LEVEL_TABLE l
where d.no_siswa='S0002' and c.cb_id=p.cb_id and l.LV_ID=p.lv_id and j.ID_PENGAJAR=p.ID_PENGAJAR AND D.ID_PK=P.ID_PK;
