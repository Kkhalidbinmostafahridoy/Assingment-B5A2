-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2
SELECT * FROM species



UPDATE species
SET conservation_status = 'Historic'
WHERE EXTRACT(YEAR FROM discovery_date) < 1800;




