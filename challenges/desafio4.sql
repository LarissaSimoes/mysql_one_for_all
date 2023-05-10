SELECT usuario.usuario_nome AS pessoa_usuaria,
CASE
WHEN YEAR(MAX(historico_reproducao.data_de_reproducao)) >= 2021 THEN 'Ativa'
ELSE 'Inativa'
END AS status_pessoa_usuaria
FROM SpotifyClone.usuario
LEFT JOIN SpotifyClone.historico_reproducao ON usuario.id = historico_reproducao.usuario_id
GROUP BY usuario.id
HAVING MAX(historico_reproducao.data_de_reproducao) IS NOT NULL
ORDER BY pessoa_usuaria ASC;
