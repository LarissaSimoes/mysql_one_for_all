SELECT artista.nome AS artista, album.nome AS album
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album ON artista.id = album.artista_id
WHERE artista.nome = 'Elis Regina'
ORDER BY album.nome ASC;