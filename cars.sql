CREATE TABLE cars (
	car_id INT(10) NOT NULL AUTO_INCREMENT,
	model VARCHAR(20) NOT NULL,
	brand VARCHAR(10) NOT NULL,
	price FLOAT(10,2) NOT NULL,
	car_year YEAR,
	status_description TEXT(500), /* descrizione auto + problemi eventuali */
	mileage_in_km INT(10) NOT NULL,
	euro_rank INT(1), /* vorrebbe essere per le classi ambientali: euro1, euro2, etc */
	plate VARCHAR(10) NOT NULL UNIQUE,
	pics VARCHAR(10),
	ad_date DATE,
	PRIMARY KEY ( car_id ),
	fuel_category TINYINT DEFAULT 0 /* 'finto' richiamo ad altra table, con tipi carburante: 0=benzina, 1=diesel, etc */
);

INSERT INTO cars (model, price, car_year, brand, mileage_in_km, plate) VALUES ('panda', 500, 2007, 'fiat', 300, 'abc123');
INSERT INTO cars (model, price, car_year, brand, mileage_in_km, plate) VALUES ('bohboh', 100000, 2018, 'tesla', 4000, 'abd123'); 

SELECT * FROM cars;
