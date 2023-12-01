SELECT 
clube AS 'CLUBE', 
COUNT(clube) AS 'QUANTIDADE DE GOLS'
FROM gols
/*WHERE vencedor <> '-'*/
GROUP BY clube
ORDER BY 2 DESC ;


SELECT 
atleta AS 'ATLETAS', 
COUNT(atleta) AS 'QUANTIDADE DE GOLS'
FROM gols
/*WHERE vencedor <> '-'*/
GROUP BY atleta
ORDER BY 2 DESC

Quais times tiveram mais gols? flamego e Palmeiras

Quem foram os maiores artilheiros de todas as partidas registradas nos dados ?  Gabriel Barbosa e Diego Souza
