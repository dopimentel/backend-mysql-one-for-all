DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plano 
(
    plano_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome	VARCHAR(512) NOT NULL,
    valor	DOUBLE
);

INSERT INTO SpotifyClone.plano (plano_id, nome, valor) VALUES ('1', 'gratuito', '0');
INSERT INTO SpotifyClone.plano (plano_id, nome, valor) VALUES ('2', 'familiar', '7.99');
INSERT INTO SpotifyClone.plano (plano_id, nome, valor) VALUES ('3', 'universitário', '5.99');
INSERT INTO SpotifyClone.plano (plano_id, nome, valor) VALUES ('4', 'pessoal', '6.99');



CREATE TABLE SpotifyClone.artista 
(
    artista_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome	VARCHAR(512) NOT NULL
);

INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('1', 'Beyoncé');
INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('2', 'Queen');
INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('3', 'Elis Regina');
INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('4', 'Baco Exu do Blues');
INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('5', 'Blind Guardian');
INSERT INTO SpotifyClone.artista (artista_id, nome) VALUES ('6', 'Nina Simone');



CREATE TABLE SpotifyClone.user 
(
    pessoa_usuaria_id	INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria	VARCHAR(512),
    idade	INT,
    plano_id	INT,
	FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano (plano_id)
);

INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('1', 'Barbara Liskov', '82', '1');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('2', 'Robert Cecil Martin', '58', '1');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('3', 'Ada Lovelace', '37', '2');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('4', 'Martin Fowler', '46', '2');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('5', 'Sandi Metz', '58', '2');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('6', 'Paulo Freire', '19', '3');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('7', 'Bell Hooks', '26', '3');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('8', 'Christopher Alexander', '85', '4');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('9', 'Judith Butler', '45', '4');
INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano_id) VALUES ('10', 'Jorge Amado', '58', '4');




CREATE TABLE SpotifyClone.album 
(
    album_id	INT PRIMARY KEY AUTO_INCREMENT,
    name	VARCHAR(512),
    artista_id	INT,
    ano_lancamento	INT,
	FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
);

INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('1', 'Renaissance', '1', '2022');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('2', 'Jazz', '2', '1978');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('3', 'Hot Space', '2', '1982');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('4', 'Falso Brilhante', '3', '1998');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('5', 'Vento de Maio', '3', '2001');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('6', 'QVVJFA?', '4', '2003');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('7', 'Somewhere Far Beyond', '5', '2007');
INSERT INTO SpotifyClone.album (album_id, name, artista_id, ano_lancamento) VALUES ('8', 'I Put A Spell On You', '6', '2012');


CREATE TABLE SpotifyClone.cancao 
(
    cancao_id	INT PRIMARY KEY AUTO_INCREMENT,
    name	VARCHAR(512),
    duracao_segundos	INT,
    album_id	INT,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (album_id)
);

INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('1', '"BREAK MY SOUL"', '279', '1');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('2', '"VIRGO\'S GROOVE"', '369', '1');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('3', '"ALIEN SUPERSTAR"', '116', '1');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('4', '"Don\'t Stop Me Now"', '203', '2');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('5', '"Under Pressure"', '152', '3');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('6', '"Como Nossos Pais"', '105', '4');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('7', '"O Medo de Amar é o Medo de Ser Livre"', '207', '5');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('8', '"Samba em Paris"', '267', '6');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('9', '"The Bard\'s Song"', '244', '7');
INSERT INTO SpotifyClone.cancao (cancao_id, name, duracao_segundos, album_id) VALUES ('10', '"Feeling Good"', '100', '8');



CREATE TABLE SpotifyClone.historico 
(
    pessoa_usuaria_id	INT,
    cancao_id	INT,
    data_reproducao	DATETIME,
	CONSTRAINT PRIMARY KEY(pessoa_usuaria_id, cancao_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.user (pessoa_usuaria_id),
    FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao (cancao_id)
);

INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('1', '8', '2022-02-28 10:45:55');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('1', '2', '2020-05-02 05:30:35');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('1', '10', '2020-03-06 11:22:33');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('2', '10', '2022-08-05 08:05:17');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('2', '7', '2020-01-02 07:40:33');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('3', '10', '2020-11-13 16:55:13');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('3', '2', '2020-12-05 18:38:30');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('4', '8', '2021-08-15 17:10:10');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('5', '8', '2022-01-09 01:44:33');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('5', '5', '2020-08-06 15:23:43');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('6', '7', '2017-01-24 00:31:17');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('6', '1', '2017-10-12 12:35:20');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('7', '4', '2011-12-15 22:30:49');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('8', '4', '2012-03-17 14:56:41');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('9', '9', '2022-02-24 21:14:22');
INSERT INTO SpotifyClone.historico (pessoa_usuaria_id, cancao_id, data_reproducao) VALUES ('10', '3', '2015-12-13 08:30:22');



CREATE TABLE SpotifyClone.seguindo_artistas 
(
    pessoa_usuaria_id	INT,
    artista_id	INT,
  CONSTRAINT PRIMARY KEY(pessoa_usuaria_id, artista_id),
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.user (pessoa_usuaria_id),
	FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
);

INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('1', '1');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('1', '2');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('1', '3');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('2', '1');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('2', '3');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('3', '2');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('4', '4');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('5', '5');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('5', '6');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('6', '6');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('6', '1');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('7', '6');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('9', '3');
INSERT INTO SpotifyClone.seguindo_artistas (pessoa_usuaria_id, artista_id) VALUES ('10', '2');


