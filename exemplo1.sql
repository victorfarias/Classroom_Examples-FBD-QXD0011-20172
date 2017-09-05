


DROP TABLE CAMPUS;
DROP TABLE ALUNO;

CREATE TABLE CAMPUS(
id int,
nome varchar(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE ALUNO(
cpf char(11),
matricula char(7) NOT NULL UNIQUE,
nome char(30) NOT NULL DEFAULT 'joao',
idade int NOT NULL CHECK(idade >= 0 AND idade < 200),
Cid int NOT NULL,
PRIMARY KEY (cpf),
FOREIGN KEY (Cid) REFERENCES CAMPUS(id) 
);