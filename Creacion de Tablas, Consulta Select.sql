Create database BD_GENERAL_TEST;
USE BD_GENERAL_TEST;

-- 1 
Create table District (
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Name_District varchar (50),
Surface decimal (5,2),
City varchar (50)
);

--2 
CREATE TABLE PERU_DB_NDWI (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_district INT,  
    fecha NVARCHAR(100),
    año INT,  
    NDWI FLOAT,
    FOREIGN KEY (id_district) REFERENCES District (id)  
);

-- 3
CREATE TABLE PERU_DB_NDVI (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_district INT,  
    fecha NVARCHAR(100),
    año INT,  
    NDVI FLOAT,
    FOREIGN KEY (id_district) REFERENCES District (id)  
);

-- 4
CREATE TABLE COLOMBIA_DB_NDWI (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_district INT,  
    fecha NVARCHAR(100),
    año INT,  
    NDWI FLOAT,
    FOREIGN KEY (id_district) REFERENCES District (id)  
);

-- 5
CREATE TABLE COLOMBIA_DB_NDVI (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_district INT,  
    fecha NVARCHAR(100),
    año INT,  
    NDVI FLOAT,
    FOREIGN KEY (id_district) REFERENCES District (id)  
);

-- 6 

CREATE TABLE PERU_DB_POPULATION (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_district INT,
	female_population int,
	male_population int,
	total_population int, 
	FOREIGN KEY (id_district) REFERENCES District (id)  
);

CREATE TABLE COLOMBIA_DB_POPULATION (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_district INT,
	female_population int,
	male_population int,
	total_population int, 
	FOREIGN KEY (id_district) REFERENCES District (id)  
);

-- 7 

CREATE TABLE DB_ROOF_COUNT (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_district INT,
	district_name NVARCHAR(100) NOT NULL,
    red_buildings INT NOT NULL,
    yellow_buildings INT NOT NULL,
    green_buildings INT NOT NULL,
    FOREIGN KEY (id_district) REFERENCES District (id)
);


-- Consulta de Tablas Creadas
select * from PERU_DB_NDWI;
select * from PERU_DB_NDVI;
select * from COLOMBIA_DB_NDWI;
select * from COLOMBIA_DB_NDVI;
select * from PERU_DB_POPULATION;
select * from COLOMBIA_DB_POPULATION;
select * from DB_ROOF_COUNT
select * from District;

