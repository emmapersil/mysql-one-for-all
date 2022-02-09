SELECT 
  u.name_user AS 'usuario',
  COUNT(us.id_song) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(s.song_length) / 60, 2) AS 'total_minutos'
FROM
  SpotifyClone.Played AS us
    JOIN
  SpotifyClone.Users AS u ON u.id_user = us.id_user
    JOIN
  SpotifyClone.Songs AS s ON s.id_song = us.id_song
GROUP BY usuario ORDER BY usuario;
