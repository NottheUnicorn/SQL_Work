select rating
from film

SELECT rating, COUNT(*) 
FROM film
GROUP by rating
order by 2 desc;