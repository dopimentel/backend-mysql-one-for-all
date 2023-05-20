SELECT a.name AS album, COUNT(*) AS favoritadas FROM SpotifyClone.cancoes_favoritas AS cf
INNER JOIN SpotifyClone.cancao AS c
ON cf.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.album AS a
ON a.album_id = c.album_id
GROUP BY a.name
ORDER BY favoritadas DESC, album
LIMIT 3
;