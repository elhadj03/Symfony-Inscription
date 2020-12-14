CREATE DATABASE IF NOT EXISTS superventes;
USE superventes; 
CREATE TABLE IF NOT EXISTS produits(
id smallint unsigned not null auto_increment,
nom  varchar(17) NOT NULL,
type varchar(8) NOT NULL,
description varchar(252) NOT NULL,
stock INTEGER  NOT NULL,
prix varchar(6) NOT NULL,
photo varchar(230) NOT NULL,
primary key (id)
);


INSERT INTO produits(id,nom,type,description,stock,prix,photo) VALUES 
(null,'peugeot 308','peugot','Réservoir : 60 L Nombre de places : 5 Vitesse maximum : 185 km/h Accéleration 0/100km/h : 9.5 sec Nombre de soupapes par cylindre : 2 Cylindrée : 1210 cc Puissance din : 115 ch au régime de 3600 tr/min, Couple moteur : 270 Nm au régime de 1750 tr/min',45,'24300','/images/peugeot308.jpg'),
(null,'peugeot 3008','peugot','Réservoir : 53 L Nombre de places : 5 Vitesse maximum : 200 km/h Accéleration 0/200km/h : 9.1 sec Nombre de soupapes par cylindre : 1 Cylindrée : 1560 cc Puissance din : 125 ch au régime de 1400 tr/min, Couple moteur : 210 Nm au régime de 1850 tr/min',12,'31050','/images/peugeot3008.jpg'),
(null,'peugeot e-2008','peugot','Réservoir : 19 L Nombre de places : 5 Vitesse maximum : 400 km/h Accéleration 0300km/h : 9.2 sec Nombre de soupapes par cylindre : 3 Cylindrée : 1460 cc Puissance din : 135 ch au régime de 2400 tr/min, Couple moteur : 220 Nm au régime de 180 tr/min',31,'37850','/images/peugeot2008.jpg'),
(null,'mercedes-Benz GLB','mercedes','Réservoir : 65 L Nombre de places : 5 Vitesse maximum : 200 km/h Accéleration 0/400km/h : 9.3 sec Nombre de soupapes par cylindre : 4 Cylindrée : 1590 cc Puissance din : 145 ch au régime de 3400 tr/min, Couple moteur : 240 Nm au régime de 850 tr/min',67,'45350','/images/mercedesGLB.jpg'),
(null,'mercedes-Benz GLE','mercedes','Réservoir : 70 L Nombre de places : 5 Vitesse maximum : 789 km/h Accéleration 0/600km/h : 9.5 sec Nombre de soupapes par cylindre : 2 Cylindrée : 8860 cc Puissance din : 165 ch au régime de 4400 tr/min, Couple moteur : 260 Nm au régime de 1950 tr/min',0,'69700','/images/mercedesGLE.jpg'),
(null,'Tesla Model 3','Tesla','Réservoir : 23 L Nombre de places : 5 Vitesse maximum : 500 km/h Accéleration 0/700km/h : 9.6 sec Nombre de soupapes par cylindre : 6 Cylindrée : 3360 cc Puissance din : 175 ch au régime de 7400 tr/min, Couple moteur : 280 Nm au régime de 1750 tr/min',18,'49600','/images/tesla3.jpg'),
(null,'Tesla Model S','Tesla','Réservoir : 83 L Nombre de places : 5 Vitesse maximum : 90 km/h Accéleration 0/800km/h : 9.7 sec Nombre de soupapes par cylindre : 7 Cylindrée : 9960 cc Puissance din : 185 ch au régime de 8400 tr/min, Couple moteur : 290 Nm au régime de 1450 tr/min',88,'83990','/images/teslaS.jpg'),
(null,'Tesla Model x','Tesla','Réservoir : 93 L Nombre de places : 5 Vitesse maximum : 20 km/h Accéleration 0/900km/h : 9.8 sec Nombre de soupapes par cylindre : 8 Cylindrée : 1560 cc Puissance din : 185 ch au régime de 0400 tr/min, Couple moteur : 210 Nm au régime de 1890 tr/min',91,'89 990','/images/teslaX.jpg'),
(null,'Honda HR-V','Honda','Réservoir : 23 L Nombre de places : 5 Vitesse maximum : 300 km/h Accéleration 0/1000km/h : 9.9 sec Nombre de soupapes par cylindre : 9 Cylindrée : 1570 cc Puissance din : 125 ch au régime de 2400 tr/min, Couple moteur : 230 Nm au régime de 1870 tr/min',0,'25070','/images/hondaHRV.jpg'),
(null,'Honda Civic','Honda','Réservoir : 93 L Nombre de places : 5 Vitesse maximum : 400 km/h Accéleration 0/1100km/h : 9.2 sec Nombre de soupapes par cylindre : 12 Cylindrée : 156 cc Puissance din : 145 ch au régime de 5300 tr/min, Couple moteur : 240 Nm au régime de 1800 tr/min',44,'25470','/images/hondaCIVIC.jpg'),
(null,'Honda NSX','Honda','Réservoir : 83 L Nombre de places : 5 Vitesse maximum : 800 km/h Accéleration 0/1200km/h : 9.5 sec Nombre de soupapes par cylindre : 2 Cylindrée : 239 cc Puissance din : 125 ch au régime de 5400 tr/min, Couple moteur : 250 Nm au régime de 1850 tr/min',32,'197500','/images/hondaNSX.jpg')
