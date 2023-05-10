SELECT 
  ROUND(MIN(plano.valor), 2) AS faturamento_minimo,
  ROUND(MAX(plano.valor), 2) AS faturamento_maximo,
  ROUND(AVG(plano.valor), 2) AS faturamento_medio,
  ROUND(SUM(plano.valor), 2) AS faturamento_total
FROM usuario
INNER JOIN plano ON usuario.plano_id = plano.id;



