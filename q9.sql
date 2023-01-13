SELECT owner.id,fname, lname, gender
FROM owner
LEFT JOIN adoption ON owner.id = adoption.owner_id
WHERE adoption.owner_id IS NULL
;