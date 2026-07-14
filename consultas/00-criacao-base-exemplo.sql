/*
Arquivo: 00-criacao-base-exemplo.sql
Objetivo: criar uma base fictícia e reproduzível para executar os exercícios.
Banco: SQL Server
*/

-- Remove as tabelas na ordem correta, caso já existam.
DROP TABLE IF EXISTS funcionarios;
DROP TABLE IF EXISTS departamentos;

-- Cadastro de departamentos.
CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100) NOT NULL UNIQUE
);

-- Cadastro de funcionários.
CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    id_departamento INT NULL,
    CONSTRAINT FK_funcionarios_departamentos
        FOREIGN KEY (id_departamento)
        REFERENCES departamentos (id_departamento)
);

-- Departamentos de exemplo.
INSERT INTO departamentos (
    id_departamento,
    nome_departamento
)
VALUES
    (10, 'Recursos Humanos'),
    (20, 'Tecnologia'),
    (30, 'Diretoria'),
    (40, 'Financeiro');

-- Funcionários de exemplo.
-- Um registro sem departamento foi incluído para demonstrar o LEFT JOIN.
-- Dois registros com o mesmo nome foram incluídos para o exercício de duplicados.
INSERT INTO funcionarios (
    id_funcionario,
    nome,
    salario,
    id_departamento
)
VALUES
    (1, 'Ana Lima', 4500.00, 10),
    (2, 'Carlos Souza', 7200.00, 20),
    (3, 'Mariana Costa', 3800.00, 10),
    (4, 'Roberto Alves', 9100.00, 30),
    (5, 'Fernanda Dias', 5600.00, 20),
    (6, 'Paulo Mendes', 2900.00, 40),
    (7, 'Ana Lima', 5100.00, 40),
    (8, 'Juliana Rocha', 3400.00, NULL);

-- Conferência da carga.
SELECT *
FROM departamentos
ORDER BY id_departamento;

SELECT *
FROM funcionarios
ORDER BY id_funcionario;
