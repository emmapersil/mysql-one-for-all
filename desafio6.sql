SELECT 
    MIN(price) AS 'faturamento_minimo',
    MAX(price) AS 'faturamento_maximo',
	  ROUND(AVG(price), 2) AS 'faturamento_medio',
    SUM(price) AS 'faturamento_total'
FROM SpotifyClone.Users AS user
JOIN SpotifyClone.Subscriptions AS plan ON plan.id_plan = user.id_plan;
