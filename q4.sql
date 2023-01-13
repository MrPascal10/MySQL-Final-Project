SELECT pet.arrival_date, id, DATEDIFF(adoption.adoption_date, pet.arrival_date) AS waiting_days
FROM pet
JOIN adoption ON pet.id = adoption.pet_id
ORDER BY waiting_days DESC
;