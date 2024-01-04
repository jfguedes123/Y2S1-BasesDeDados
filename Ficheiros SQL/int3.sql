.mode columns
.headers on
.nullvalue NULL


select jj.jornada as JORNADA, j.nome as JOGADOR_SAI, e.MINUTO as DEPOIS_INTERVALO, s.JOGADORent as SUBSTITUICAO
from JOGADOR j, evento e, SUBSTITUICAO s, jogo jj 
where s.IDevento = e.id 
and s.JOGADORsai = j.nome 
and e.MINUTO >= 45 
and e.IDjogo = jj.id;