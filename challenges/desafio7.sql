SELECT artista.nome AS artista, album.nome AS album, COUNT(seguidor_e_artista.usuario_id) AS pessoas_seguidoras
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album ON artista.id = album.artista_id
LEFT JOIN SpotifyClone.seguidor_e_artista ON artista.id = seguidor_e_artista.artista_id
GROUP BY artista.id, album.id
ORDER BY COUNT(seguidor_e_artista.usuario_id) DESC, artista.nome ASC, album.nome ASC;


