ALTER TABLE funcionario 
ADD COLUMN tarefa VARCHAR(20);


ALTER TABLE funcionario 
DROP COLUMN endereco CASCADE;

ALTER TABLE departamento
ALTER COLUMN cpf_gerente SET DEFAULT '12345678966'

ALTER TABLE departamento
ALTER COLUMN cpf_gerente DROP DEFAULT;

ALTER TABLE departamento
DROP CONSTRAINT departamento_pkey CASCADE;

INSERT INTO departamento VALUES ('Novo_dep', 8, default, '1980-10-20')

INSERT INTO departamento VALUES ('Novo_dep2', 10, default, '1980-10-20')

    
