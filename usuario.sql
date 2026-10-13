-- Tabela de usuários para estudo — MySQL.
-- Armazene somente hashes seguros gerados pela aplicação (Argon2id, bcrypt ou scrypt).
-- Não grave senhas em texto puro e não use MD5 para senhas.

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

DESCRIBE usuarios;
SELECT id, usuario, login FROM usuarios;

-- Exemplo de consulta por login:
-- SELECT id, usuario FROM usuarios WHERE login = 'usuario@example.com';

-- Exemplo de alteração e exclusão; confira o id antes de executar.
-- UPDATE usuarios SET usuario = 'Nome atualizado' WHERE id = 1;
-- DELETE FROM usuarios WHERE id = 1;
