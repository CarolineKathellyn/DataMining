-- ========================================================
-- EXERCÍCIO 6: BANCO DE DADOS MARIADB / MYSQL
-- Criação de Schema, Tabelas e Inserção de Dados (com problemas)
-- ========================================================

DROP DATABASE IF EXISTS exercicio6_qualidade_dados;
CREATE DATABASE exercicio6_qualidade_dados CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE exercicio6_qualidade_dados;

-- 1. Tabela de Clientes
CREATE TABLE clientes (
    id_cliente INT,
    nome VARCHAR(100),
    idade INT,
    estado VARCHAR(10),
    renda DECIMAL(10,2)
);

-- 2. Tabela de Produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10,2)
);

-- 3. Tabela de Vendas
CREATE TABLE vendas (
    id_venda INT,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    preco_unitario_aplicado DECIMAL(10,2),
    valor_total DECIMAL(10,2),
    data_venda DATE
);

-- Inserção em Clientes (30 + 2 duplicados = 32 linhas)
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (1, 'Ana Silva', 59, 'RJ', 2787.62);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (2, 'Bruno Santos', 36, 'PR', 5066.92);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (3, 'Carlos Oliveira', 25, 'CE', 3499.80);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (4, 'Daniela Souza', 46, NULL, 2842.67);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (5, 'Eduardo Pereira', 32, 'PR', 8311.59);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (6, 'Fernanda Lima', 20, 'CE', 4786.63);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (7, 'Gabriel Costa', 60, 'CE', 7324.48);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (8, 'Helena Carvalho', 300, 'DF', 5699.19);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (9, 'Igor Martins', 19, 'MG', 10528.60);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (10, 'Juliana Ribeiro', 40, 'SC', 4288.01);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (11, 'Lucas Almeida', 40, 'RJ', 3566.58);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (12, 'Mariana Barbosa', 25, 'RS', 12246.19);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (13, 'Nicolas Rocha', 57, 'SC', 11781.98);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (14, 'Olivia Ferreira', 65, 'PE', 8666.62);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (15, 'Paulo Ramos', 43, NULL, 8848.47);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (16, 'Quezia Monteiro', 59, 'DF', 12682.70);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (17, 'Rafael Gomes', 42, 'DF', 4711.32);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (18, 'Sabrina Alves', 23, 'SP', 10104.53);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (19, 'Tiago Mendes', 37, 'RJ', 12336.15);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (20, 'Ursula Castro', 25, 'BA', 5696.70);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (21, 'Victor Dias', 59, 'RS', 4370.52);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (22, 'Yasmin Cardoso', 41, 'PR', -4500.00);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (23, 'Wagner Teixeira', 63, 'RJ', 9505.01);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (24, 'Xavier Pinto', 29, 'CE', 10884.96);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (25, 'Zilda Morais', 29, 'PE', 6863.74);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (26, 'Arthur Correia', 59, 'CE', 5025.57);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (27, 'Beatriz Pires', 39, 'SP', 5134.05);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (28, 'Caio Nogueira', 21, NULL, 7113.40);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (29, 'Debora Silveira', 23, 'PR', 13001.07);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (30, 'Elias Freitas', 55, 'RS', 4945.21);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (12, 'Mariana Barbosa', 25, 'RS', 12246.19);
INSERT INTO clientes (id_cliente, nome, idade, estado, renda) VALUES (25, 'Zilda Morais', 29, 'PE', 6863.74);

-- Inserção em Produtos (10 linhas)
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (1, 'Notebook Pro 15', 'Eletrônicos', 4500.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (2, 'Monitor 27 4K', 'Eletrônicos', 1800.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (3, 'Teclado Mecânico RGB', 'Periféricos', 350.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (4, 'Mouse Sem Fio Ergonômico', 'Periféricos', 180.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (5, 'Headset Gamer 7.1', 'Áudio', 290.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (6, 'Cadeira Ergonômica', 'Móveis', 950.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (7, 'Mesa Digitalizadora', 'Acessórios', 420.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (8, 'Webcam Full HD', 'Acessórios', 250.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (9, 'Suporte Articulado Monitor', 'Móveis', 190.00);
INSERT INTO produtos (id_produto, nome_produto, categoria, preco_unitario) VALUES (10, 'Hub USB-C 7 em 1', 'Acessórios', 160.00);

-- Inserção em Vendas (100 + 3 duplicadas = 103 linhas)
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (1, 16, 7, 4, 420.00, 1680.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (2, 5, 4, 5, 180.00, 900.00, '2026-05-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (3, 24, 10, 4, 160.00, 640.00, '2026-05-13');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (4, 12, 4, 2, 180.00, 360.00, '2026-05-16');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (5, 3, 1, 1, 4500.00, 4500.00, '2026-02-21');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (6, 6, 7, 5, 420.00, 2100.00, '2026-01-13');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (7, 13, 10, 4, 160.00, 640.00, '2026-05-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (8, 18, 1, 1, 4500.00, 4500.00, '2026-06-18');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (9, 25, 5, 3, 290.00, 870.00, '2026-01-10');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (10, 14, 3, NULL, 350.00, 1400.00, '2026-01-24');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (11, 29, 5, 5, 290.00, 1450.00, '2026-02-17');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (12, 30, 2, 3, 1800.00, 5400.00, '2026-06-17');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (13, 20, 4, 2, 180.00, 360.00, '2026-03-25');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (14, 6, 9, 5, 190.00, 950.00, '2026-01-20');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (15, 11, 8, 1, 250.00, 250.00, '2026-01-12');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (16, 29, 5, 2, 290.00, 580.00, '2026-01-08');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (17, 29, 10, 1, 160.00, 160.00, '2026-01-24');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (18, 16, 2, 5, 1800.00, 9999.00, '2026-02-05');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (19, 22, 8, 5, 250.00, 1250.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (20, 17, 10, 4, 160.00, 640.00, '2026-02-18');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (21, 25, 4, 3, 180.00, 540.00, '2026-04-22');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (22, 21, 6, 4, 950.00, 3800.00, '2026-05-15');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (23, 4, 4, 2, 180.00, 360.00, '2026-01-11');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (24, 1, 10, 5, 160.00, 800.00, '2026-02-19');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (25, 8, 1, 1, 4500.00, 4500.00, '2026-06-21');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (26, 2, 4, 1, 180.00, 180.00, '2026-01-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (27, 11, 2, 5, 1800.00, 9000.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (28, 22, 8, 2, 250.00, 500.00, '2026-05-05');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (29, 24, 10, 5, 160.00, 800.00, '2026-04-08');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (30, 26, 8, 4, 250.00, 1000.00, '2026-02-04');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (31, 4, 7, 3, 420.00, 1260.00, '2026-04-14');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (32, 15, 1, 1, 4500.00, 4500.00, '2026-01-13');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (33, 24, 6, 1, 950.00, 950.00, '2026-02-07');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (34, 7, 9, 4, 190.00, 760.00, '2026-02-14');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (35, 6, 5, NULL, 290.00, 1160.00, '2026-02-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (36, 30, 2, 4, 1800.00, 7200.00, '2026-05-04');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (37, 2, 9, 1, 190.00, 190.00, '2026-01-25');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (38, 28, 4, 2, 180.00, 360.00, '2026-04-16');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (39, 16, 4, 4, 180.00, 720.00, '2026-01-06');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (40, 13, 1, 4, 4500.00, 18000.00, '2026-03-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (41, 26, 8, 3, 250.00, 750.00, '2026-04-23');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (42, 24, 9, 4, 190.00, 760.00, '2026-02-07');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (43, 10, 4, 1, 180.00, 180.00, '2026-05-24');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (44, 18, 1, 3, 4500.00, 13500.00, '2026-01-02');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (45, 19, 8, 5, 250.00, -700.00, '2026-05-06');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (46, 2, 9, 1, 190.00, 190.00, '2026-02-03');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (47, 20, 2, 2, 1800.00, 3600.00, '2026-04-04');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (48, 29, 10, 2, 160.00, 320.00, '2026-05-20');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (49, 2, 10, 1, 160.00, 160.00, '2026-04-22');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (50, 19, 10, 5, 160.00, 50.00, '2026-03-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (51, 7, 6, 2, 950.00, 1900.00, '2026-03-13');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (52, 5, 5, 4, 290.00, 1160.00, '2026-03-25');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (53, 30, 2, 1, 1800.00, 1800.00, '2026-04-20');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (54, 19, 2, 1, 1800.00, 1800.00, '2026-05-07');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (55, 17, 5, 2, 290.00, 580.00, '2026-03-03');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (56, 29, 4, 3, 180.00, 540.00, '2026-03-06');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (57, 15, 9, 3, 190.00, 570.00, '2026-05-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (58, 21, 9, 1, 190.00, 190.00, '2026-06-27');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (59, 18, 5, 1, 290.00, 290.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (60, 4, 2, NULL, 1800.00, 9000.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (61, 10, 10, 2, 160.00, 320.00, '2026-06-11');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (62, 7, 5, 5, 290.00, 1450.00, '2026-04-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (63, 29, 1, 1, 4500.00, 4500.00, '2026-06-14');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (64, 27, 5, 1, 290.00, 290.00, '2026-01-11');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (65, 25, 3, 3, 350.00, 1050.00, '2026-02-24');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (66, 15, 9, 4, 190.00, 760.00, '2026-05-01');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (67, 4, 2, 2, 1800.00, 3600.00, '2026-05-02');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (68, 27, 6, 5, 950.00, 4750.00, '2026-05-05');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (69, 14, 3, 1, 350.00, 350.00, '2026-03-12');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (70, 29, 1, 3, 4500.00, 13500.00, '2026-02-22');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (71, 8, 2, 3, 1800.00, 5400.00, '2026-05-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (72, 14, 10, -3, 160.00, 320.00, '2026-02-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (73, 6, 3, 4, 350.00, 1400.00, '2026-01-06');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (74, 24, 6, 4, 950.00, 3800.00, '2026-06-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (75, 24, 4, 3, 180.00, 540.00, '2026-02-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (76, 23, 2, 4, 1800.00, 7200.00, '2026-01-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (77, 16, 4, 2, 180.00, 360.00, '2026-04-12');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (78, 10, 4, 2, 180.00, 360.00, '2026-01-22');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (79, 7, 7, 3, 420.00, 1260.00, '2026-03-28');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (80, 3, 5, 3, 290.00, 870.00, '2026-06-17');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (81, 13, 9, 3, 190.00, 570.00, '2026-01-04');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (82, 29, 5, 2, 290.00, 580.00, '2026-05-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (83, 2, 2, 5, 1800.00, 9000.00, '2026-04-12');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (84, 24, 6, 4, 950.00, 3800.00, '2026-05-17');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (85, 4, 7, NULL, 420.00, 2100.00, '2026-02-09');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (86, 2, 7, 1, 420.00, 420.00, '2026-05-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (87, 18, 4, 3, 180.00, 540.00, '2026-04-03');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (88, 22, 6, 5, 950.00, 4750.00, '2026-03-22');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (89, 28, 2, 3, 1800.00, 5400.00, '2026-05-10');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (90, 22, 7, 3, 420.00, 1260.00, '2026-04-23');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (91, 10, 9, 2, 190.00, 380.00, '2026-02-14');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (92, 22, 7, 2, 420.00, 840.00, '2026-05-19');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (93, 10, 7, 5, 420.00, 2100.00, '2026-01-10');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (94, 10, 4, 4, 180.00, 720.00, '2026-05-20');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (95, 21, 6, 4, 950.00, 3800.00, '2026-04-15');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (96, 22, 4, 5, 180.00, 900.00, '2026-04-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (97, 29, 3, 1, 350.00, 350.00, '2026-03-17');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (98, 22, 10, 3, 160.00, 480.00, '2026-01-27');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (99, 25, 4, 3, 180.00, 540.00, '2026-02-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (100, 7, 3, 1, 350.00, 350.00, '2026-01-08');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (15, 11, 8, 1, 250.00, 250.00, '2026-01-12');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (40, 13, 1, 4, 4500.00, 18000.00, '2026-03-26');
INSERT INTO vendas (id_venda, id_cliente, id_produto, quantidade, preco_unitario_aplicado, valor_total, data_venda) VALUES (70, 29, 1, 3, 4500.00, 13500.00, '2026-02-22');