-- CREATE TABLE nomes_funcionarios(
--     id serial PRIMARY KEY,
--     nome_completo varchar(60)
-- );

INSERT INTO nomes_funcionarios (nome_completo)
SELECT pnome || ' ' || minicial || ' ' || unome
from funcionario