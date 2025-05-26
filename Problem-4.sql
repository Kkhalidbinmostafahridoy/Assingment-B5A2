-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2

DELETE FROM rangers
WHERE ranger_id = 4;


SELECT r.name, COUNT(s.sighting_id) AS total_sightings FROM rangers r
LEFT JOIN sightings s ON r.ranger_id = s.ranger_id
GROUP BY r.name;
