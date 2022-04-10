CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro number(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Paleta de maquillaje','Ideal para tus ojos','1499',1,'p2.jpg')
,('Paleta de maquillaje','Importada de EE.UU','1200',1,'p3.jpg')
,('Paleta de maquillaje','100% de colores originales, llevate un labial regalo','800',1,'p1.jpg')
,('Paleta de maquillaje','Hermoso color','200',1,'p1.jpg')
,('Paleta de maquillaje','Ideal para tus ojos','1499',1,'p2.jpg')
,('Paleta de maquillaje','Importada de EE.UU','1200',1,'p3.jpg')
,('Paleta de maquillaje','100% de colores originales, llevate un labial regalo','800',1,'p1.jpg')
,('Paleta de maquillaje','nueva gama','200',1,'p4.jpg')
,('paleta de mquillaje','Hermosos tonos','155',1,'p5.png')
,('paleta de mquillaje','Neuvos tonos brillantes','100',1,'p6.jpg')
,('Labiales','Caja de gama completa 6 piezas','1000',1,'l6r.jpg')
,('Labiale de bissu','Hermoso color','200',1,'l1.jpg')
,('Labiale de bissu','nueva gama','200',1,'l2.jpg')
,('Labiale','Hermosos tonos','155',1,'l3.jpg')
,('Labiale','Hermosos tonos','100',1,'l4.jpg')
,('Labiale','Hermosos tonos','155',1,'l3.jpg')
,('Labiale','Hermosos tonos','100',1,'l4.jpg')
,('Labiale','Hermosos tonos','155',1,'l3.jpg')
,('Labiale','Hermosos tonos','100',1,'l4.jpg');


CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','Demo','correo@example.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);