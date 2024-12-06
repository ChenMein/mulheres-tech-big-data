-- criando meu primeiro banco de dados
CREATE DATABASE senac_copacabana;
-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
  matricula INTEGER PRIMARY KEY,
  nome_aluno TEXT NOT NULL,
  genero TEXT NOT NULL
);

-- injeção de dados-teste
INSERT INTO alunos VALUES (1, 'Marina', 'F');
INSERT INTO alunos VALUES (2, 'Joana', 'F');


-- consultando as injeções realizadas
SELECT * FROM alunos WHERE matricula=1;

CREATE TABLE professores (
  matricula_prof INTEGER PRIMARY KEY,
  nome_prof TEXT NOT NULL,
  eixo TEXT NOT NULL
);

-- modificando tabelas que já foram criadas no geral:
ALTER TABLE alunos
ADD email_contato VARCHAR (50);

-- comandos de exclusão:
-- DROP TABLE alunos;
-- DROP DATABASE pipoquinha;

-- ATIVIDADE para avaliar na semana que vem: Criem mais uma tabela que possa ter relação com 'alunos'
-- e 'professores', fazendo pelo menos a construção com 7 atributos e 7 injeções. Não esqueça de 
-- que todas precisam estar relacionadas.

CREATE TABLE avaliacao (
	id INT PRIMARY KEY auto_increment,
	disciplina TEXT NOT NULL,
    matricula_prof INTEGER NOT NULL,
	nome_prof TEXT NOT NULL,
    matricula INTEGER NOT NULL,
    nome_aluno TEXT NOT NULL,
    nota float(4,2),
		CONSTRAINT fk_alunos
		FOREIGN KEY (matricula)
		REFERENCES alunos(matricula),
        CONSTRAINT fk_professores
		FOREIGN KEY (matricula_prof)
		REFERENCES professores(matricula_prof)
);

SELECT * FROM avaliacao;

INSERT INTO alunos(matricula, nome_aluno, genero) 
VALUES (3, 'Chen', 'F'), 
(4, 'Ana', 'F'), 
(5, 'Lu', 'F'), 
(6, 'Carol', 'F'), 
(7, 'Alfredo', 'M');

INSERT INTO professores (matricula_prof, nome_prof, eixo) 
VALUES (101, 'Douglas', 'Tech'), 
(102, 'Cassio', 'Tech');

INSERT INTO avaliacao (disciplina, matricula_prof, nome_prof, matricula, nome_aluno, nota)
VALUES ('calculo', 101, 'Douglas', 1, 'Marina', 7.6),
('calculo', 101, 'Douglas', 2, 'Joana', 3.5),
('calculo', 102, 'Cassio', 3, 'Chen', 10),
('calculo', 101, 'Douglas', 4, 'Ana', 10),
('calculo', 101, 'Douglas', 5, 'Lu', 10),
('calculo', 101, 'Douglas', 6, 'Carol', 10),
('calculo', 102, 'Cassio', 7, 'Alfredo', 1.9);

