SELECT 
    ar.nome AS artista,
    CASE
		WHEN COUNT(al.artista_id) >= 5 THEN 'A'
        WHEN COUNT(al.artista_id) >= 3 THEN 'B'
        WHEN COUNT(al.artista_id) >= 1 THEN 'C'
		ELSE '-'
    END AS ranking
FROM
    SpotifyClone.cancoes_favoritas AS cf
        INNER JOIN
    SpotifyClone.cancao AS c ON cf.cancao_id = c.cancao_id
        INNER JOIN
    SpotifyClone.album AS al ON c.album_id = al.album_id
        RIGHT JOIN
    SpotifyClone.artista AS ar ON al.artista_id = ar.artista_id
GROUP BY ar.nome
ORDER BY COUNT(al.artista_id) DESC, artista
;