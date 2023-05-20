SELECT COUNT(*) AS musicas_no_historico FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.historico AS h
ON u.pessoa_usuaria_id = h.pessoa_usuaria_id
WHERE u.nome_pessoa_usuaria = 'Barbara Liskov'
GROUP BY u.pessoa_usuaria_id
;