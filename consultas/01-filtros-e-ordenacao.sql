/*
Arquivo: 01-filtros-e-ordenacao.sql
Objetivo: praticar SELECT, aliases, filtros e ordenação no SQL Server.
Contexto: tabela fictícia de funcionários.
*/

-- Seleciona as principais colunas da tabela.
SELECT
    id_funcionario,
    nome,
    salario,
    id_departamento
FROM funcionarios;

-- Renomeia colunas para melhorar a leitura do resultado.
SELECT
    nome AS [Nome do Funcionário],
    salario AS [Salário Mensal]
FROM funcionarios;

-- Filtra funcionários com salário acima de R$ 3.000.
SELECT
    nome,
    salario
FROM funcionarios
WHERE salario > 3000
ORDER BY salario DESC;

-- Combina condições: salário acima de R$ 3.000 e departamento informado.
SELECT
    nome,
    salario,
    id_departamento
FROM funcionarios
WHERE salario > 3000
  AND id_departamento IS NOT NULL
ORDER BY salario DESC, nome ASC;

-- Retorna os cinco maiores salários.
SELECT TOP 5
    nome AS [Nome do Funcionário],
    salario AS [Salário Mensal]
FROM funcionarios
ORDER BY salario DESC;

-- Pesquisa nomes iniciados pela letra A.
SELECT
    id_funcionario,
    nome
FROM funcionarios
WHERE nome LIKE 'A%'
ORDER BY nome;
