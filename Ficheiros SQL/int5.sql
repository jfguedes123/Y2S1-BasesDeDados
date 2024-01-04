.mode columns
.headers on
.nullvalue NULL

select j.jornada, e.nome as ESTADIO, ev.tipo as EVENTO, ev.minuto
from estadio e, evento ev, jogo j
where e.IDjogo = j.id and ev.idjogo = j.id
order by 1, 4;