-- Agenda de contatos — exemplos para MySQL.
-- Os comandos UPDATE, ALTER e DELETE abaixo estão comentados para não alterar dados sem querer.

CREATE DATABASE IF NOT EXISTS dbagenda
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE dbagenda;

CREATE TABLE IF NOT EXISTS contatos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(254),
    observacoes VARCHAR(250)
);

-- Dados fictícios para prática.
INSERT INTO contatos (nome, telefone, email) VALUES
    ('Ana Exemplo', '0000-0001', 'ana@example.com'),
    ('Bruno Exemplo', '0000-0002', 'bruno@example.com'),
    ('Carla Exemplo', '0000-0003', 'carla@example.com');

-- READ: consultar contatos e ordenar por nome.
SELECT * FROM contatos;
SELECT * FROM contatos ORDER BY nome ASC;
SELECT nome, telefone FROM contatos ORDER BY nome ASC;
SELECT * FROM contatos WHERE nome LIKE 'A%';
SELECT * FROM contatos WHERE id = 1;

-- ALTER: exemplos de mudanças de estrutura (descomente apenas para praticar).
-- ALTER TABLE contatos ADD COLUMN telefone_secundario VARCHAR(20);
-- ALTER TABLE contatos MODIFY COLUMN telefone VARCHAR(25);
-- ALTER TABLE contatos DROP COLUMN observacoes;

-- UPDATE: sempre confira o id antes de atualizar.
-- UPDATE contatos SET telefone = '0000-0099' WHERE id = 1;

-- DELETE: sempre confira o id antes de excluir.
-- DELETE FROM contatos WHERE id = 3;

-- Para remover a tabela ou o banco, use comandos DROP somente em ambiente de teste.
-- DROP TABLE contatos;
-- DROP DATABASE dbagenda;
