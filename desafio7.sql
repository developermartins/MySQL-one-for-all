CREATE VIEW perfil_artistas AS 
	
    SELECT tArtista.artista AS artista, tAlbuns.album AS album,
    COUNT(tSeguindo.usuario_id) AS seguidores
    
    FROM SpotifyClone.artistas AS tArtista
    
    INNER JOIN SpotifyClone.albuns AS tAlbuns
    ON tArtista.id_artista = tAlbuns.id_artista

    INNER JOIN SpotifyClone.seguindo_artista AS tSeguindo
    ON tArtista.id_artista = tSeguindo.id_artista
    GROUP BY artista, album
    ORDER BY seguidores DESC, artista, album;
    