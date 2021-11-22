DROP DATABASE IF EXISTS infatec;
CREATE DATABASE infatec;
USE infatec;

CREATE TABLE IF NOT EXISTS usuario (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	senha VARCHAR(40) NOT NULL,
	cpf CHAR(11) UNIQUE NOT NULL,
	valido tinyint(1)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS canal (
	id_canal INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	grupo INT,
	semestre INT,
	curso INT,
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS post (
	id_post INT AUTO_INCREMENT PRIMARY KEY,
	data_postagem DATE NOT NULL,
	data_expiracao DATE NOT NULL,
	conteudo TEXT NOT NULL,
	fk_canal INT,
	fk_usuario INT,
	titulo_post varchar(100) NOT NULL,
	FOREIGN KEY (fk_canal) REFERENCES canal (id_canal),
	FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS anexo (
	id_anexo INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	fk_post INT,
	FOREIGN KEY (fk_post) REFERENCES post (id_post) ON DELETE CASCADE 
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS visualizado_por (
	fk_usuario INT,
	fk_post INT,
	data_visualizacao DATE,
	PRIMARY KEY (fk_usuario, fk_post),
	FOREIGN KEY (fk_usuario) REFERENCES usuario (id_usuario),
	FOREIGN KEY (fk_post) REFERENCES post (id_post)
);

 -- Se não existir, cria tabela de ralacionamento entre canal e usuário
CREATE TABLE IF NOT EXISTS canal_usuario (
	id_canal INT,
	id_usuario INT,
	PRIMARY KEY(id_canal, id_usuario),
    FOREIGN KEY (id_canal) REFERENCES canal (id_canal),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

-- Inserção tabela usuario
delete from canal_usuario where id_usuario >=0;
Delete from usuario where id_usuario >=0; 
INSERT INTO usuario VALUES (2, "Elen", "elen.petri@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "22222222222", 1),
(3, "Tais", "tais.salomao@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "33333333332",1),
(4, "Kevin", "kevin.mirenda@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "44444444444",1),
(5, "Lucas", "lucas.dias52@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "55555555555", 1),
(6, "Rodrigo", "rodrigo.paula15@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "66666666666",1),
(7, "Priscila", "priscila.silva140@fatec.sp.gov.br", "7c4a8d09ca3762af61e59520943dc26494f8941b", "77777777777",1);

-- Consulta todos os usuários
select * from usuario;

-- Inserção tabela canal
INSERT INTO canal(nome, grupo, semestre, curso) VALUES ("geral", null, null, null);
select * from canal;

-- Inserção tabela post
INSERT INTO post VALUES (0, "2021-10-08", "2021-10-12", "Conteudo legal", 1, 2, "titulo legal");
INSERT INTO post VALUES (0, "2021-10-08", "2021-10-12", "Conteudo chato", 1, 2, "titulo chato");
select * from post;


-- Adição da coluna função (Moderador ou participante) na tabela canal_usuario (referente ao gerenciamento do canal)
ALTER TABLE canal_usuario ADD funcao varchar(30);

-- Adição da coluna visibilidade (canal público ou privado) na tabela canal (referente ao gerenciamento do canal)
ALTER TABLE canal ADD visibilidade varchar(30);

-- Adição da coluna pode_gerenciar_usuario na tabela usuario (referente às permissões do gerenciamento de ususário)
ALTER TABLE usuario ADD  pode_gerenciar_usuario boolean;

-- Adição da coluna pode_criar_canais na tabela usuario (referente às permissões do gerenciamento de ususário)
ALTER TABLE usuario ADD pode_criar_canais boolean;

-- Adição do usuário administrador
INSERT INTO usuario VALUES (8, 'Administrador', 'administrador@fatec.sp.gov.br', 'f865b53623b121fd34ee5426c792e5c33af8c227', '88888888888', 1, 1, 1);

-- Criação da tabela de grupos do canal (Modal criar canal)
CREATE TABLE IF NOT EXISTS canal_grupo (
	id_canal INT,
	id_grupo INT,
    FOREIGN KEY(id_canal) REFERENCES canal (id_canal),
    PRIMARY KEY (id_canal, id_grupo)
) ENGINE=INNODB;

-- Criação da tabela de cursos do canal (Modal criar canal)
CREATE TABLE IF NOT EXISTS canal_curso (
	id_canal INT,
	nome_curso VARCHAR (100),
    FOREIGN KEY(id_canal) REFERENCES canal (id_canal),
    PRIMARY KEY (id_canal, nome_curso)
) ENGINE=INNODB;

-- Remove as colunas que não são mais necessárias na tabela canal
ALTER TABLE canal DROP COLUMN grupo;
ALTER TABLE canal DROP COLUMN semestre;
ALTER TABLE canal DROP COLUMN curso;