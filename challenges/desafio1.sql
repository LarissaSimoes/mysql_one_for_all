DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.plano(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DOUBLE(3,2)
) engine = InnoDB;
CREATE TABLE SpotifyClone.artista(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.album(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano_de_lancamento YEAR,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(id)
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.musica(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano_de_lancamento YEAR,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(id),
    duracao TIME
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_first_name VARCHAR(20) NOT NULL,
    usuario_last_name VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    data_de_assinatura DATE NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(id)
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.seguidor_e_artista(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(id),
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
     ) engine = InnoDB;
CREATE TABLE SpotifyClone.historico_reproducao(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    data_de_reproducao DATETIME NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(id),
    FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musica(id),
    CONSTRAINT PRIMARY KEY (usuario_id, musica_id)
     ) engine = InnoDB;
INSERT INTO SpotifyClone.plano (id, nome, valor)
VALUES
  (1, 'gratuito', 0.00),
  (2, 'universitário', 5.99),
  (3, 'pessoal', '6.99'),
  (4, 'familiar', 7.99);
INSERT INTO SpotifyClone.artista (id, nome)
VALUES
  (1, 'Beyoncé'),
  (2, 'Queen'),
  (3, 'Elis Regina'),
  (4, 'Baco Exu do Blues'),
  (5, 'Blind Guardian'),
  (6, 'Nina Simone');
INSERT INTO SpotifyClone.album (id, nome, ano_de_lancamento, artista_id)
VALUES
  (1, 'Renaissance', 2022, 1),
  (2, 'Jazz', 1978, 2),
  (3, 'Hot Space', 1982, 2),
  (4, 'Falso Brilhante', 1998, 3),
  (5, 'Vento de Maio', 2001, 3),
  (6, 'QVVJFA?', 2003, 4),
  (7, 'Somewhere Far Beyond', 2007, 5),
  (8, 'I Put A Spell On You', 2012, 6);
  INSERT INTO SpotifyClone.musica (id, nome, ano_de_lancamento, artista_id)
VALUES
  (1, 'Renaissance', 2022, 1),
  (2, 'Jazz', 1978, 2),
  (3, 'Hot Space', 1982, 2),
  (4, 'Falso Brilhante', 1998, 3),
  (5, 'Vento de Maio', 2001, 3),
  (6, 'QVVJFA?', 2003, 4),
  (7, 'Somewhere Far Beyond', 2007, 5),
  (8, 'I Put A Spell On You', 2012, 6);