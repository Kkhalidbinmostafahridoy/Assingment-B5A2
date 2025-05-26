SELECT * FROM rangers;


DELETE FROM rangers
WHERE ranger_id NOT IN(
    SELECT DISTINCT ranger_id FROM sightings
)
