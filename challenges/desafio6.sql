SELECT 
    FORMAT(MIN(p.valor), 2) AS faturamento_minimo,
    FORMAT(MAX(p.valor), 2) AS faturamento_maximo,
    FORMAT(ROUND(AVG(p.valor), 2), 2) AS faturamento_medio,
    FORMAT(ROUND(SUM(p.valor), 2), 2) AS faturamento_total
FROM
    SpotifyClone.user AS u
        INNER JOIN
    SpotifyClone.plano AS p ON u.plano_id = p.plano_id
;