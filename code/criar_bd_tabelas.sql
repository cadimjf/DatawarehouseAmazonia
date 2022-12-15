CREATE DATABASE IF NOT EXISTS amazonia_tempo;

CREATE TABLE IF NOT EXISTS data (
    id_data INT AUTO_INCREMENT PRIMARY KEY,
    dia int,
    mes int,
    ano int
);

CREATE TABLE IF NOT EXISTS temperatura (
    id_temperatura INT AUTO_INCREMENT PRIMARY KEY,
    temperatura_tendencia varchar2(255)
);

CREATE TABLE IF NOT EXISTS localizacao (
    id_localizacao INT AUTO_INCREMENT PRIMARY KEY,
    cidade varchar2(500),
    estado varchar2(255),
    pais varchar2(255)
);

CREATE TABLE IF NOT EXISTS vento (
    id_vento INT AUTO_INCREMENT PRIMARY KEY,
    vento_direcao varchar2(50),
    vento_intensidade varchar2(50)
);

CREATE TABLE IF NOT EXISTS tempo (
    vento_velocidade_minina int,
    vento_velocidade_maxima int,
    media_vento_velocidade_minina float(10),
    media_vento_velocidade_maxima float(10),
    temperatura_minima int,
    temperatura_maxima int,
    media_temperatura_minima int,
    media_temperatura_maxima int,
    condicao_do_tempo_previsca varhchar2(100)
);

