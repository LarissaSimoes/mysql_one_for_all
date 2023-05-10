SELECT u.usuario_nome AS pessoa_usuaria,
COUNT(hr.musica_id) AS musicas_ouvidas,
ROUND(SUM(m.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.usuario u
LEFT JOIN SpotifyClone.historico_reproducao hr ON u.id = hr.usuario_id
LEFT JOIN SpotifyClone.musica m ON hr.musica_id = m.id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome ASC;