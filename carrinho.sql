-- Carrinho de compras — exemplos para MySQL.
-- Não há comandos DROP executáveis para evitar apagar o banco acidentalmente.

CREATE DATABASE IF NOT EXISTS carrinhobdcompra
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
USE carrinhobdcompra;

CREATE TABLE IF NOT EXISTS carrinho (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL DEFAULT 1
);

INSERT INTO carrinho (produto, valor, quantidade) VALUES
    ('Lápis', 1.00, 10),
    ('Caneta', 1.25, 50),
    ('Régua', 3.50, 20),
    ('Borracha', 1.05, 40),
    ('Cola', 2.50, 5),
    ('Apontador', 0.50, 40),
    ('Caderno', 18.00, 20),
    ('Bloco de notas', 4.00, 3),
    ('Folha sulfite A4', 0.20, 10),
    ('Corretivo', 3.00, 20);

SELECT * FROM carrinho;
SELECT SUM(valor * quantidade) AS total_carrinho FROM carrinho;

-- Exemplos de alteração: descomente somente se quiser mudar os dados de teste.
-- UPDATE carrinho SET quantidade = 15 WHERE id = 5;
-- UPDATE carrinho SET quantidade = 2 WHERE id = 10;
-- DELETE FROM carrinho WHERE id = 6;
