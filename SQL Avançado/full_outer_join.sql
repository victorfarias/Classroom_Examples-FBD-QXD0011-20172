SELECT pnome, dnome
FROM (funcionario FULL JOIN departamento ON dnr=dnumero);


-- Nome de todos os funcionários e os projetos 
-- em que eles trabalham 
SELECT f.pnome, t.pnr, p.projnome
FROM funcionario f LEFT JOIN trabalha_em t ON f.cpf=t.fcpf 
        LEFT JOIN projeto p ON t.pnr=p.projnumero;
