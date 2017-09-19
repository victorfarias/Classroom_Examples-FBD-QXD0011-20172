-- C0
-- SELECT pnome,datanasc, endereco
-- FROM funcionario
-- WHERE pnome='João' AND minicial='B' AND unome = 'Silva';

-- C1
-- SELECT pnome, endereco
-- FROM funcionario, departamento
-- where dnome='Pesquisa' AND dnr=dnumero;

-- SELECT f.pnome, f.endereco
-- FROM funcionario f, departamento d
-- where d.dnome='Pesquisa' AND f.dnr=d.dnumero;


-- Consulta: Todos os dependentes de Fernando (nome e parentesco)
-- SELECT d.nome_dependente, d.parentesco
-- FROM funcionario f, dependente d 
-- WHERE f.cpf = d.fcpf AND f.pnome='Fernando';

-- Consulta 2
-- SELECT p.projnumero, d.dnumero, f.unome, f. datanasc, f.endereco
-- FROM projeto p, funcionario f, departamento d
-- WHERE p.dnum=d.dnumero AND
--       d.cpf_gerente=f.cpf AND
--       p.projlocal = 'Maua';


-- Consulta sem WHERE com asterisco
-- select *
-- from funcionario,departamento;

-- Consulta 9
-- SELECT cpf
-- FROM funcionario;

-- Consulta 10
-- SELECT f.cpf, d.dnome
-- FROM funcionario f, departamento d

-- Consulta 11
-- SELECT ALL f.salario
-- FROM funcionario f;

-- Consulta 11a
-- SELECT DISTINCT f.salario
-- FROM funcionario f;

-- Consulta 4
-- Silva como funcionario
-- Silva como gerente
(SELECT p.projnumero
FROM funcionario f, trabalha_em t, projeto p
where f.unome='Silva' AND
      f.cpf=t.fcpf AND
      t.pnr=p.projnumero)
INTERSECT
(SELECT p.projnumero
FROM funcionario f, departamento d, projeto p
WHERE f.unome='Wong' AND
      f.cpf=d.cpf_gerente AND
      d.dnumero=p.dnum);

