CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL,
    duracao INT,  -- duração do curso em horas
    categoria_id BIGINT,
    data_inicio DATE,
    nivel VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Tecnologia", "Cursos relacionados a desenvolvimento de software, programação e tecnologias emergentes"),
    ("Negócios", "Cursos sobre empreendedorismo, gestão de empresas e estratégias de negócios"),
    ("Marketing Digital", "Cursos sobre estratégias de marketing digital, SEO e redes sociais"),
    ("Design", "Cursos sobre design gráfico, UX/UI e ferramentas de criação digital"),
    ("Desenvolvimento Pessoal", "Cursos sobre autoconhecimento, produtividade e habilidades interpessoais");

INSERT INTO tb_cursos (nome, preco, duracao, categoria_id, data_inicio, nivel) VALUES
    ("Introdução à Programação", 499.90, 30, 1, "2025-03-01", "Básico"),
    ("Gestão de Projetos", 699.99, 40, 2, "2025-03-10", "Intermediário"),
    ("SEO para Iniciantes", 1490.90, 20, 3, "2025-03-15", "Básico"),
    ("Design Gráfico com Photoshop", 349.00, 50, 4, "2025-03-20", "Intermediário"),
    ("Gestão de Equipes", 249.00, 25, 2, "2025-03-25", "Intermediário"),
    ("Autoconhecimento e Produtividade", 329.90, 15, 5, "2025-04-01", "Básico"),
    ("Marketing Digital Avançado", 1000.0, 60, 3, "2025-04-05", "Avançado"),
    ("UX/UI Design", 550.00, 45, 4, "2025-04-10", "Avançado");

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
  
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";
  
SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE categoria_id = 3;