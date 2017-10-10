

-- nome dos funcionários e a quantidade de dependentes
SELECT f.pnome, (SELECT count(*) 
                 FROM dependente d 
                 WHERE f.cpf=d.fcpf)
FROM funcionario f
