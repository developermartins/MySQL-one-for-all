CREATE VIEW historico_reproducao_usuarios AS 
	SELECT tUsuarios.usuario AS usuario, tCancao.cancao AS nome
    
    FROM SpotifyClone.reproducoes AS tReproducoes
    
    INNER JOIN SpotifyClone.usuarios AS tUsuarios
    ON tReproducoes.usuario_id = tUsuarios.usuario_id
    
    INNER JOIN SpotifyClone.cancoes AS tCancao
    ON tReproducoes.id_cancao = tCancao.id_cancao
    
    ORDER BY usuario, cancao;
    