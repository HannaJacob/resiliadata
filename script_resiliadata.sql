create database resiliadata;
use resiliadata;

-- Criação da tabela de empresas parceiras
CREATE TABLE empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100),
    telefone VARCHAR(20)
);

-- Inserção de dados na tabela de empresas
INSERT INTO empresas (nome, endereco, telefone) VALUES
    ('Senac', 'Rua Santa Luzia, 735 - Cinelândia', '(21) 2268-2578'),
    ('Sesc', 'Rua Domingos Ferreira, 160 - Copacabana', '(21) 2267-7545');


-- Criação da tabela de tecnologias
CREATE TABLE tecnologias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(50) NOT NULL
);

-- Inserção de dados na tabela de tecnologias
INSERT INTO tecnologias (nome, area) VALUES
    ('Python', 'dados'),
    ('Java', 'webdev');


-- Criação da tabela de tecnologias utilizadas pelas empresas
CREATE TABLE tecnologias_empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    empresa_id INT,
    tecnologia_id INT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id)
);

-- Inserção de dados na tabela de tecnologias utilizadas pelas empresas
INSERT INTO tecnologias_empresas (empresa_id, tecnologia_id) VALUES
    (1, 1),
    (2, 2);


-- Criação da tabela de colaboradores
CREATE TABLE colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    empresa_id INT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);


-- Inserção de dados na tabela de colaboradores
INSERT INTO colaboradores (nome, cargo, empresa_id) VALUES
    ('Joana Silva', 'Desenvolvedor', 2),
    ('Carla Oliveira', 'Analista de Dados', 1);

