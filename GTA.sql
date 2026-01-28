/* Lógico_2: */

CREATE TABLE Jogador (
    id_jogador char  PRIMARY KEY,
    email char(250),
    senha numeric(1,4),
    data_criacao date,
    nome_jogador char(250),
    fk_jogo_id_jogo numeric(1,3)
);

CREATE TABLE Jogo (
    Categoria char(25),
    id_jogo_number int PRIMARY KEY,
    data_lançamento date,
    nome_jogo char(250)
);

CREATE TABLE Partida (
    data_partida date,
    id_partida int PRIMARY KEY,
    id_jogador numeric(1,2),
    id_jogo numeric(1,3),
    pontuacao numeric(1,3),
    fk_jogo_id_jogo numeric(1,3)
);

CREATE TABLE Ranking (
    pontuação_total numeric(1,5),
    id_ranking numeric(2,5),
    id_jogador numeric(2,4),
    id_jogo numeric(3,7)
);
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_2
    FOREIGN KEY (fk_Jogo_ID jogo)
    REFERENCES Jogo (ID jogo)
    ON DELETE RESTRICT;