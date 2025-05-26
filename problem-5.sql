-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2
SELECT * FROM species


SELECT s.common_name
FROM species s
LEFT JOIN sightings si ON s.species_id = si.species_id
WHERE si.species_id IS NULL;
