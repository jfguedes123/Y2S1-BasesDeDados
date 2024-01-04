.mode columns
.headers on
.nullvalue NULL

select t.EQUIPAS, sum(t.GOLOS) as GOLOS
from (
    select e.nome as EQUIPAS, j.CASAres as GOLOS
    from equipa e, jogo j 
    where e.nome = j.equipaCASA
    and j.jornada = "Quarterfinal"
    UNION
    select e.nome as EQUIPAS, j.VISres as GOLOS
    from equipa e, jogo j 
    where e.nome = j.equipaVIS
    and j.jornada = "Quarterfinal"
) as t
group by t.EQUIPAS
order by 2 asc 
limit 3;
