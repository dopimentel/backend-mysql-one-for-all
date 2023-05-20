SELECT 
    COUNT(DISTINCT c.name) AS cancoes,
    COUNT(DISTINCT ar.nome) AS artistas,
    COUNT(DISTINCT al.name) AS albuns
FROM
    SpotifyClone.cancao AS c
        INNER JOIN
    SpotifyClone.album AS al ON c.album_id = al.album_id
        INNER JOIN
    SpotifyClone.artista AS ar ON al.artista_id = ar.artista_id
;