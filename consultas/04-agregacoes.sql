/*
Arquivo: 04-agregacoes.sql
Objetivo: praticar funções de agregação, GROUP BY e HAVING.
Contexto: tabelas fictícias de funcionários e departamentos.
*/

-- Indicadores gerais da folha salarial.
SELECT
    COUNT(*) AS [Quantidade de Funcionários],
    SUM(salario) AS [Total da Folha],
    AVG(salario) AS [Salário Médio],
    MIN(salario) AS [Menor Salário],
    MAX(salario) AS [Maior Salário]
FROM funcionarios;

-- Quantidade de funcionários e salário médio por departamento.
SELECT
    D.nome_departamento AS Departamento,
    COUNT(F.id_funcionario) AS [Qtd. Funcionários],
    AVG(F.salario) AS [Salário Médio],
    SUM(F.salario) AS [Total da Folha]
FROM departamentos AS D
LEFT JOIN funcionarios AS F
    ON D.id_departamento = F.id_departamento
GROUP BY D.nome_departamento
ORDER BY [Total da Folha] DESC;

-- Mostra apenas departamentos com pelo menos dois funcionários.
SELECT
    D.nome_departamento AS Departamento,
    COUNT(F.id_funcionario) AS [Qtd. Funcionários]
FROM departamentos AS D
INNER JOIN funcionarios AS F
    ON D.id_departamento = F.id_departamento
GROUP BY D.nome_departamento
HAVING COUNT(F.id_funcionario) >= 2
ORDER BY [Qtd. Funcionários] DESC;

-- Departamentos cujo salário médio é superior a R$ 5.000.
SELECT
    D.nome_departamento AS Departamento,
    AVG(F.salario) AS [Salário Médio]
FROM departamentos AS D
INNER JOIN funcionarios AS F
    ON D.id_departamento = F.id_departamento
GROUP BY D.nome_departamento
HAVING AVG(F.salario) > 5000
ORDER BY [Salário Médio] DESC;
