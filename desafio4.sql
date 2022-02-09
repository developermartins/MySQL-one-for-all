CREATE VIEW top_3_artistas AS 
	SELECT tArtista.artista, COUNT(DISTINCT(tSeguindo.usuario_id )) AS seguidores
    
    FROM SpotifyClone.seguindo_artista AS tSeguindo
    
    INNER JOIN SpotifyClone.artistas AS tArtista
    ON tSeguindo.id_artista = tArtista.id_artista
    
    GROUP BY artista
    HAVING COUNT(*) > 1
    ORDER BY seguidores DESC, artista;
    