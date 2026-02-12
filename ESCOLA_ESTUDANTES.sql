CREATE DATABASE ESCOLA;
SELECT * FROM ESTUDANTES;
-- 1- Identificar se há pessoas menores de idade;
SELECT * FROM ESTUDANTES WHERE DATA_NASCIMENTO > '2008-02-11';
-- 2- Exibir somente pessoas maiores de idade;
SELECT * FROM ESTUDANTES WHERE DATA_NASCIMENTO < '2008-02-11';
-- 3 - #Exibir somente as pessoas que possuem veiculo próprio;
SELECT * FROM ESTUDANTES WHERE VEICULO_PROPRIO = 1;
-- 4 - Exibir somente a coluna que indica a região em a pessoa mora;
SELECT REG_RESIDENCIA FROM ESTUDANTES;
-- 5 - Exibir somente as pessoas que já trabalham na area de TI;
SELECT * FROM ESTUDANTES WHERE TRABALHO IN ('Analista de Suporte', 'Assistente de TI');
-- 6 - Exibir somente quem estuda e possui carro;
SELECT * FROM ESTUDANTES WHERE VEICULO_PROPRIO = 1 AND TRABALHO = ('Estudante');
-- 7 - Quais conclusões são possiveis a partir dos dados tabelados?
