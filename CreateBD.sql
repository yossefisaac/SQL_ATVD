-- Criação do banco de dados
CREATE DATABASE locadora_de_filmes;
USE locadora_de_filmes;

-- Criação da tabela cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    pais VARCHAR(100)
);

-- Criação da tabela ator
CREATE TABLE ator (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100)
);

-- Criação da tabela filmes com novos campos
CREATE TABLE filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ano INT,
    genero VARCHAR(50),
    duracao_do_filme INT,
    preco_locacao DECIMAL(5, 2),
    custo_substituicao DECIMAL(5, 2)
);

-- Tabela intermediária para relacionamento N:N entre filmes e atores
CREATE TABLE filme_ator (
    filme_id INT,
    ator_id INT,
    PRIMARY KEY (filme_id, ator_id),
    FOREIGN KEY (filme_id) REFERENCES filmes(id),
    FOREIGN KEY (ator_id) REFERENCES ator(id)
);

-- Tabela para registrar os alugueis dos filmes pelos clientes
CREATE TABLE aluguel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    filme_id INT,
    data_aluguel DATE,
    data_devolucao DATE,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (filme_id) REFERENCES filmes(id)
);

-- Criação da tabela categorias
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela intermediária para relacionamento N:N entre filmes e categorias
CREATE TABLE filme_categoria (
    filme_id INT,
    categoria_id INT,
    PRIMARY KEY (filme_id, categoria_id),
    FOREIGN KEY (filme_id) REFERENCES filmes(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);
