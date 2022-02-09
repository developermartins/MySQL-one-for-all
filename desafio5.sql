CREATE VIEW top_2_hits_do_momento AS 
	SELECT tCancoes.cancao, COUNT(tReproducoes.id_cancao) AS reproducoes
    
    FROM SpotifyClone.cancoes AS tCancoes
    
    INNER JOIN SpotifyClone.reproducoes AS tReproducoes
    ON tCancoes.id_cancao = tReproducoes.id_cancao
    
    GROUP BY cancao
    HAVING COUNT(*) > 1
    ORDER BY reproducoes DESC, cancao;
    