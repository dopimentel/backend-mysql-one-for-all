SELECT c.name AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
GROUP BY c.name
ORDER BY reproducoes DESC, cancao
LIMIT 2;