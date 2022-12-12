CREATE DATABASE IF NOT EXISTS hospital;
GRANT ALL PRIVILEGES ON hospital.* TO 'webapp'@'%';
FLUSH PRIVILEGES;

USE hospital;

DROP TABLE IF EXISTS `insurance`;

create table insurance (
	insurance_id INT,
	insurance_name VARCHAR(50),
	deduction INT,

    PRIMARY KEY (insurance_id)
);

insert into insurance (insurance_id, insurance_name, deduction) values (1, 'Skipstorm', 4773);
insert into insurance (insurance_id, insurance_name, deduction) values (2, 'Tazz', 6656);
insert into insurance (insurance_id, insurance_name, deduction) values (3, 'Lazz', 4342);
insert into insurance (insurance_id, insurance_name, deduction) values (4, 'Jaxnation', 4907);
insert into insurance (insurance_id, insurance_name, deduction) values (5, 'Rhyloo', 7472);
insert into insurance (insurance_id, insurance_name, deduction) values (6, 'Topicstorm', 4305);
insert into insurance (insurance_id, insurance_name, deduction) values (7, 'Yacero', 8081);
insert into insurance (insurance_id, insurance_name, deduction) values (8, 'Dabjam', 7473);
insert into insurance (insurance_id, insurance_name, deduction) values (9, 'Buzzshare', 8187);
insert into insurance (insurance_id, insurance_name, deduction) values (10, 'Aibox', 9185);
insert into insurance (insurance_id, insurance_name, deduction) values (11, 'Thoughtmix', 9041);
insert into insurance (insurance_id, insurance_name, deduction) values (12, 'Photobug', 5795);
insert into insurance (insurance_id, insurance_name, deduction) values (13, 'Zoombeat', 5678);
insert into insurance (insurance_id, insurance_name, deduction) values (14, 'Jamia', 6006);
insert into insurance (insurance_id, insurance_name, deduction) values (15, 'Innotype', 5538);



DROP TABLE IF EXISTS `prescription`;

create table prescription (
	prescription_id INT,
	name VARCHAR(50),
	price DECIMAL(4,2),
	any_refill VARCHAR(50),

    PRIMARY KEY (prescription_id)
);
insert into prescription (prescription_id, name, price, any_refill) values (1, 'Opana ER', 68.47, false);
insert into prescription (prescription_id, name, price, any_refill) values (2, 'Rydex', 65.22, true);
insert into prescription (prescription_id, name, price, any_refill) values (3, 'TopCare', 51.42, true);
insert into prescription (prescription_id, name, price, any_refill) values (4, 'PROPOXYPHENE NAPSYLATE AND ACETAMINOPHEN', 24.44, false);
insert into prescription (prescription_id, name, price, any_refill) values (5, 'Mirtazapine', 23.21, false);
insert into prescription (prescription_id, name, price, any_refill) values (6, 'Triamterene and Hydrochlorothiazide', 24.98, true);
insert into prescription (prescription_id, name, price, any_refill) values (7, 'Levofloxacin', 52.87, false);
insert into prescription (prescription_id, name, price, any_refill) values (8, 'PAIN RELIEVER PM', 46.89, true);
insert into prescription (prescription_id, name, price, any_refill) values (9, 'Antacid', 31.94, true);
insert into prescription (prescription_id, name, price, any_refill) values (10, 'Clindamycin Phosphate', 51.22, false);
insert into prescription (prescription_id, name, price, any_refill) values (11, 'SPF-20 FACE PRIMER', 79.68, true);
insert into prescription (prescription_id, name, price, any_refill) values (12, 'Hydrocortisone', 69.84, true);
insert into prescription (prescription_id, name, price, any_refill) values (13, 'Hand Sanitizer', 36.26, false);
insert into prescription (prescription_id, name, price, any_refill) values (14, 'MILK OF MAGNESIA CHERRY', 69.74, false);
insert into prescription (prescription_id, name, price, any_refill) values (15, 'Up and Up anti itch', 86.54, false);

DROP TABLE IF EXISTS `pharmacy`;

create table pharmacy (
	pharmacy_id INT,
	phone VARCHAR(50),
	open_hours INT,
	street_address VARCHAR(50),
	city VARCHAR(50),
	zip VARCHAR(50),

    PRIMARY KEY (pharmacy_id)
);
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (1, '1668028164', 10, '766 Ryan Hill', 'Stockholm', '01865');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (2, '1316227627', 11, '184 Petterle Drive', 'Mazhu', '7');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (3, '9321561242', 9, '884 Lakewood Gardens Road', 'Ash Shuyūkh', '08');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (4, '6537317837', 19, '893 Moland Place', 'Trondheim', '6');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (5, '7152306437', 16, '38211 4th Trail', 'Antonio Toledo Corro', '9001');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (6, '4856458195', 23, '14278 Eliot Trail', 'Bengtsfors', '2');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (7, '9776354716', 15, '492 Fordem Court', 'Dukuhmencek Lor', '8024');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (8, '2087427085', 15, '8095 Stoughton Junction', 'Tiébo', '6217');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (9, '4448965568', 14, '28908 Eagle Crest Hill', 'Soutocico', '13');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (10, '3685657434', 8, '90 Duke Hill', 'Grabovci', '3');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (11, '6402532304', 13, '326 Forest Circle', 'Saladas', '13441');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (12, '3634277206', 23, '81 Wayridge Road', 'Kopparberg', '6');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (13, '7149163706', 16, '0 Calypso Point', 'Clermont-Ferrand', '8227');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (14, '4701960336', 16, '3 Gina Circle', 'Jiangdong', '3');
insert into pharmacy (pharmacy_id, phone, open_hours, street_address, city, zip) values (15, '4736439686', 22, '5485 Sloan Point', 'Slavs’ke', '17835');

DROP TABLE IF EXISTS `bill`;

create table bill (
	bill_id INT,
	total DECIMAL(7,2),
	is_paid VARCHAR(50),

    PRIMARY KEY (bill_id)
);
insert into bill (bill_id, total, is_paid) values (1, 331.53, true);
insert into bill (bill_id, total, is_paid) values (2, 7772.82, true);
insert into bill (bill_id, total, is_paid) values (3, 4674.65, true);
insert into bill (bill_id, total, is_paid) values (4, 6989.57, false);
insert into bill (bill_id, total, is_paid) values (5, 3157.77, false);
insert into bill (bill_id, total, is_paid) values (6, 5551.59, false);
insert into bill (bill_id, total, is_paid) values (7, 6289.35, false);
insert into bill (bill_id, total, is_paid) values (8, 1970.73, false);
insert into bill (bill_id, total, is_paid) values (9, 4912.85, false);
insert into bill (bill_id, total, is_paid) values (10, 4599.28, true);
insert into bill (bill_id, total, is_paid) values (11, 7493.04, false);
insert into bill (bill_id, total, is_paid) values (12, 324.59, true);
insert into bill (bill_id, total, is_paid) values (13, 1233.12, true);
insert into bill (bill_id, total, is_paid) values (14, 2451.99, false);
insert into bill (bill_id, total, is_paid) values (15, 3960.4, true);

DROP TABLE IF EXISTS `doctor`;

create table doctor (
	doctor_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	reports_to INT,
	city VARCHAR(50),
	zip VARCHAR(50),

    PRIMARY KEY (doctor_id)
);

insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (1, 'Reinald', 'Gehrtz', null, 'Östersund', '7');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (2, 'Lola', 'Andres', 3, 'Wanhu', '75');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (3, 'Kristina', 'Yearron', null, 'Doyong', '8420');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (4, 'Nady', 'Emlin', null, 'Intibucá', '58065');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (5, 'Christie', 'Hansmann', null, 'Sirnarasa', '44');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (6, 'Stanislaus', 'Dawson', null, 'Antsohihy', '33');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (7, 'Elfrieda', 'Rubes', 15, 'Xinchengpu', '69');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (8, 'Jillian', 'Toothill', null, 'Curitibanos', '900');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (9, 'Gage', 'Rubinowicz', 12, 'Al Hufūf', '2');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (10, 'Esme', 'Rentz', 3, 'Shengao', '31580');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (11, 'Eduino', 'Bott', null, 'Uusikaupunki', '85992');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (12, 'Renee', 'Craft', 14, 'Qiansuo', '4');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (13, 'Maribel', 'Munks', null, 'Višňové', '0');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (14, 'Shara', 'Morgan', null, 'Taitung City', '76');
insert into doctor (doctor_id, first_name, last_name, reports_to, city, zip) values (15, 'Imogene', 'Fasse', null, 'Tarczyn', '39061');

DROP TABLE IF EXISTS `nurse`;

create table nurse (
	nurse_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone VARCHAR(50),
	city VARCHAR(50),

    PRIMARY KEY (nurse_id)
);

insert into nurse (nurse_id, first_name, last_name, phone, city) values (1, 'Parke', 'Fortun', '2961156459', 'Jintun');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (2, 'Bud', 'Wildbore', '1497226512', 'Hacıqabul');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (3, 'Maurene', 'Boddice', '1555767288', 'Oxford');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (4, 'Jasen', 'Ratie', '2944973780', 'Tandel');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (5, 'Hatty', 'Bidder', '3119746969', 'Banatska Topola');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (6, 'Killian', 'Adamik', '1873846477', 'Luocun');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (7, 'Jacki', 'Tout', '1279713451', 'Cikuya');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (8, 'Hervey', 'Rodmell', '7864950075', 'Miami');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (9, 'Etty', 'Filgate', '3104648941', 'Kertasari');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (10, 'Reinaldos', 'Francescone', '7953606745', 'Oro Timur');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (11, 'Dorie', 'Jamary', '4861494506', 'Ćmielów');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (12, 'George', 'Niset', '8191173042', 'Novallas');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (13, 'Sloan', 'Beach', '9235943244', 'Chengkou');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (14, 'Huntley', 'Osmund', '4857032849', 'Monte Aprazível');
insert into nurse (nurse_id, first_name, last_name, phone, city) values (15, 'Lesya', 'Hallgarth', '5592134616', 'Blumbang');

DROP TABLE IF EXISTS `patient`;

create table patient (
	patient_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT,
	pharmacy_id INT,
	prescription_id INT,
	bill_id INT,
	insurance_id INT,

    PRIMARY KEY (patient_id),
    KEY `pharmacy_id` (`pharmacy_id`),
    KEY `prescription_id` (`prescription_id`),
    KEY `bill_id` (`bill_id`),
    KEY `insurance_id` (`insurance_id`),
    CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`pharmacy_id`),
    CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`prescription_id`),
    CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`),
    CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`insurance_id`) REFERENCES `insurance` (`insurance_id`)
);

insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (1, 'Kylie', 'Qualtrough', 79, 2, 3, 4, 5);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (2, 'Adolf', 'Danilovich', 42, 3, 4, 5, 6);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (3, 'Phillida', 'Gibbie', 77, 4, 5, 6, 7);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (4, 'Delmore', 'Vankin', 82, 5, 6, 7, 8);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (5, 'Zelig', 'Cuttelar', 79, 6, 7, 8, 9);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (6, 'Levon', 'Scrine', 67, 7, 8, 9, 10);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (7, 'Blake', 'Botly', 41, 8, 9, 10, 11);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (8, 'Micki', 'Giacomozzo', 61, 9, 10, 11, 12);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (9, 'Ailis', 'Wichard', 41, 10, 11, 12, 13);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (10, 'Lutero', 'Prettyman', 38, 11, 12, 13, 14);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (11, 'Von', 'Onge', 18, 12, 13, 14, 15);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (12, 'Regen', 'Petraitis', 46, 13, 14, 15, 1);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (13, 'Herta', 'Richford', 26, 14, 15, 1, 2);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (14, 'Adina', 'Assinder', 26, 15, 1, 2, 3);
insert into patient (patient_id, first_name, last_name, age, pharmacy_id, prescription_id, bill_id, insurance_id) values (15, 'Cosetta', 'Wintle', 45, 1, 2, 3, 4);

DROP TABLE IF EXISTS `team`;

create table team (
	team_id INT,
	doctor_id INT,
	nurse_id INT,
	patient_id INT,

    PRIMARY KEY (team_id),
    KEY `doctor_id` (`doctor_id`),
    KEY `nurse_id` (`nurse_id`),
    KEY `patient_id` (`patient_id`),
    CONSTRAINT `team_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
    CONSTRAINT `team_ibfk_2` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`nurse_id`),
    CONSTRAINT `team_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
);

insert into team (team_id, doctor_id, nurse_id, patient_id) values (1, 2, 3, 4);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (2, 3, 4, 5);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (3, 4, 5, 6);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (4, 5, 6, 7);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (5, 6, 7, 8);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (6, 7, 8, 9);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (7, 8, 9, 10);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (8, 9, 10, 11);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (9, 10, 11, 12);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (10, 11, 12, 13);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (11, 12, 13, 14);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (12, 13, 14, 15);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (13, 14, 15, 1);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (14, 15, 1, 2);
insert into team (team_id, doctor_id, nurse_id, patient_id) values (15, 1, 2, 3);
