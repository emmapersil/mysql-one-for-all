SELECT 
  a.name_artist AS 'artista',
  b.name_album AS 'album',
  COUNT(ua.id_artist) AS 'seguidores'
FROM
  SpotifyClone.Albums AS b
    JOIN
  SpotifyClone.Artists AS a ON a.id_artist = b.id_artist
    JOIN
  SpotifyClone.Followers AS ua ON ua.id_artist = b.id_artist
GROUP BY artista , album
ORDER BY seguidores DESC, artista, album;
