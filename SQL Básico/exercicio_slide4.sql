DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS id_cliente_seq;

CREATE SEQUENCE id_cliente_seq;

CREATE TABLE clientes(
    id int PRIMARY KEY default nextval('id_cliente_seq'),
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_cadastro date NOT NULL,
    cidade varchar(50) NOT NULL,
    uf char(2) NOT NULL DEFAULT 'PE'
    -- PRIMARY KEY(id)
);

INSERT INTO clientes VALUES(default,'Victor','12345678901','2017-09-1','Quixada',default);
INSERT INTO clientes VALUES(default,'Victor','12345678902','2017-09-11','Quixada','CE');
INSERT INTO clientes VALUES(default,'Victor','12345678903','2017-09-11','Quixada','CE');
INSERT INTO clientes VALUES(default,'Victor','12345678904','2017-09-11','Quixada','CE');
INSERT INTO clientes VALUES(default,'Victor','12345678905','2017-09-11','Quixada','CE');
INSERT INTO clientes VALUES(default,'Victor','12345678906','2017-09-11','Quixada','CE');

