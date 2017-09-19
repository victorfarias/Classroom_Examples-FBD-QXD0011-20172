-- C13: Mostrar o salário de todos os funcionários 
-- do ProdutoX com um aumento de 10%

SELECT f.salario * 1.1
FROM funcionario f, trabalha_em t, projeto p
WHERE p.projnumero = t.pnr AND
        t.fcpf = f.cpf AND
        p.projnome = 'ProdutoX'
        