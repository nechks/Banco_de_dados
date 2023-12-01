SELECT 
vencedor AS 'VENCEDOR', 
COUNT(vencedor) AS 'QUANTIDADE DE VITORIAS'
FROM partidas
WHERE vencedor <> '-'
GROUP BY vencedor
ORDER BY 2 DESC