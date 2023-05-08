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
    FOREIGN KEY (artista_id) REFERENCES artista(id)
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.musica(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano_de_lancamento YEAR,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(id),
    duracao TIME
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_first_name VARCHAR(20) NOT NULL,
    usuario_last_name VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    data_de_assinatura DATE NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano(id)
    ) engine = InnoDB;
CREATE TABLE SpotifyClone.seguidor_e_artista(
    id INT PRIMARY KEY,
    usuario_id INT,
    artista_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (artista_id) REFERENCES artista(id),
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
     ) engine = InnoDB;
CREATE TABLE SpotifyClone.historico_reproducao(
    id INT PRIMARY KEY,
    usuario_id INT,
    musica_id INT,
    data_de_reproducao DATETIME NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (musica_id) REFERENCES musica(id),
    CONSTRAINT PRIMARY KEY (usuario_id, musica_id)
     ) engine = InnoDB;
INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');
INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
