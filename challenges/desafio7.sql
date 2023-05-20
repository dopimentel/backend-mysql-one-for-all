SELECT 
    ar.nome AS artista,
    al.name AS album,
    COUNT(sa.artista_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artista AS ar
        INNER JOIN
    SpotifyClone.album AS al ON ar.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artistas AS sa ON ar.artista_id = sa.artista_id
GROUP BY al.name , ar.nome , sa.artista_id
ORDER BY pessoas_seguidoras DESC , artista , album
;
