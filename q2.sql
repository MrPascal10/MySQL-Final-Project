SELECT COUNT(pet.id) AS unadopted
FROM pet
LEFT JOIN adoption ON pet.id = adoption.pet_id
WHERE adoption.pet_id IS NULL
;