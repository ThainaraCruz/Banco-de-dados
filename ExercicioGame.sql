CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255),
resistencia INT,
ferramentas VARCHAR(255),
danos INT,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
habilidadeAtaque INT,
habilidadeDefesa INT,
nivel INT,
PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD classe_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

INSERT INTO tb_classes (descricao, resistencia, ferramentas, danos) VALUES
    ("Guerreiro", 150, "Espada, Escudo, Armadura Pesada", 50),
    ("Mago", 80, "Varinha, Feitiços, Poções", 120),
    ("Arqueiro", 100, "Arco, Flechas, Capa de Invisibilidade", 80),
    ("Ladino", 90, "Adaga, Furtividade, Armadilhas", 70),
    ("Clérigo", 120, "Cajado, Cura, Oração", 40);

INSERT INTO tb_personagens (nome, habilidadeAtaque, habilidadeDefesa, nivel, classe_id) VALUES
    ("Arthur", 5000, 4000, 10, 1), 
    ("Merlin", 1200, 3000, 12, 2),  
    ("Elena", 4000, 5000, 8, 3),  
    ("Raven", 2000, 4200, 9, 4),  
    ("Lucius", 3000, 100, 11, 5),  
    ("Thor", 1500, 120, 15, 1),  
    ("Cassandra", 1300, 1100, 13, 2), 
    ("Kieran", 1100, 1700, 14, 3);  
    
SELECT * FROM tb_personagens WHERE habilidadeAtaque > 2000;

SELECT * FROM tb_personagens WHERE habilidadeDefesa BETWEEN 1000 AND 2000;
  
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
  
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE classe_id = 3;
