CREATE VIEW faturamento_atual AS 
	
	SELECT MIN(tPlanos.valor) AS faturamento_minimo, MAX(tPlanos.valor) AS faturamento_maximo,
    ROUND(SUM(tPlanos.valor) / COUNT(tUsuarios.usuario), 2) AS faturamento_medio, 
    SUM(tPlanos.valor) AS faturamento_total
    
    FROM SpotifyClone.planos AS tPlanos
    
    INNER JOIN SpotifyClone.usuarios AS tUsuarios
    ON tPlanos.plano_id = tUsuarios.plano_id;