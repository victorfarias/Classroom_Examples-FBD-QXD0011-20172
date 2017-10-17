SELECT
FROM (funcionario JOIN departamento ON dnr=dnumero);

SELECT pnome, dnome
FROM (funcionario NATURAL JOIN 
      departamento AS DEP (dnome, dnr, cpf_gerente, data_inicio_gerente));