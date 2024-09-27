/*
Exercício 2: 
Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros encontrados pela busca:
*/

select count(f.film_id) as "Quantidade", count(distinct fc.category_id) as "Quantidade de categorias" 
from film f
inner join film_category fc 
on f.film_id = fc.film_id
inner join category c 
on fc.category_id = c.category_id
order by f.film_id asc

/*resposta: filmes 1000 e categorias 16.*/


select count(distinct a.actor_id) as "Quantidade de atores por filmes"
from actor a
inner join film_actor fa
on a.actor_id = fa.actor_id

/*resposta: 200 */


select count(distinct a.actor_id) as "Quantidade de atores por filmes com mais de 2hrs"
from actor a
inner join film_actor fa
on a.actor_id = fa.actor_id
inner join film f 
on fa.film_id = f.film_id 
where f.`length` > 120

/*resposta: 200 */