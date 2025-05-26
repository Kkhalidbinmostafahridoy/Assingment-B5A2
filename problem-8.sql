-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2


SELECT * FROM sightings;


SELECT sighting_id
FROM sightings
Case 
WHEN extract(HOUR FROM sighting_time)<12 'morning' THEN