SELECT 
    name_song AS 'nome_musica',
    CASE
        WHEN name_song LIKE '%Streets' THEN REPLACE(name_song, 'Streets', 'Code Review')
        WHEN name_song LIKE '%HER Own' THEN REPLACE(name_song, 'Her Own', 'Trybe')
        WHEN name_song LIKE '%Inner Fire' THEN REPLACE(name_song, 'Inner Fire', 'Project')
        WHEN name_song LIKE '%Silly' THEN REPLACE(name_song, 'Silly', 'Nice')
        WHEN name_song LIKE '%Circus' THEN REPLACE(name_song, 'Circus', 'Pull Request')
    END AS 'novo_nome'
FROM
   SpotifyClone.Songs
HAVING novo_nome IS NOT NULL
ORDER BY novo_nome;
