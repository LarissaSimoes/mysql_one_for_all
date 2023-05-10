SELECT u.usuario_nome AS pessoa_usuaria,
COUNT(hr.musica_id) AS musicas_ouvidas,
ROUND(SUM(m.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.historico_reproducao AS hr ON u.id = hr.usuario_id
LEFT JOIN SpotifyClone.musica AS m ON hr.musica_id = m.id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome ASC;