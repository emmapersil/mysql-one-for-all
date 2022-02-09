SELECT 
  a.name_artist AS 'artista', b.name_album AS 'album'
FROM
  SpotifyClone.Artists AS a
    JOIN
  SpotifyClone.Albums AS b ON b.id_artist = a.id_artist
HAVING artista = 'Walter Phoenix'; 
