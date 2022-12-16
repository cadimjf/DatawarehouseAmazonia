CREATE DATABASE IF NOT EXISTS amazonia_tempo;

USE amazonia_tempo;

CREATE TABLE IF NOT EXISTS data (
    id_data INT AUTO_INCREMENT PRIMARY KEY,
    dia int,
    mes int,
    ano int
);

CREATE TABLE IF NOT EXISTS temperatura (
    id_temperatura INT AUTO_INCREMENT PRIMARY KEY,
    temperatura_tendencia varchar(255)
);

CREATE TABLE IF NOT EXISTS localizacao (
    id_localizacao INT AUTO_INCREMENT PRIMARY KEY,
    cidade varchar(500),
    estado varchar(255),
    pais VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS vento (
    id_vento INT AUTO_INCREMENT PRIMARY KEY,
    vento_direcao varchar(50),
    vento_intensidade varchar(50)
);

CREATE TABLE IF NOT EXISTS tempo (
    vento_velocidade_minina int,
    vento_velocidade_maxima int,
    media_vento_velocidade_minina float(10),
    media_vento_velocidade_maxima float(10),
    temperatura_minima int,
    temperatura_maxima int,
    media_temperatura_minima FLOAT(10),
    media_temperatura_maxima FLOAT(10),
    condicao_do_tempo_previsca varchar(100)
	id_data INT, 
	id_localizacao int,
	id_temperatura int,
	id_vento int,
	CONSTRAINT fk_data FOREIGN KEY (id_data) REFERENCES data(id_data),
	CONSTRAINT fk_localizacao FOREIGN KEY (id_localizacao) REFERENCES localizacao(id_localizacao),
	CONSTRAINT fk_temperatura FOREIGN KEY (id_temperatura) REFERENCES temperatura(id_temperatura),
	CONSTRAINT fk_vento FOREIGN KEY (id_vento) REFERENCES vento(id_vento)
);

