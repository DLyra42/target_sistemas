-- database
USE target_data;

-- criacao da tabela
CREATE TABLE dados_diarios (
	dia INT,
    valor DECIMAL(10,4)
    );
  
-- insercao de dados  
INSERT INTO dados_diarios (dia, valor) VALUES (1, 22174.1664);
INSERT INTO dados_diarios (dia, valor) VALUES (2, 24537.6698); 
INSERT INTO dados_diarios (dia, valor) VALUES (3, 26139.6134); 
INSERT INTO dados_diarios (dia, valor) VALUES (4, 0.0);        
INSERT INTO dados_diarios (dia, valor) VALUES (5, 0.0);        
INSERT INTO dados_diarios (dia, valor) VALUES (6, 26742.6612); 
INSERT INTO dados_diarios (dia, valor) VALUES (7, 0.0);        
INSERT INTO dados_diarios (dia, valor) VALUES (8, 42889.2258); 
INSERT INTO dados_diarios (dia, valor) VALUES (9, 46251.174);  
INSERT INTO dados_diarios (dia, valor) VALUES (10, 11191.4722);
INSERT INTO dados_diarios (dia, valor) VALUES (11, 0.0);       
INSERT INTO dados_diarios (dia, valor) VALUES (12, 0.0);       
INSERT INTO dados_diarios (dia, valor) VALUES (13, 3847.4823); 
INSERT INTO dados_diarios (dia, valor) VALUES (14, 373.7838);  
INSERT INTO dados_diarios (dia, valor) VALUES (15, 2659.7563); 
INSERT INTO dados_diarios (dia, valor) VALUES (16, 48924.2448);
INSERT INTO dados_diarios (dia, valor) VALUES (17, 18419.2614);
INSERT INTO dados_diarios (dia, valor) VALUES (18, 0.0);
INSERT INTO dados_diarios (dia, valor) VALUES (19, 0.0);
INSERT INTO dados_diarios (dia, valor) VALUES (20, 35240.1826);
INSERT INTO dados_diarios (dia, valor) VALUES (21, 43829.1667);
INSERT INTO dados_diarios (dia, valor) VALUES (22, 18235.6852);
INSERT INTO dados_diarios (dia, valor) VALUES (23, 4355.0662);
INSERT INTO dados_diarios (dia, valor) VALUES (24, 13327.1025);
INSERT INTO dados_diarios (dia, valor) VALUES (25, 0.0);
INSERT INTO dados_diarios (dia, valor) VALUES (26, 0.0);
INSERT INTO dados_diarios (dia, valor) VALUES (27, 25681.8318);
INSERT INTO dados_diarios (dia, valor) VALUES (28, 1718.1221);
INSERT INTO dados_diarios (dia, valor) VALUES (29, 13220.495);
INSERT INTO dados_diarios (dia, valor) VALUES (30, 8414.61);

SELECT * FROM dados_diarios;

-- faturamento maximo, minimo e medio 
SELECT 
    AVG(valor) AS media, 
    MIN(valor) AS minimo, 
    MAX(valor) AS maximo 
FROM dados_diarios;

-- Contador de dias com zero
SELECT COUNT(*) AS total_zeros,
dia AS dias_com_zero 
FROM dados_diarios 
WHERE valor = 0
GROUP BY dia;

-- Dias com valor > media 
SELECT * 
FROM dados_diarios 
WHERE valor > (SELECT AVG(valor) FROM dados_diarios);

