CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50),
    valor DECIMAL(5,2)
) ENGINE=InnoDB;

CREATE TABLE usuarios(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    idade INT,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE=InnoDB;

CREATE TABLE artistas(
	id_artista INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE albuns(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(100), 
    id_artista INT NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista) 
) ENGINE=InnoDB;

CREATE TABLE cancoes(
	id_cancao INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(100),
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE=InnoDB;

CREATE TABLE reproducoes(
    usuario_id INT NOT NULL,
    id_cancao INT NOT NULL,
    PRIMARY KEY(`usuario_id`, `id_cancao`),
    FOREIGN KEY (`usuario_id`) REFERENCES usuarios(`usuario_id`),
    FOREIGN KEY (`id_cancao`) REFERENCES cancoes(`id_cancao`)
) ENGINE=InnoDB;

CREATE TABLE seguindo_artista(
    usuario_id INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY(`usuario_id`, `id_artista`),
    FOREIGN KEY (`usuario_id`) REFERENCES usuarios(`usuario_id`),
    FOREIGN KEY (`id_artista`) REFERENCES artistas(`id_artista`)
) ENGINE=InnoDB;

INSERT INTO planos (plano, valor) VALUES 
('Gratuito', '0'),
('Familiar','7.99'),
('Universitário','5.99');

INSERT INTO usuarios (usuario, idade, plano_id) VALUES
('Thati', '23', '1'),
('Cintia','35','2'),
('Bill','20','3'),
('Roger','45','1');

INSERT INTO artistas (artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns (album, id_artista) VALUES
('Envious', '1'),
('Exuberant','1'),
('Hallowed Steam','2'),
('Incandescent','3'),
('Temporary Culture','4'); 

INSERT INTO cancoes (cancao, album_id) VALUES
('Soul For Us','1'),
('Reflections Of Magic','1'),
('Dance With Her Own','1'),
('Troubles Of My Inner Fire','2'),
('Time Fireworks','2'),
('Magic Circus','3'),
('Honey, So Do I','3'),
("Sweetie, Let's Go Wild",'3'),
('She Knows','3'),
('Fantasy For Me','4'),
('Celebration Of More','4'),
('Rock His Everything','4'),
('Home Forever','4'),
('Diamond Power','4'),
("Honey, Let's Be Silly",'4'),
('Thang Of Thunder','5'),
('Words Of Her Life','5'),
('Without My Streets','5');

INSERT INTO reproducoes (usuario_id, id_cancao) VALUES
('1','1'),
('1','6'),
('1', '14'),
('1','16'),
('2','13'),
('2','17'),
('2','2'),
('2','15'),
('3','4'),
('3','16'),
('3','6'),
('4','3'),
('4','18'),
('4','11');

INSERT INTO seguindo_artista (usuario_id, id_artista) VALUES 
('1','1'),
('1','4'),
('1','3'),
('2','1'),
('2','3'),
('3','2'),
('3','1'),
('4','4');