SELECT 
vencedor AS 'VENCEDOR', 
COUNT(vencedor) AS 'QUANTIDADE DE VITORIAS'
FROM partidas
WHERE vencedor <> '-'
GROUP BY vencedor

Reposta: Quais times foram os maiores vencedores, e quais times ficaram com menos vitórias? O timne com maior vitorias foi o Palmeiras com 160 vitorias, os times com menos vitorias foi Parana, Santa cruz, Joinville e CSA. 