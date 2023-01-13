SELECT pet.id, kind, pet.birth_date
FROM pet
LEFT JOIN adoption ON pet.id = adoption.pet_id
WHERE adoption.pet_id IS NULL AND pet.kind = 'dog'
ORDER BY pet.birth_date
;