SELECT pet.kind, COUNT(adoption.pet_id) AS adopted_count
FROM pet
JOIN adoption ON pet.id = adoption.pet_id
GROUP BY pet.kind
ORDER BY adopted_count DESC
;