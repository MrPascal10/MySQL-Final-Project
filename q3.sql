SELECT COUNT(adoption.pet_id) AS pets_adopted_2016_2018
FROM adoption
WHERE adoption.adoption_date BETWEEN '2016-01-01' AND '2018-01-01'
;