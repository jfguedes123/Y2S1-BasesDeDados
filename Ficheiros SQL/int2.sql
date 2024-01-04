.mode columns
.headers on
.nullvalue NULL

select e.nome as EQUIPA, count(*) as GOLOS 
from golo g, equipa e  
where g.equipafav = e.nome 
group by EQUIPAfav
order by count(*) desc
limit 5;