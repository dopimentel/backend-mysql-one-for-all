CREATE TABLE SpotifyClone.cancoes_favoritas 
(
    pessoa_usuaria_id	INT NOT NULL,
    cancao_id	INT NOT NULL,
    CONSTRAINT PRIMARY KEY(pessoa_usuaria_id, cancao_id),
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.user (pessoa_usuaria_id),
	FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao (cancao_id)
);

INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('1', '3');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('1', '6');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('1', '10');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('2', '4');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('3', '1');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('3', '3');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('4', '7');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('4', '4');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('5', '10');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('5', '2');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('8', '4');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('9', '7');
INSERT INTO SpotifyClone.cancoes_favoritas (pessoa_usuaria_id, cancao_id) VALUES ('10', '3');
