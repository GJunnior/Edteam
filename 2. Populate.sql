use ZAPATERIA

--INSERTANDO REGISTROS TABLA MOVIMIENTO
INSERT INTO Movimiento
VALUES	('E','Entrada'),
		('S','Salida')


--INSERTANDO REGISTROS TABLA MONEDA
INSERT INTO Moneda
VALUES	('1','Soles')


--INSERTANDO REGISTROS TABLA PAIS
INSERT INTO Pais
VALUES	('001','Brazil'),
		('002','Colombia'),
		('003','Argentina'),
		('004','Peru'),
		('005','Venezolana'),
		('006','Chile'),
		('007','Ecuador'),
		('008','Bolivia'),
		('009','Paraguay'),
		('010','Uruguay')

--INSERTANDO REGISTROS TABLA CLIENTE
INSERT INTO Cliente
VALUES	('75682217','MARIA CRISTINA VERDU MANZANARES','001'),
		('19150867','JUAN JOSE VILLEGAS CABEZAS','002'),
		('34564217','MARIA SOLEDAD LOPEZ AZNAR','008'),
		('87244341','MARIO MERCADER PUEBLA','006'),
		('66941239','ANA ISABEL BARQUIN HUGUET','001'),
		('84420363','MOHAMED PARRILLA DONCEL','006'),
		('40835062','ELENA PIRES DIAZ','002'),
		('27778579','JUAN MANUEL FALCO CARABALLO','001'),
		('77872039','MARIA JOSE SOLSONA ARTEAGA','008'),
		('61657482','SALVADOR GRANDA ARNAU','002'),
		('17062914','CRISTINA VELEZ MIR','004'),
		('63514899','DIEGO DEVESA PALMA','001'),
		('66041432','FRANCISCA CANTO BUZON','007'),
		('56528038','OSCAR MONTSERRAT CHAVES','003'),
		('56908988','CLAUDIA IVANOV GOMEZ','002'),
		('64896102','SERGIO GARRIDO DOMINGO','004'),
		('17396664','MARIA ANTONIA CONCEPCION PASTOR','001'),
		('64731945','CRISTIAN BORRERO VALLADARES','010'),
		('93553153','SANDRA MALDONADO CONESA','002'),
		('23637416','JOSEP ANTOLIN LLAMAS','004'),
		('81581388','RAQUEL ANTUNEZ ROJO','001')

--INSERTANDO REGISTROS TABLA PRODUCTO
INSERT INTO Producto
VALUES ('Z00001','Nike Air Force One','Clasico 1986','1',250.00),
	   ('Z00002','Puma Clyde','Clasico 1973','1',180.00),
	   ('Z00003','Converse All Star','Clasico 1917','1',215.00),
	   ('Z00004','Adidas Stan Smith','Clasico 1967','1',275.00),
	   ('Z00005','Adidas Superstar','Clasico 1969','1',315.00),
	   ('Z00006','Keds Champion','Clasico 1917','1',250.00),
	   ('Z00007','K-Swiss Classic','Clasico 1966','1',199.00),
	   ('Z00008','New Balance 574','Clasico 1988','1',215.00),
	   ('Z00009','Nike Air Jordan 1','Clasico 1985','1',500.00),
	   ('Z00010','Nike Waffle Trainer','Clasico 1974','1',235.00),
	   ('Z00011','Reebok Freestyle','Clasico 1982','1',167.00),
	   ('Z00012','Vans Authentic','Clasico 1979','1',220.00),
	   ('Z00013','ASICS Onitsuka Tiger Corsair','Clasico 1969','1',315.00),
	   ('Z00014','Adidas Samba','Clasico 1950','1',165.00),
	   ('Z00015','Puma Football Boot','Clasico 1958','1',425.00),
	   ('Z00016','Vans Old School','Clasico 1977','1',160.00),
	   ('Z00017','Veja Esplar','Clasico 2004','1',185.00),
	   ('Z00018','New Balance Trackster','Clasico 1971','1',113.00),
	   ('Z00019','Gucci Ace','Clasico 2016','1',255.00),
	   ('Z00020','Nike Cortez','Clasico 1972','1',317.00),
	   ('Z00021','Golden Goose Superstar','Clasico 2007','1',243.00),
	   ('Z00022','Adidas Jabbar','Clasico 1971','1',700.00),
	   ('Z00023','Reebok Kamikaze II','Clasico 1994','1',357.00),
	   ('Z00024','Fila 95','Clasico 1993','1',650.00),
	   ('Z00025','Adidas The Kobe','Clasico 2007','1',600.00)

--INSERTANDO REGISTROS TABLA FACTURACION
INSERT INTO Facturacion
VALUES 
('F0000000000000000001',17062914,0.00,5,1170.00,'20200101'),
('F0000000000000000002',34564217,5.00,3,1380.00,'20200103'),
('F0000000000000000003',64896102,0.00,3,694.00,'20200105'),
('F0000000000000000004',75682217,15.00,5,2082.00,'20200107'),
('F0000000000000000005',63514899,0.00,2,465.00,'20200109'),
('F0000000000000000006',87244341,20.00,4,1058.00,'20200111'),
('F0000000000000000007',23637416,5.00,3,1140.00,'20200113'),
('F0000000000000000008',66041432,0.00,3,650.00,'20200115'),
('F0000000000000000009',61657482,20.00,2,484.00,'20200117'),
('F0000000000000000010',75682217,0.00,7,1610.00,'20200119'),
('F0000000000000000011',77872039,20.00,3,1300.00,'20200121'),
('F0000000000000000012',75682217,0.00,2,675.00,'20200123'),
('F0000000000000000013',84420363,15.00,3,945.00,'20200125'),
('F0000000000000000014',81581388,5.00,5,1860.00,'20200127'),
('F0000000000000000015',77872039,0.00,3,760.00,'20200129'),
('F0000000000000000016',93553153,20.00,2,590.00,'20200131'),
('F0000000000000000017',40835062,0.00,1,113.00,'20200202'),
('F0000000000000000018',27778579,0.00,6,1930.00,'20200204'),
('F0000000000000000019',40835062,15.00,2,850.00,'20200206'),
('F0000000000000000020',64896102,0.00,2,347.00,'20200208'),
('F0000000000000000021',17062914,20.00,5,3350.00,'20200210'),
('F0000000000000000022',17396664,15.00,2,420.00,'20200212'),
('F0000000000000000023',19150867,0.00,5,1100.00,'20200214'),
('F0000000000000000024',64896102,10.00,2,782.00,'20200216'),
('F0000000000000000025',66041432,0.00,4,1171.00,'20200218'),
('F0000000000000000026',66941239,0.00,8,2447.00,'20200220'),
('F0000000000000000027',93553153,20.00,2,420.00,'20200222'),
('F0000000000000000028',56908988,0.00,2,435.00,'20200224'),
('F0000000000000000029',66041432,5.00,4,895.00,'20200226'),
('F0000000000000000030',64896102,0.00,4,1129.00,'20200228'),
('F0000000000000000031',64731945,20.00,1,650.00,'20200301'),
('F0000000000000000032',84420363,0.00,5,1516.00,'20200303'),
('F0000000000000000033',77872039,10.00,3,699.00,'20200305'),
('F0000000000000000034',75682217,0.00,2,613.00,'20200307'),
('F0000000000000000035',66941239,20.00,4,2550.00,'20200309'),
('F0000000000000000036',84420363,15.00,4,720.00,'20200311'),
('F0000000000000000037',17396664,0.00,3,780.00,'20200313'),
('F0000000000000000038',23637416,15.00,2,380.00,'20200315'),
('F0000000000000000039',34564217,0.00,4,1395.00,'20200317'),
('F0000000000000000040',56908988,20.00,9,2145.00,'20200319'),
('F0000000000000000041',27778579,10.00,2,1300.00,'20200321'),
('F0000000000000000042',87244341,0.00,7,1655.00,'20200323'),
('F0000000000000000043',75682217,20.00,1,113.00,'20200325'),
('F0000000000000000044',81581388,10.00,5,978.00,'20200327'),
('F0000000000000000045',34564217,0.00,2,645.00,'20200329'),
('F0000000000000000046',56908988,10.00,3,729.00,'20200331')

--INSERTANDO DETALLE FACTURACION
INSERT INTO Detalle_Facturacion
VALUES 
 ('F0000000000000000001','Z00001',1),
 ('F0000000000000000001','Z00003',1),
 ('F0000000000000000001','Z00010',3),
 ('F0000000000000000002','Z00025',2),
 ('F0000000000000000002','Z00002',1),
 ('F0000000000000000003','Z00004',1),
 ('F0000000000000000003','Z00007',1),
 ('F0000000000000000003','Z00012',1),
 ('F0000000000000000004','Z00008',1),
 ('F0000000000000000004','Z00009',2),
 ('F0000000000000000004','Z00022',1),
 ('F0000000000000000004','Z00011',1),
 ('F0000000000000000005','Z00006',1),
 ('F0000000000000000005','Z00008',1),
 ('F0000000000000000006','Z00018',1),
 ('F0000000000000000006','Z00013',3),
 ('F0000000000000000007','Z00003',1),
 ('F0000000000000000007','Z00009',1),
 ('F0000000000000000007','Z00015',1),
 ('F0000000000000000008','Z00001',1),
 ('F0000000000000000008','Z00014',1),
 ('F0000000000000000008','Z00010',1),
 ('F0000000000000000009','Z00011',1),
 ('F0000000000000000009','Z00020',1),
 ('F0000000000000000010','Z00003',4),
 ('F0000000000000000010','Z00004',1),
 ('F0000000000000000010','Z00019',1),
 ('F0000000000000000010','Z00012',1),
 ('F0000000000000000011','Z00021',1),
 ('F0000000000000000011','Z00022',1),
 ('F0000000000000000011','Z00023',1),
 ('F0000000000000000012','Z00001',1),
 ('F0000000000000000012','Z00015',1),
 ('F0000000000000000013','Z00005',3),
 ('F0000000000000000014','Z00008',1),
 ('F0000000000000000014','Z00022',1),
 ('F0000000000000000014','Z00013',3),
 ('F0000000000000000015','Z00006',1),
 ('F0000000000000000015','Z00019',2),
 ('F0000000000000000016','Z00004',1),
 ('F0000000000000000016','Z00013',1),
 ('F0000000000000000017','Z00018',1),
 ('F0000000000000000018','Z00002',1),
 ('F0000000000000000018','Z00006',3),
 ('F0000000000000000018','Z00009',2),
 ('F0000000000000000019','Z00001',1),
 ('F0000000000000000019','Z00025',1),
 ('F0000000000000000020','Z00011',1),
 ('F0000000000000000020','Z00002',1),
 ('F0000000000000000021','Z00025',1),
 ('F0000000000000000021','Z00022',3),
 ('F0000000000000000021','Z00024',1),
 ('F0000000000000000022','Z00014',1),
 ('F0000000000000000022','Z00019',1),
 ('F0000000000000000023','Z00012',5),
 ('F0000000000000000024','Z00015',1),
 ('F0000000000000000024','Z00023',1),
 ('F0000000000000000025','Z00020',3),
 ('F0000000000000000025','Z00002',1),
 ('F0000000000000000026','Z00011',1),
 ('F0000000000000000026','Z00004',5),
 ('F0000000000000000026','Z00019',1),
 ('F0000000000000000026','Z00024',1),
 ('F0000000000000000027','Z00014',1),
 ('F0000000000000000027','Z00019',1),
 ('F0000000000000000028','Z00006',1),
 ('F0000000000000000028','Z00017',1),
 ('F0000000000000000029','Z00001',2),
 ('F0000000000000000029','Z00002',1),
 ('F0000000000000000029','Z00003',1),
 ('F0000000000000000030','Z00025',1),
 ('F0000000000000000030','Z00007',1),
 ('F0000000000000000030','Z00014',2),
 ('F0000000000000000031','Z00024',1),
 ('F0000000000000000032','Z00011',3),
 ('F0000000000000000032','Z00005',1),
 ('F0000000000000000032','Z00022',1),
 ('F0000000000000000033','Z00007',1),
 ('F0000000000000000033','Z00006',2),
 ('F0000000000000000034','Z00009',1),
 ('F0000000000000000034','Z00018',1),
 ('F0000000000000000035','Z00025',1),
 ('F0000000000000000035','Z00024',3),
 ('F0000000000000000036','Z00002',4),
 ('F0000000000000000037','Z00005',1),
 ('F0000000000000000037','Z00006',1),
 ('F0000000000000000037','Z00008',1),
 ('F0000000000000000038','Z00014',1),
 ('F0000000000000000038','Z00008',1),
 ('F0000000000000000039','Z00008',2),
 ('F0000000000000000039','Z00013',1),
 ('F0000000000000000039','Z00024',1),
 ('F0000000000000000040','Z00013',1),
 ('F0000000000000000040','Z00017',3),
 ('F0000000000000000040','Z00019',5),
 ('F0000000000000000041','Z00022',1),
 ('F0000000000000000041','Z00025',1),
 ('F0000000000000000042','Z00002',2),
 ('F0000000000000000042','Z00008',1),
 ('F0000000000000000042','Z00016',3),
 ('F0000000000000000042','Z00025',1),
 ('F0000000000000000043','Z00018',1),
 ('F0000000000000000044','Z00016',1),
 ('F0000000000000000044','Z00018',1),
 ('F0000000000000000044','Z00003',2),
 ('F0000000000000000044','Z00004',1),
 ('F0000000000000000045','Z00012',1),
 ('F0000000000000000045','Z00015',1),
 ('F0000000000000000046','Z00021',3)


 --INSERTANDO INVENTARIO
 INSERT INTO Inventario
VALUES 
 ('Z00001','E','20200101',20),
 ('Z00002','E','20200101',20),
 ('Z00003','E','20200101',20),
 ('Z00004','E','20200101',20),
 ('Z00005','E','20200101',20),
 ('Z00006','E','20200101',20),
 ('Z00007','E','20200101',20),
 ('Z00008','E','20200101',20),
 ('Z00009','E','20200101',20),
 ('Z00010','E','20200101',20),
 ('Z00011','E','20200101',20),
 ('Z00012','E','20200101',20),
 ('Z00013','E','20200101',20),
 ('Z00014','E','20200101',20),
 ('Z00015','E','20200101',20),
 ('Z00016','E','20200101',20),
 ('Z00017','E','20200101',20),
 ('Z00018','E','20200101',20),
 ('Z00019','E','20200101',20),
 ('Z00020','E','20200101',20),
 ('Z00021','E','20200101',20),
 ('Z00022','E','20200101',20),
 ('Z00023','E','20200101',20),
 ('Z00024','E','20200101',20),
 ('Z00025','E','20200101',20),
 ('Z00001','S','20200101',1),
 ('Z00003','S','20200101',1),
 ('Z00010','S','20200101',3),
 ('Z00025','S','20200103',2),
 ('Z00002','S','20200103',1),
 ('Z00004','S','20200105',1),
 ('Z00007','S','20200105',1),
 ('Z00012','S','20200105',1),
 ('Z00008','S','20200107',1),
 ('Z00009','S','20200107',2),
 ('Z00022','S','20200107',1),
 ('Z00011','S','20200107',1),
 ('Z00006','S','20200109',1),
 ('Z00008','S','20200109',1),
 ('Z00018','S','20200111',1),
 ('Z00013','S','20200111',3),
 ('Z00003','S','20200113',1),
 ('Z00009','S','20200113',1),
 ('Z00015','S','20200113',1),
 ('Z00001','S','20200115',1),
 ('Z00014','S','20200115',1),
 ('Z00010','S','20200115',1),
 ('Z00011','S','20200117',1),
 ('Z00020','S','20200117',1),
 ('Z00003','S','20200119',4),
 ('Z00004','S','20200119',1),
 ('Z00019','S','20200119',1),
 ('Z00012','S','20200119',1),
 ('Z00021','S','20200121',1),
 ('Z00022','S','20200121',1),
 ('Z00023','S','20200121',1),
 ('Z00001','S','20200123',1),
 ('Z00015','S','20200123',1),
 ('Z00005','S','20200125',3),
 ('Z00008','S','20200127',1),
 ('Z00022','S','20200127',1),
 ('Z00013','S','20200127',3),
 ('Z00006','S','20200129',1),
 ('Z00019','S','20200129',2), 
 ('Z00004','S','20200131',1),
 ('Z00013','S','20200131',1), 
 ('Z00001','E','20200201',10),
 ('Z00002','E','20200201',10),
 ('Z00003','E','20200201',10),
 ('Z00004','E','20200201',10),
 ('Z00005','E','20200201',10),
 ('Z00006','E','20200201',10),
 ('Z00007','E','20200201',10),
 ('Z00008','E','20200201',10),
 ('Z00009','E','20200201',10),
 ('Z00010','E','20200201',10),
 ('Z00011','E','20200201',10),
 ('Z00012','E','20200201',10),
 ('Z00013','E','20200201',10),
 ('Z00014','E','20200201',10),
 ('Z00015','E','20200201',10),
 ('Z00016','E','20200201',10),
 ('Z00017','E','20200201',10),
 ('Z00018','E','20200201',10),
 ('Z00019','E','20200201',10),
 ('Z00020','E','20200201',10),
 ('Z00021','E','20200201',10),
 ('Z00022','E','20200201',10),
 ('Z00023','E','20200201',10),
 ('Z00024','E','20200201',10),
 ('Z00025','E','20200201',10),
 ('Z00018','S','20200202',1),
 ('Z00002','S','20200204',1),
 ('Z00006','S','20200204',3),
 ('Z00009','S','20200204',2),
 ('Z00001','S','20200206',1),
 ('Z00025','S','20200206',1),
 ('Z00011','S','20200208',1),
 ('Z00002','S','20200208',1),
 ('Z00025','S','20200210',1),
 ('Z00022','S','20200210',3),
 ('Z00024','S','20200210',1),
 ('Z00014','S','20200212',1),
 ('Z00019','S','20200212',1),
 ('Z00012','S','20200214',5),
 ('Z00015','S','20200216',1),
 ('Z00023','S','20200216',1),
 ('Z00020','S','20200218',3),
 ('Z00002','S','20200218',1),
 ('Z00011','S','20200220',1),
 ('Z00004','S','20200220',5),
 ('Z00019','S','20200220',1),
 ('Z00024','S','20200220',1),
 ('Z00014','S','20200222',1),
 ('Z00019','S','20200222',1),
 ('Z00006','S','20200224',1),
 ('Z00017','S','20200224',1),
 ('Z00001','S','20200226',2),
 ('Z00002','S','20200226',1),
 ('Z00003','S','20200226',1),
 ('Z00025','S','20200228',1),
 ('Z00007','S','20200228',1),
 ('Z00014','S','20200228',2),
 ('Z00001','E','20200301',10),
 ('Z00002','E','20200301',10),
 ('Z00003','E','20200301',10),
 ('Z00004','E','20200301',10),
 ('Z00005','E','20200301',10),
 ('Z00006','E','20200301',10),
 ('Z00007','E','20200301',10),
 ('Z00008','E','20200301',10),
 ('Z00009','E','20200301',10),
 ('Z00010','E','20200301',10),
 ('Z00011','E','20200301',10),
 ('Z00012','E','20200301',10),
 ('Z00013','E','20200301',10),
 ('Z00014','E','20200301',10),
 ('Z00015','E','20200301',10),
 ('Z00016','E','20200301',10),
 ('Z00017','E','20200301',10),
 ('Z00018','E','20200301',10),
 ('Z00019','E','20200301',10),
 ('Z00020','E','20200301',10),
 ('Z00021','E','20200301',10),
 ('Z00022','E','20200301',10),
 ('Z00023','E','20200301',10),
 ('Z00024','E','20200301',10),
 ('Z00025','E','20200301',10),
 ('Z00024','S','20200301',1),
 ('Z00011','S','20200303',3),
 ('Z00005','S','20200303',1),
 ('Z00022','S','20200303',1),
 ('Z00007','S','20200305',1),
 ('Z00006','S','20200305',2),
 ('Z00009','S','20200307',1),
 ('Z00018','S','20200307',1),
 ('Z00025','S','20200309',1),
 ('Z00024','S','20200309',3),
 ('Z00002','S','20200311',4),
 ('Z00005','S','20200313',1),
 ('Z00006','S','20200313',1),
 ('Z00008','S','20200313',1),
 ('Z00014','S','20200315',1),
 ('Z00008','S','20200315',1),
 ('Z00008','S','20200317',2),
 ('Z00013','S','20200317',1),
 ('Z00024','S','20200317',1),
 ('Z00013','S','20200319',1),
 ('Z00017','S','20200319',3),
 ('Z00019','S','20200319',5),
 ('Z00022','S','20200321',1),
 ('Z00025','S','20200321',1),
 ('Z00002','S','20200323',2),
 ('Z00008','S','20200323',1),
 ('Z00016','S','20200323',3),
 ('Z00025','S','20200323',1),
 ('Z00018','S','20200325',1),
 ('Z00016','S','20200327',1),
 ('Z00018','S','20200327',1),
 ('Z00003','S','20200327',2),
 ('Z00004','S','20200327',1),
 ('Z00012','S','20200329',1),
 ('Z00015','S','20200329',1),
 ('Z00021','S','20200331',3)