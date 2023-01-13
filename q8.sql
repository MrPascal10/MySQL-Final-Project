SELECT owner.id, gender, COUNT(adoption.pet_id) AS cat_adopted_count
FROM adoption
JOIN pet ON adoption.pet_id = pet.id
JOIN owner ON adoption.owner_id = owner.id
WHERE pet.kind = 'cat' AND owner.gender = 'f'
GROUP BY owner.id
ORDER BY cat_adopted_count DESC
;