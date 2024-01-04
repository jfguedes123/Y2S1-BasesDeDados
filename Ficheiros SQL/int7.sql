.mode columns
.headers on
.nullvalue NULL


select jornada, data as DATA, equipaCASA as CASA, equipaVIS as VISITA, CASAres as RES_CASA, VISres as RES_VISITA
from jogo 
where (equipaCASA = "Palmeiras" and CASAres < VISres) 
or (equipaVIS = "Palmeiras" and CASAres > VISres);