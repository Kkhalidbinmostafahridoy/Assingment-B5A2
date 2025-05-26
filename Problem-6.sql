-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2

SELECT * FROM sightings;


SELECT s.common_name, si.sighting_time, r.name
FROM sightings si
JOIN species s ON si.species_id = s.species_id
JOIN rangers r ON si.ranger_id = r.ranger_id
ORDER BY si.sighting_time DESC
LIMIT 2;


