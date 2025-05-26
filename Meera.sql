-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2
-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2
-- Active: 1747412854240@@localhost@5432@conservation_db
create table rangers(
    ranger_id int primary key,
    name varchar(255) not null,
    region VARCHAR (50) NOT NULL
)

select * from rangers;

CREATE Table species(
    species_id int primary key,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date VARCHAR(100) NOT NULL,
    conservation_status VARCHAR(100) NOT NULL
)

SELECT * FROM species;

CREATE table sightings(
    sighting_id int primary key,
    ranger_id INTEGER REFERENCES rangers(ranger_id) ,
    species_id INTEGER REFERENCES species(species_id),
    sighting_time TIMESTAMP not NULL,
    location VARCHAR(255) NOT NULL,
    notes VARCHAR(100) not NULL
)
 
 select * from sightings


 INSERT into rangers(ranger_id,NAME,region) VALUES
 (1,'John Smith','North America'),
 (2,'Jane Doe','South America'),
 (3,'Bob Johnson','Africa');


INSERT INTO species (species_id, common_name, scientific_name, discovery_date, conservation_status) VALUES
(1, 'Lion', 'Panthera leo', '1778-01-01', 'Endangered'),
(2, 'Elephant', 'Loxodonta africana', '1562-01-01', 'Endangered'),
(3, 'Giraffe', 'Giraffa camelopardalis', '1876-01-01', 'Vulnerable'),
(4, 'Hyena', 'Crocuta crocuta', '1902-01-01', 'Least Concern');

INSERT into sightings (sighting_id,species_id,ranger_id,location,sighting_time,notes) VALUES
(1,1,1,'North America','2022-01-01 14:20','Camera trap image captured'),
(2,2,2,'South America','2022-01-02 07:04','Juvenile seen '),
(3,3,3,'Africa','2022-01-03 16:23','Feeding observed'),
(4,1,2,'North America','2022-01-04 12:40','(NULL)');



