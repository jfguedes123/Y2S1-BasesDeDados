.mode columns
.headers on
.nullvalue NULL

select ev.tipo as CARTAO, count(c.cor) as NR_CARTOES_AMARELOS, j.jornada as JORNADA 
from cartao c, jogo j, evento ev
where c.IDevento = ev.ID and ev.IDjogo = j.ID and j.jornada = "Semifinal" 
and c.cor = "Amarelo"
group by 3;