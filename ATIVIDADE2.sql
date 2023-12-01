SELECT 
clube AS 'CLUBE', 
cartao AS 'TIPO DE CARTAO',
COUNT(cartao) AS 'QUANTIDADE DE CARTOES'
FROM cartoes
GROUP BY clube, cartao
ORDER BY 4 DESC

Quais times levaram o maior numero de cartões? Santos e São Paulo

Quais jogadores receberam o maior número de cartões? Fagner, joel e walter kannemann 
