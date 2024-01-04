.mode columns
.headers on
.nullvalue NULL


select j.nome as TOP_MARCADORES, e.nome as EQUIPA, count(*) as GOLOS_MARCADOS
from jogador j, equipa e, golo g
where j.equipa = e.nome and g.marcador = j.nome
group by 1
order by 3 desc
limit 5;
