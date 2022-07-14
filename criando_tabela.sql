-- Criando tabela e importando dados_covid
CREATE TABLE geral(
    regiao VARCHAR(50),
    estado VARCHAR(50),
    municipio VARCHAR(50),
    cod_uf VARCHAR(50),
    cod_mun VARCHAR(50),
    cod_regiao_saude VARCHAR(50),
    nome_regiao_saude VARCHAR(50),
    data_ DATE,
    semana_Epi VARCHAR(50),
    populacao_TCU_2019 INT,
    casos_acumulados INT,
    casos_novos INT,
    obitos_acumulados INT,
    obitos_novos INT,
    recuperados_novos INT,
    em_acompanhamento_novos INT,
    interior_metropolitana VARCHAR(50)
);
COPY geral()
FROM 'D:\Documentos\Projetos\GitHub\covid_19_br\dados_covid\combined_csv.csv'
DELIMITER ';'
CSV HEADER;