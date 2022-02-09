SELECT 
    s.name_song AS 'nome',
    COUNT(us.id_song) AS 'reproducoes'
FROM
  SpotifyClone.Played AS us
    JOIN
  SpotifyClone.Songs AS s ON us.id_song = s.id_song
    JOIN 
  SpotifyClone.Users AS user ON user.id_user = us.id_user
WHERE user.id_plan IN (1, 4)
GROUP BY nome ORDER BY nome;
