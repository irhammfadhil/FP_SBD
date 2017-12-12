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
 lv_id		CHAR(5) NOT NULL,
 id_pengajar	CHAR(5) NOT NULL,
 pk_nama	VARCHAR(100),
 pk_deskripsi	VARCHAR(300),
 pk_tarif	INTEGER,
 pk_tglmulai	DATE,
 pk_tglselesai	DATE,
 constraint fk_3 foreign key (id_pengajar) references pengajar(id_pengajar),
 --constraint fk_4 foreign key (cb_id) references cabang(cb_id),
 constraint fk_5 foreign key (lv_id) references level_table(lv_id)
);

CREATE TABLE detil_kursus(
 no_siswa	CHAR(5) NOT NULL primary key,
 id_pk char(5) not null,
 nilai integer,
 status_tes	VARCHAR(10) not null,
 constraint fk_1 foreign key(no_siswa) references siswa(no_siswa),
 constraint fk_2 foreign key (id_pk) references paket_kursus(id_pk)
);

alter table paket_kursus
add cb_id char(15);
ALTER TABLE paket_kursus
ADD constraint fk_4 foreign key (cb_id) references cabang(cb_id);
alter table detil_kursus modify nilai float;

INSERT INTO SISWA values ('S0001','Rizka','Jl. Pondok Maritim II no 3','081234789269','pelkenuk@gmail.com');
INSERT INTO SISWA values ('S0002','Shafira','Jl. Dinoyo Sekolahan gg 1','081198000287','wagoonlife@gmail.com');
INSERT INTO siswa VALUES ('S0003','Nafiar','Jl. Keputih Perintis 5','085253718192','nafiar_dedek@hotmail.com');
INSERT INTO siswa VALUES ('S0004','Rafiar','Jl. Keputih Perintis 5','088265319210','rafiar_kakak@hotmail.com');
INSERT INTO siswa VALUES ('S0005','Nafia','Jl. Raya Mulyosari 24','08562383719','naf_iya@yahoo.co.id');
INSERT INTO siswa VALUES ('S0006','Cynthia','Jl. Ciputra 219','081673176883','cynd3@mhs.if.its.ac.id');
INSERT INTO siswa VALUES ('S0007','Subhan','Jl. Manyar Selatan 21b','081515580376','sabhuncolek@yahoo.com');
INSERT INTO siswa VALUES ('S0008','Brama','Jl. Ciputra 219','08289372989','bramski@mhs.if.its.ac.id');
