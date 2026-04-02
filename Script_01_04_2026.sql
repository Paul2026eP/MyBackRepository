CREATE TABLE X (Y JSON);
INSERT INTO X VALUES ('{"nome":"Roberto","telefone":"1234-5678"}');
INSERT INTO X VALUES ('{"nome":"Maria"}');
INSERT INTO X VALUES ('{"nome": "Alberto", "endereco": "Rua x numero y"}');
INSERT INTO X VALUES ('{"nome": "Leticia", "endereco": "Rua x numero y", "telefone":"1234-5678"}');
SELECT Y FROM X;

#JSON_KEYS Exibe conteudo por Chaves (propriedades, atributos)#
SELECT JSON_KEYS(doc) FROM countryinfo WHERE _id = 'BRA';
#JSON_EXTRACT $. Exibe mais de uma chave interna do bloco JSON#
SELECT JSON_EXTRACT(doc,"$.government") FROM countryinfo WHERE _id = 'BRA';
#JSON CONTAINS - Permite procurar VALOR das propriedades/ dentro do JSON#
SELECT JSON_CONTAINS_PATH(Y, "ONE", '$.nome') FROM X;
SELECT JSON_CONTAINS_PATH(Y, "ONE", '$.endereco') FROM X;
SELECT JSON_CONTAINS_PATH(Y, "ALL", '$.nome','$.endereco') FROM X;
SELECT JSON_CONTAINS (Y,'"1234-5678"', "$.telefone") FROM X;
#JSON_SEARCH - Permite encontrar VALOR qualquer propriedades#
SELECT JSON_SEARCH (Y, "ONE", "Rua X numero Y") FROM X;
SELECT JSON_SEARCH (Y, "ALL", "123-5678") FROM X;

-- EXERCICIOS 30/03/26 --
SELECT JSON_CONTAINS_PATH(Info, "ONE", '$.Name', '$.District') FROM city; 
SELECT JSON_CONTAINS (doc,'"Angola"', "$.name") FROM countryinfo;
SELECT JSON_SEARCH (Info, "ONE", "Name city CountryCode city") FROM city;
SELECT * FROM city;
SELECT * FROM countryinfo;

-- EXERCICIOS 01-04-26 - Melhorar o Exercicio acima --
SELECT JSON_CONTAINS_PATH(Info, "ALL", '$.Population') FROM city;
-- Retrona todos; porque todos possuem Population na chave 'info' JSON;
SELECT district, JSON_EXTRACT(Info, '$.Population') AS NUMERO_POPULAÇÃO FROM city WHERE JSON_CONTAINS_PATH(Info, 'all', '$.Population');
-- All todas 1, Retorna todos os Valores da chave População--

SELECT JSON_CONTAINS(doc,'1960', '$.IndepYear') FROM countryinfo WHERE JSON_CONTAINS(doc, '1960', '$.IndepYear');
-- Retornou 1 para os países que tem a independencia em 1960, e 0 para o que não tem; já com o WHERE retornou somente o contains 1960 --











