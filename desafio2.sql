SELECT 
    COUNT(DISTINCT s.id_song) AS 'cancoes',
    COUNT(DISTINCT a.id_artist) AS 'artistas',
    COUNT(DISTINCT b.id_album) AS 'albuns'
FROM
    SpotifyClone.Songs AS s,
    SpotifyClone.Artists AS a,
    SpotifyClone.Albums AS b;
    