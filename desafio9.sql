DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN 
	SELECT artista, album 
	FROM SpotifyClone.artistas AS t1 

	INNER JOIN SpotifyClone.albuns AS t2
	ON t1.id_artista = t2.id_artista
    WHERE t1.artista = artista;
END $$

DELIMITER ;
