<<<<<<< HEAD
-- Active: 1747412854240@@localhost@5432@conservation_db_b5a2

SELECT * FROM rangers;


DELETE FROM rangers
WHERE ranger_id NOT IN(
    SELECT DISTINCT ranger_id FROM sightings
)

