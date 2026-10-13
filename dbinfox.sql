-- Banco de dados de exemplo para uma assistência técnica — MySQL.
-- Não use senhas em texto puro nem MD5. Gere hashes de senha com Argon2id,
-- bcrypt ou scrypt na aplicação e armazene somente o hash resultante.

CREATE DATABASE IF NOT EXISTS dbinfox
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE dbinfox;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100) NOT NULL,
    login VARCHAR(100) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS clientes (
    idcli INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fone VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS tbOs (
    os INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    equipamento VARCHAR(250) NOT NULL,
    defeito VARCHAR(250) NOT NULL,
    dataOs TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    statusOs VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2),
    idcli INT NOT NULL,
    CONSTRAINT fk_tbos_clientes FOREIGN KEY (idcli) REFERENCES clientes(idcli)
) ENGINE=InnoDB;

SHOW TABLES;
DESCRIBE usuarios;
DESCRIBE clientes;
DESCRIBE tbOs;
SELECT * FROM usuarios;
SELECT * FROM clientes;
SELECT * FROM tbOs;

-- Exemplo de inserção de uma OS, após cadastrar um cliente:
-- INSERT INTO clientes (nome, fone) VALUES ('Cliente Exemplo', '0000-0000');
-- INSERT INTO tbOs (equipamento, defeito, statusOs, valor, idcli)
-- VALUES ('Notebook de exemplo', 'Não liga', 'Orçamento', 0.00, 1);

-- Comandos destrutivos de exemplo; mantenha comentados fora de um banco descartável.
-- DROP TABLE tbOs;
-- DROP TABLE clientes;
-- DROP TABLE usuarios;
-- DROP DATABASE dbinfox;
