SELECT musica.nome AS cancao,
COUNT(historico_reproducao.musica_id) AS reproducoes FROM musica
LEFT JOIN historico_reproducao ON musica.id = historico_reproducao.musica_id
GROUP BY musica.nome ORDER BY reproducoes DESC, musica.nome ASC
LIMIT 2;
