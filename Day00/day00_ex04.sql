select CONCAT(name, ' (age:', age, ',gender:''', gender, ''',address:''', address, ''')') AS person_information
from person
order by person_information