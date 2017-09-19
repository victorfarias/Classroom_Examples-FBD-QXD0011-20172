


SELECT f.pnome, f.unome, g.pnome, g.unome 
FROM funcionario g, funcionario f
WHERE g.cpf = f.cpf_supervisor 