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
  matricula INT,
  nome_prof TEXT NOT NULL,
  eixo TEXT NOT NULL,
	CONSTRAINT fk_alunos
	FOREIGN KEY (matricula)
	REFERENCES alunos(matricula)
);

-- modificando tabelas que já foram criadas no geral:
ALTER TABLE alunos
ADD email_contato VARCHAR (50);

-- comandos de exclusão:
DROP TABLE alunos;
DROP DATABASE pipoquinha;

-- ATIVIDADE para avaliar na semana que vem: Criem mais uma tabela que possa ter relação com 'alunos'
-- e 'professores', fazendo pelo menos a construção com 7 atributos e 7 injeções. Não esqueça de 
-- que todas precisam estar relacionadas.

CREATE TABLE turma (
	id INT PRIMARY KEY auto_increment,
	disciplina TEXT,
    matricula INT,
    nome_prof TEXT,
    turno TEXT,
    horario VARCHAR (5),
    dia_da_semana TEXT,
    quant_alunos INT
);

SELECT * FROM turma;

INSERT INTO turma (id, disciplina, matricula, nome_prof, turno, horario, dia_da_semana, quant_alunos)
VALUES(1, matematica, 345, Roberto, manha, '7:00', segunda, 20);
