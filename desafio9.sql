SELECT 
  COUNT(*) AS 'quantidade_musicas_no_historico'
FROM
  SpotifyClone.Played
WHERE
    id_user = 3;
