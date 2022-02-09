SELECT 
  u.name_user AS 'usuario',
  CASE
    WHEN MAX(us.date_listened) >= '2021-01-01' THEN 'Usuário ativo'
    WHEN MAX(us.date_listened) < '2021-01-01' THEN 'Usuário inativo'
  END AS 'condicao_usuario'
FROM
  SpotifyClone.Played AS us
    JOIN
  SpotifyClone.Users AS u ON u.id_user = us.id_user
GROUP BY usuario ORDER BY usuario;
