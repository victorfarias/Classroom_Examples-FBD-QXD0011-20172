-- Mostrar todos os nomes de funcionários e o nome do seu supervisor
-- inpendente se tem supervisor ou não 
SELECT f.pnome, s.pnome
FROM (funcionario f LEFT JOIN funcionario s ON f.cpf_supervisor=s.cpf)