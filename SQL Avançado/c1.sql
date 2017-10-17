-- Nome, sobrenome e endereço de todos funcionários de Pesquisa

SELECT f.pnome, f.unome, f.endereco
FROM funcionario f, departamento d
WHERE d.dnumero = f.dnr AND
      d.dnome = 'Pesquisa';

-- Explícito
SELECT pnome, unome, endereco
FROM (funcionario JOIN departamento ON dnr=dnumero) 
WHERE dnome = 'Pesquisa';

-- Natural join
SELECT pnome, unome, endereco, nome_dep
FROM (funcionario NATURAL JOIN 
      departamento AS DEP(nome_dep, dnr, cpf_gerente, data_inicio_gerente))
WHERE nome_dep='Pesquisa';

-- Natural join - Gerentes dos departamentos
SELECT pnome, unome, endereco, nome_dep
FROM (funcionario NATURAL JOIN 
      departamento AS DEP(nome_dep, dnumero, cpf, data_inicio_gerente))