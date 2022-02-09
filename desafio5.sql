SELECT s.name_song AS 'cancao',
COUNT(us.date_listened) AS 'reproducoes'
FROM SpotifyClone.Played AS us
JOIN SpotifyClone.Songs AS s ON s.id_song = us.id_song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2; 
