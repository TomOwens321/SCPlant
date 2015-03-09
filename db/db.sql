PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150306005446');
INSERT INTO "schema_migrations" VALUES('20150306005808');
INSERT INTO "schema_migrations" VALUES('20150306005822');
INSERT INTO "schema_migrations" VALUES('20150306005839');
INSERT INTO "schema_migrations" VALUES('20150306010322');
INSERT INTO "schema_migrations" VALUES('20150307151609');
INSERT INTO "schema_migrations" VALUES('20150307172950');
INSERT INTO "schema_migrations" VALUES('20150307173139');
CREATE TABLE "families" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "common_name" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "families" VALUES(1,'Asteraceae ',NULL,NULL,'2015-03-08 16:35:50.546614','2015-03-08 16:35:50.546614');
INSERT INTO "families" VALUES(2,'Rosaceae ',NULL,NULL,'2015-03-08 16:35:51.425919','2015-03-08 16:35:51.425919');
INSERT INTO "families" VALUES(3,'Cactaceae',NULL,NULL,'2015-03-08 16:35:53.758819','2015-03-08 16:35:53.758819');
INSERT INTO "families" VALUES(4,'Anacardiaceae',NULL,NULL,'2015-03-08 16:35:54.651365','2015-03-08 16:35:54.651365');
INSERT INTO "families" VALUES(5,'Grossulariaceae',NULL,NULL,'2015-03-08 16:35:56.336816','2015-03-08 16:35:56.336816');
INSERT INTO "families" VALUES(6,'Poaceae',NULL,NULL,'2015-03-08 16:35:57.284779','2015-03-08 16:35:57.284779');
INSERT INTO "families" VALUES(7,'Scrophulariaceae',NULL,NULL,'2015-03-08 16:35:58.357154','2015-03-08 16:35:58.357154');
INSERT INTO "families" VALUES(8,'Lamiacea',NULL,NULL,'2015-03-08 16:36:07.480516','2015-03-08 16:36:07.480516');
INSERT INTO "families" VALUES(9,'Onagraceae',NULL,NULL,'2015-03-08 16:36:08.920268','2015-03-08 16:36:08.920268');
INSERT INTO "families" VALUES(10,'Hydrangeaceae',NULL,NULL,'2015-03-08 16:36:09.823633','2015-03-08 16:36:09.823633');
INSERT INTO "families" VALUES(11,'Primulaceae ',NULL,NULL,'2015-03-08 22:45:18.464878','2015-03-08 22:45:18.464878');
CREATE TABLE "genus" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "common_name" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "genus" VALUES(1,'Lygodesmia',NULL,NULL,'2015-03-08 16:35:50.387901','2015-03-08 16:35:50.387901');
INSERT INTO "genus" VALUES(2,'Potentilla',NULL,NULL,'2015-03-08 16:35:51.282874','2015-03-08 16:35:51.282874');
INSERT INTO "genus" VALUES(3,'Prunus',NULL,NULL,'2015-03-08 16:35:52.163557','2015-03-08 16:35:52.163557');
INSERT INTO "genus" VALUES(4,'Ratibida',NULL,NULL,'2015-03-08 16:35:52.946330','2015-03-08 16:35:52.946330');
INSERT INTO "genus" VALUES(5,'Opuntia',NULL,NULL,'2015-03-08 16:35:53.638120','2015-03-08 16:35:53.638120');
INSERT INTO "genus" VALUES(6,'Rhus',NULL,NULL,'2015-03-08 16:35:54.519420','2015-03-08 16:35:54.519420');
INSERT INTO "genus" VALUES(7,'Purshia',NULL,NULL,'2015-03-08 16:35:55.457580','2015-03-08 16:35:55.457580');
INSERT INTO "genus" VALUES(8,'Ribes',NULL,NULL,'2015-03-08 16:35:56.216213','2015-03-08 16:35:56.216213');
INSERT INTO "genus" VALUES(9,'Achnatherum',NULL,NULL,'2015-03-08 16:35:57.175118','2015-03-08 16:35:57.175118');
INSERT INTO "genus" VALUES(10,'Penstemon',NULL,NULL,'2015-03-08 16:35:58.201572','2015-03-08 16:35:58.201572');
INSERT INTO "genus" VALUES(11,'Rubus',NULL,NULL,'2015-03-08 16:35:58.905558','2015-03-08 16:35:58.905558');
INSERT INTO "genus" VALUES(12,'Mahonia',NULL,NULL,'2015-03-08 16:35:59.663523','2015-03-08 16:35:59.663523');
INSERT INTO "genus" VALUES(13,'Peraphyllum',NULL,NULL,'2015-03-08 16:36:03.812683','2015-03-08 16:36:03.812683');
INSERT INTO "genus" VALUES(14,'Liatris',NULL,NULL,'2015-03-08 16:36:06.713054','2015-03-08 16:36:06.713054');
INSERT INTO "genus" VALUES(15,'Monardella',NULL,NULL,'2015-03-08 16:36:07.292711','2015-03-08 16:36:07.292711');
INSERT INTO "genus" VALUES(16,'Oenothera',NULL,NULL,'2015-03-08 16:36:08.732473','2015-03-08 16:36:08.732473');
INSERT INTO "genus" VALUES(17,'Philadelphus',NULL,NULL,'2015-03-08 16:36:09.691763','2015-03-08 16:36:09.691763');
INSERT INTO "genus" VALUES(18,'Artemisia',NULL,NULL,'2015-03-08 22:22:48.159246','2015-03-08 22:22:48.159246');
INSERT INTO "genus" VALUES(19,'Symphyotrichum','','Synonym - Aster
','2015-03-08 22:30:30.119801','2015-03-08 22:34:26.366771');
INSERT INTO "genus" VALUES(20,'Amelanchier',NULL,NULL,'2015-03-08 22:35:43.715784','2015-03-08 22:35:43.715784');
INSERT INTO "genus" VALUES(21,'Androsace',NULL,NULL,'2015-03-08 22:39:36.402573','2015-03-08 22:39:36.402573');
CREATE TABLE "species" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "common_name" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "species" VALUES(1,'juncea',NULL,NULL,'2015-03-08 16:35:50.397153','2015-03-08 16:35:50.397153');
INSERT INTO "species" VALUES(2,'pensylvanica',NULL,NULL,'2015-03-08 16:35:51.287719','2015-03-08 16:35:51.287719');
INSERT INTO "species" VALUES(3,'virginiana',NULL,NULL,'2015-03-08 16:35:52.165444','2015-03-08 16:35:52.165444');
INSERT INTO "species" VALUES(4,'columnifera',NULL,NULL,'2015-03-08 16:35:52.951710','2015-03-08 16:35:52.951710');
INSERT INTO "species" VALUES(5,'phaeacantha',NULL,NULL,'2015-03-08 16:35:53.640843','2015-03-08 16:35:53.640843');
INSERT INTO "species" VALUES(6,'trilobata',NULL,NULL,'2015-03-08 16:35:54.524765','2015-03-08 16:35:54.524765');
INSERT INTO "species" VALUES(7,'mexicana',NULL,NULL,'2015-03-08 16:35:55.462893','2015-03-08 16:35:55.462893');
INSERT INTO "species" VALUES(8,'cereum',NULL,NULL,'2015-03-08 16:35:56.220215','2015-03-08 16:35:56.220215');
INSERT INTO "species" VALUES(9,'hymenoides',NULL,NULL,'2015-03-08 16:35:57.179769','2015-03-08 16:35:57.179769');
INSERT INTO "species" VALUES(10,'glaber',NULL,NULL,'2015-03-08 16:35:58.207027','2015-03-08 16:35:58.207027');
INSERT INTO "species" VALUES(11,'ideaus',NULL,NULL,'2015-03-08 16:35:58.908684','2015-03-08 16:35:58.908684');
INSERT INTO "species" VALUES(12,'fremontii',NULL,NULL,'2015-03-08 16:35:59.665411','2015-03-08 16:35:59.665411');
INSERT INTO "species" VALUES(13,'tridentata',NULL,NULL,'2015-03-08 16:36:00.335578','2015-03-08 16:36:00.335578');
INSERT INTO "species" VALUES(14,'americana',NULL,NULL,'2015-03-08 16:36:01.329642','2015-03-08 16:36:01.329642');
INSERT INTO "species" VALUES(15,'parviflorus',NULL,NULL,'2015-03-08 16:36:02.352478','2015-03-08 16:36:02.352478');
INSERT INTO "species" VALUES(16,'deliciosus',NULL,NULL,'2015-03-08 16:36:03.190859','2015-03-08 16:36:03.190859');
INSERT INTO "species" VALUES(17,'ramosissimum',NULL,NULL,'2015-03-08 16:36:03.816272','2015-03-08 16:36:03.816272');
INSERT INTO "species" VALUES(18,'wolfii',NULL,NULL,'2015-03-08 16:36:04.439335','2015-03-08 16:36:04.439335');
INSERT INTO "species" VALUES(19,'virgatus',NULL,NULL,'2015-03-08 16:36:05.255453','2015-03-08 16:36:05.255453');
INSERT INTO "species" VALUES(20,'montigenum',NULL,NULL,'2015-03-08 16:36:05.867544','2015-03-08 16:36:05.867544');
INSERT INTO "species" VALUES(21,'punctata',NULL,NULL,'2015-03-08 16:36:06.718347','2015-03-08 16:36:06.718347');
INSERT INTO "species" VALUES(22,'odoratissima',NULL,NULL,'2015-03-08 16:36:07.296329','2015-03-08 16:36:07.296329');
INSERT INTO "species" VALUES(23,'watsonii',NULL,NULL,'2015-03-08 16:36:08.055137','2015-03-08 16:36:08.055137');
INSERT INTO "species" VALUES(24,'caespitosa',NULL,NULL,'2015-03-08 16:36:08.736204','2015-03-08 16:36:08.736204');
INSERT INTO "species" VALUES(25,'microphyllus',NULL,NULL,'2015-03-08 16:36:09.695959','2015-03-08 16:36:09.695959');
INSERT INTO "species" VALUES(26,'filifolia',NULL,NULL,'2015-03-08 22:22:48.161840','2015-03-08 22:22:48.161840');
INSERT INTO "species" VALUES(27,'falcatum',NULL,NULL,'2015-03-08 22:30:30.121858','2015-03-08 22:30:30.121858');
INSERT INTO "species" VALUES(28,'alnifolia',NULL,NULL,'2015-03-08 22:35:43.717609','2015-03-08 22:35:43.717609');
INSERT INTO "species" VALUES(29,'septentrionalis',NULL,NULL,'2015-03-08 22:39:36.404407','2015-03-08 22:39:36.404407');
CREATE TABLE "plants" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "family_id" integer, "genus_id" integer, "species_id" integer, "common_name" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "plants" VALUES(1,'Lygodesmia juncea',1,1,1,'Skeleton Plant','','2015-03-08 16:35:50.398888','2015-03-09 12:53:16.715738');
INSERT INTO "plants" VALUES(2,'Potentilla pensylvanica ',1,2,2,'Pennsylvania cinquefoil',NULL,'2015-03-08 16:35:51.289058','2015-03-09 12:53:16.859253');
INSERT INTO "plants" VALUES(3,'Prunus  virginiana var.saximontana',2,3,3,'Pin Cherry',NULL,'2015-03-08 16:35:52.166794','2015-03-09 12:53:16.958749');
INSERT INTO "plants" VALUES(4,'Ratibida columnifera var.pulcherrima',1,4,4,'Red Prairie Coneflower',NULL,'2015-03-08 16:35:52.955510','2015-03-09 12:53:17.092712');
INSERT INTO "plants" VALUES(5,'Opuntia phaeacantha',3,5,5,'Pricklypear',NULL,'2015-03-08 16:35:53.642147','2015-03-09 12:53:17.192413');
INSERT INTO "plants" VALUES(6,'Rhus trilobata var.simplicifolia',4,6,6,'Single-leaf Sumac',NULL,'2015-03-08 16:35:54.527891','2015-03-09 12:53:17.290840');
INSERT INTO "plants" VALUES(7,'Purshia mexicana',2,7,7,'Mexican Cliffrose',NULL,'2015-03-08 16:35:55.464566','2015-03-09 12:53:17.393850');
INSERT INTO "plants" VALUES(8,'Ribes cereum',5,8,8,'Wax Currant',NULL,'2015-03-08 16:35:56.221577','2015-03-09 12:53:17.494379');
INSERT INTO "plants" VALUES(9,'Achnatherum hymenoides',6,9,9,'Indian Ricegrass',NULL,'2015-03-08 16:35:57.181136','2015-03-09 12:53:17.605104');
INSERT INTO "plants" VALUES(10,'Penstemon glaber var.alpinus',7,10,10,'Alpine Penstemon',NULL,'2015-03-08 16:35:58.210985','2015-03-09 12:53:17.730265');
INSERT INTO "plants" VALUES(11,'Rubus ideaus var.melanolasius',2,11,11,'Wild Rasperry',NULL,'2015-03-08 16:35:58.910015','2015-03-09 12:53:17.853287');
INSERT INTO "plants" VALUES(12,'Mahonia fremontii',NULL,12,12,'Redberry Mahonia',NULL,'2015-03-08 16:35:59.666809','2015-03-09 12:53:17.953285');
INSERT INTO "plants" VALUES(13,'Purshia tridentata',NULL,7,13,'Antelope Bitterbrush',NULL,'2015-03-08 16:36:00.336999','2015-03-09 12:53:18.054044');
INSERT INTO "plants" VALUES(14,'Prunus  americana',2,3,14,'Wild Plum',NULL,'2015-03-08 16:36:01.332140','2015-03-09 12:53:18.181889');
INSERT INTO "plants" VALUES(15,'Rubus parviflorus',2,11,15,'"Thimbleberry Salmonberry"',NULL,'2015-03-08 16:36:02.353912','2015-03-09 12:53:18.288262');
INSERT INTO "plants" VALUES(16,'Rubus deliciosus',2,11,16,'Boulder Raspberry',NULL,'2015-03-08 16:36:03.192640','2015-03-09 12:53:18.388919');
INSERT INTO "plants" VALUES(17,'Peraphyllum ramosissimum',2,13,17,'Wild Crab Apple',NULL,'2015-03-08 16:36:03.817581','2015-03-09 12:53:18.533871');
INSERT INTO "plants" VALUES(18,'Ribes wolfii',5,8,18,'"Wolf Currant Rothrock Currant"',NULL,'2015-03-08 16:36:04.441382','2015-03-09 12:53:18.645498');
INSERT INTO "plants" VALUES(19,'Penstemon virgatus var.asa-grayi',7,10,19,'Tall Beardtongue',NULL,'2015-03-08 16:36:05.256946','2015-03-09 12:53:18.757025');
INSERT INTO "plants" VALUES(20,'Ribes montigenum',5,8,20,'Gooseberry Currant',NULL,'2015-03-08 16:36:05.868982','2015-03-09 12:53:18.857299');
INSERT INTO "plants" VALUES(21,'Liatris punctata',1,14,21,'Dotted Blazing Star',NULL,'2015-03-08 16:36:06.720359','2015-03-09 12:53:18.957865');
INSERT INTO "plants" VALUES(22,'Monardella  odoratissima',8,15,22,'"Mountain Coyote Mint Horsemint"',NULL,'2015-03-08 16:36:07.297645','2015-03-09 12:53:19.056765');
INSERT INTO "plants" VALUES(23,'Penstemon watsonii',7,10,23,'Watson''s Penstemon',NULL,'2015-03-08 16:36:08.059211','2015-03-09 12:53:19.158652');
INSERT INTO "plants" VALUES(24,'Oenothera caespitosa',9,16,24,'Tufted Evening Primrose',NULL,'2015-03-08 16:36:08.737534','2015-03-09 12:53:19.281802');
INSERT INTO "plants" VALUES(25,'Philadelphus microphyllus',10,17,25,'Little-leaf Mockorange',NULL,'2015-03-08 16:36:09.697288','2015-03-09 12:53:19.381359');
INSERT INTO "plants" VALUES(26,'Artemisia filifolia',1,18,26,NULL,'','2015-03-08 22:22:48.163434','2015-03-08 22:27:42.457159');
INSERT INTO "plants" VALUES(27,'Symphyotrichum falcatum',1,19,27,NULL,'','2015-03-08 22:30:30.123266','2015-03-08 22:32:13.920802');
INSERT INTO "plants" VALUES(28,'Amelanchier alnifolia',2,20,28,NULL,'','2015-03-08 22:35:43.718774','2015-03-08 22:38:01.573826');
INSERT INTO "plants" VALUES(29,'Androsace septentrionalis',11,21,29,NULL,'','2015-03-08 22:39:36.405630','2015-03-08 22:45:21.600720');
CREATE TABLE "seeds" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "lot" varchar, "plant_id" integer, "collection_date" date, "vendor_id" integer, "location_id" integer, "collected_by" varchar, "clean" boolean, "quantity" integer, "remaining" integer, "notes" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "seeds" VALUES(1,'SCS-0001',1,'2015-08-01',NULL,1,'Renae Betsy','t',100,100,NULL,'2015-03-08 16:35:50.123619','2015-03-08 16:35:50.982664');
INSERT INTO "seeds" VALUES(2,'SCS-0002',2,'2006-08-09',NULL,2,'Renae Betsy','f',150,150,NULL,'2015-03-08 16:35:51.125087','2015-03-08 16:35:51.939316');
INSERT INTO "seeds" VALUES(3,'SCS-0003',3,'2005-07-27',NULL,3,'Betsy','t',300,300,NULL,'2015-03-08 16:35:52.050719','2015-03-08 16:35:52.677257');
INSERT INTO "seeds" VALUES(4,'SCS-0004',4,'2006-08-24',NULL,4,'','f',500,500,NULL,'2015-03-08 16:35:52.799595','2015-03-08 16:35:53.379921');
INSERT INTO "seeds" VALUES(5,'SCS-0005',5,'2008-10-10',NULL,5,'Betsy','t',200,200,NULL,'2015-03-08 16:35:53.513696','2015-03-08 16:35:54.272280');
INSERT INTO "seeds" VALUES(6,'SCS-0006',6,NULL,NULL,6,'Betsy / Tom','t',80,80,NULL,'2015-03-08 16:35:54.406151','2015-03-08 16:35:55.188104');
INSERT INTO "seeds" VALUES(7,'SCS-0007',7,NULL,1,NULL,'Come-36927','t',1500,1500,NULL,'2015-03-08 16:35:55.333186','2015-03-08 16:35:55.914380');
INSERT INTO "seeds" VALUES(8,'SCS-0008',8,'2008-08-01',NULL,7,'Betsy','t',300,300,NULL,'2015-03-08 16:35:56.058442','2015-03-08 16:35:56.883717');
INSERT INTO "seeds" VALUES(9,'SCS-0009',9,NULL,2,8,'8083','t',300,300,NULL,'2015-03-08 16:35:57.049939','2015-03-08 16:35:57.955574');
INSERT INTO "seeds" VALUES(10,'SCS-0010',10,'2009-09-14',NULL,7,'Betsy','f',80,80,NULL,'2015-03-08 16:35:58.077261','2015-03-08 16:35:58.641550');
INSERT INTO "seeds" VALUES(11,'SCS-0011',11,'1997-08-23',NULL,9,'Betsy','t',50,50,NULL,'2015-03-08 16:35:58.769941','2015-03-08 16:35:59.383733');
INSERT INTO "seeds" VALUES(12,'SCS-0012',12,'1997-09-01',NULL,10,'Betsy / Tom','f',600,600,NULL,'2015-03-08 16:35:59.517366','2015-03-08 16:36:00.086285');
INSERT INTO "seeds" VALUES(13,'SCS-0013',13,NULL,1,NULL,'Putr-37883','t',400,400,NULL,'2015-03-08 16:36:00.208860','2015-03-08 16:36:00.491920');
INSERT INTO "seeds" VALUES(14,'SCS-0014',2,'2009-07-13',NULL,4,'','t',40,40,NULL,'2015-03-08 16:36:00.654744','2015-03-08 16:36:01.005957');
INSERT INTO "seeds" VALUES(15,'SCS-0015',14,'2006-08-22',NULL,11,'Betsy','t',100,100,NULL,'2015-03-08 16:36:01.156747','2015-03-08 16:36:01.838079');
INSERT INTO "seeds" VALUES(16,'SCS-0016',15,'1997-09-01',NULL,12,'Betsy','t',400,400,NULL,'2015-03-08 16:36:01.970138','2015-03-08 16:36:02.941323');
INSERT INTO "seeds" VALUES(17,'SCS-0017',16,'2008-08-15',NULL,7,'Betsy','t',500,500,NULL,'2015-03-08 16:36:03.063802','2015-03-08 16:36:03.480127');
INSERT INTO "seeds" VALUES(18,'SCS-0018',17,'2008-08-01',NULL,NULL,'Betsy / Tom','t',120,120,NULL,'2015-03-08 16:36:03.643642','2015-03-08 16:36:04.123399');
INSERT INTO "seeds" VALUES(19,'SCS-0019',18,'2008-08-01',NULL,13,'Betsy','t',100,100,NULL,'2015-03-08 16:36:04.278917','2015-03-08 16:36:05.016749');
INSERT INTO "seeds" VALUES(20,'SCS-0020',19,'2009-09-14',NULL,7,'Betsy','f',75,75,NULL,'2015-03-08 16:36:05.128349','2015-03-08 16:36:05.579312');
INSERT INTO "seeds" VALUES(21,'SCS-0021',20,'1999-08-13',NULL,14,'Betsy','t',30,30,NULL,'2015-03-08 16:36:05.718807','2015-03-08 16:36:06.399304');
INSERT INTO "seeds" VALUES(22,'SCS-0022',21,'2009-08-02',NULL,NULL,'Calr Thomas','t',300,300,NULL,'2015-03-08 16:36:06.588650','2015-03-08 16:36:07.023816');
INSERT INTO "seeds" VALUES(23,'SCS-0023',22,NULL,2,NULL,'5237','t',150,150,NULL,'2015-03-08 16:36:07.134914','2015-03-08 16:36:07.762996');
INSERT INTO "seeds" VALUES(24,'SCS-0024',23,'2015-03-14',3,NULL,'14-149','t',250,250,NULL,'2015-03-08 16:36:07.905715','2015-03-08 16:36:08.441597');
INSERT INTO "seeds" VALUES(25,'SCS-0025',24,'1998-07-01',NULL,15,'Betsy','t',20,20,NULL,'2015-03-08 16:36:08.586033','2015-03-08 16:36:09.389156');
INSERT INTO "seeds" VALUES(26,'SCS-0026',25,NULL,4,NULL,'s2280','t',300,300,NULL,'2015-03-08 16:36:09.522778','2015-03-08 16:36:10.237585');
INSERT INTO "seeds" VALUES(27,'SCS-0027',23,'2015-03-08',3,16,'08-019','t',150,150,NULL,'2015-03-08 16:36:10.403790','2015-03-08 16:36:10.784761');
INSERT INTO "seeds" VALUES(28,'SCS-0028',26,'2015-03-08',NULL,17,'Betsy','t',150,150,'Kind of clean / maybe run through a screen','2015-03-08 22:25:28.885539','2015-03-08 22:25:28.885539');
INSERT INTO "seeds" VALUES(29,'SCS-0029',27,'2015-03-08',NULL,15,'Betsy','f',100,100,'','2015-03-08 22:31:21.964285','2015-03-08 22:31:21.964285');
INSERT INTO "seeds" VALUES(30,'SCS-0030',28,'2015-03-08',2,NULL,'7319','t',450,450,'','2015-03-08 22:37:29.232192','2015-03-08 22:37:29.232192');
INSERT INTO "seeds" VALUES(31,'SCS-0031',29,'2015-03-08',NULL,18,'Betsy','f',50,50,'with some dirt','2015-03-08 22:39:50.195859','2015-03-08 22:41:52.767137');
CREATE TABLE "vendors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "contact" varchar, "address1" varchar, "address2" varchar, "city" varchar, "state" varchar, "zipcode" varchar, "phone" varchar, "email" varchar, "website" varchar, "notes" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "vendors" VALUES(1,'Granite',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 16:35:55.724509','2015-03-08 16:35:55.724509');
INSERT INTO "vendors" VALUES(2,'WNS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 16:35:57.520491','2015-03-08 16:35:57.520491');
INSERT INTO "vendors" VALUES(3,'Seed Excng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 16:36:08.307300','2015-03-08 16:36:08.307300');
INSERT INTO "vendors" VALUES(4,'PSW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 16:36:10.102698','2015-03-08 16:36:10.102698');
CREATE TABLE "locations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "area" varchar, "city" varchar, "county" varchar, "state" varchar, "latitude" float, "longitude" float, "altitude" integer, "notes" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "locations" VALUES(1,'Home',NULL,'Platteville','','',NULL,NULL,NULL,NULL,'2015-03-08 16:35:50.759620','2015-03-08 16:35:50.866962');
INSERT INTO "locations" VALUES(2,'Wondervue',NULL,'','','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:35:51.694062','2015-03-08 16:35:51.825847');
INSERT INTO "locations" VALUES(3,'Lookout Mtn',NULL,'Golden','','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:35:52.374693','2015-03-08 16:35:52.530592');
INSERT INTO "locations" VALUES(4,'GH Stock',NULL,'Arvada','','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:35:53.156889','2015-03-08 16:35:53.266845');
INSERT INTO "locations" VALUES(5,'44th and Eldridge',NULL,'Arvada','','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:35:54.027028','2015-03-08 16:35:54.137067');
INSERT INTO "locations" VALUES(6,'Rid Rim ?',NULL,'','','UT',NULL,NULL,NULL,NULL,'2015-03-08 16:35:54.886114','2015-03-08 16:35:55.007099');
INSERT INTO "locations" VALUES(7,'Coal Creek Canyon',NULL,'','Jefferson','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:35:56.592539','2015-03-08 16:35:56.748224');
INSERT INTO "locations" VALUES(8,'Rimrock',NULL,'','','MT',NULL,NULL,NULL,NULL,'2015-03-08 16:35:57.664523','2015-03-08 16:35:57.785534');
INSERT INTO "locations" VALUES(9,'Yankee Doodle Lake',NULL,'','Gilpin','CO',NULL,NULL,10000,NULL,'2015-03-08 16:35:59.160577','2015-03-08 16:35:59.270356');
INSERT INTO "locations" VALUES(10,'Beef Basin RD',NULL,'','','UT',NULL,NULL,NULL,NULL,'2015-03-08 16:35:59.810178','2015-03-08 16:35:59.961918');
INSERT INTO "locations" VALUES(11,'Lower Coal Creek Canyon',NULL,'','Jefferson','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:36:01.593020','2015-03-08 16:36:01.713860');
INSERT INTO "locations" VALUES(12,'Grand Mesa',NULL,'','','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:36:02.673730','2015-03-08 16:36:02.816983');
INSERT INTO "locations" VALUES(13,'McClure Pass','','','','CO',NULL,NULL,9500,'','2015-03-08 16:36:04.715652','2015-03-08 22:17:35.643705');
INSERT INTO "locations" VALUES(14,'Tolland Rd',NULL,'','Gilpin','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:36:06.154036','2015-03-08 16:36:06.263936');
INSERT INTO "locations" VALUES(15,'Mom''s House',NULL,'Arvada','Jefferson','CO',NULL,NULL,NULL,NULL,'2015-03-08 16:36:09.153877','2015-03-08 16:36:09.287059');
INSERT INTO "locations" VALUES(16,'Lexingotn Arch Rd',NULL,'','','NV',NULL,NULL,6000,NULL,'2015-03-08 16:36:10.547219','2015-03-08 16:36:10.670017');
INSERT INTO "locations" VALUES(17,'WCR 31 and WCR 32/ west side',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 22:23:55.218646','2015-03-08 22:23:55.218646');
INSERT INTO "locations" VALUES(18,'Mom''s Cabin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-08 22:39:50.026328','2015-03-08 22:39:50.026328');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('seeds',31);
INSERT INTO "sqlite_sequence" VALUES('genus',21);
INSERT INTO "sqlite_sequence" VALUES('species',29);
INSERT INTO "sqlite_sequence" VALUES('plants',29);
INSERT INTO "sqlite_sequence" VALUES('families',11);
INSERT INTO "sqlite_sequence" VALUES('locations',18);
INSERT INTO "sqlite_sequence" VALUES('vendors',4);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_plants_on_family_id" ON "plants" ("family_id");
CREATE INDEX "index_plants_on_genus_id" ON "plants" ("genus_id");
CREATE INDEX "index_plants_on_species_id" ON "plants" ("species_id");
CREATE INDEX "index_seeds_on_plant_id" ON "seeds" ("plant_id");
CREATE INDEX "index_seeds_on_vendor_id" ON "seeds" ("vendor_id");
CREATE INDEX "index_seeds_on_location_id" ON "seeds" ("location_id");
COMMIT;