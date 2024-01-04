.mode columns
.headers on
.nullvalue NULL

select e.nome as "EQUIPAS ELIMINADAS", j.JORNADA
from equipa e, jogo j 
where (j.equipaCASA = e.nome or j.equipaVIS = e.nome) 
and j.jornada = "Round of 16"
and e.nome not in (
    select e.nome
    from jogo j, equipa e 
    where (j.equipaCASA = e.nome or j.equipaVIS = e.nome) and j.JORNADA = "Quarterfinal"
)
group by 1;