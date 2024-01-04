.mode columns
.headers on
.nullvalue NULL

select j.nome as JOGADORES
from jogador j, cartao c, golo g
where j.equipa = "Atlético PR"
and j.nome not in (
    select j.nome
    from jogador j, cartao c
    where c.jogador = j.nome
)
and j.nome in (
    select j.nome
    from jogador j, golo g
    where g.marcador = j.nome
)
group by 1;