DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE historico INT;
    SELECT COUNT(*) FROM SpotifyClone.reproducoes WHERE usuario_id = idUsuario 
    INTO historico;
    RETURN historico;
END	$$

DELIMITER ;
