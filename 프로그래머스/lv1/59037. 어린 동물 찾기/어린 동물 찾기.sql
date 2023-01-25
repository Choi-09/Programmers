SELECT
ANIMAL_ID,
NAME
from ANIMAL_INS
where INTAKE_CONDITION not like 'AGED'
order by Animal_id;