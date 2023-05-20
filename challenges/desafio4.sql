SELECT 
    p.nome_pessoa_usuaria AS pessoa_usuaria,
    IF (MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
    SpotifyClone.user AS p
        INNER JOIN
    SpotifyClone.historico AS h ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
        INNER JOIN
    SpotifyClone.cancao AS c ON h.cancao_id = c.cancao_id
GROUP BY p.pessoa_usuaria_id
ORDER BY pessoa_usuaria;