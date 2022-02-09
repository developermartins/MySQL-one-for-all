CREATE VIEW estatisticas_musicais AS
SELECT COUNT(t2.cancao) AS cancoes, COUNT(DISTINCT(t3.artista)) AS artistas,
COUNT(DISTINCT(t1.album)) AS albuns
FROM SpotifyClone.albuns AS t1
INNER JOIN SpotifyClone.cancoes AS t2
ON t1.album_id = t2.album_id
INNER JOIN SpotifyClone.artistas AS t3
ON t1.id_artista = t3.id_artista;
