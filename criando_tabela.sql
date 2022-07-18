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

-- Criando tabela e importando dados_campanha_vacinacao
CREATE TABLE campanha_vacinacao(
    _1_document_id VARCHAR(100),
    _2_paciente_id VARCHAR(100),
    _3_paciente_idade VARCHAR(100),
    _4_paciente_data_nascimento VARCHAR(100),
    _5_paciente_enum_sexo_biologico VARCHAR(100),
    _6_paciente_raca_cor_codigo VARCHAR(100),
    _7_paciente_raca_cor_valor VARCHAR(100),
    _8_paciente_endereco_codIBGE_municipio VARCHAR(100),
    _9_paciente_endereco_nm_municipio VARCHAR(100),
    _10_paciente_endereco_nm_municipio VARCHAR(100),
    _11_paciente_endereco_nm_pais VARCHAR(100),
    _12_paciente_endereco_uf VARCHAR(100),
    _13_paciente_endereco_cep VARCHAR(100),
    _14_paciente_nacionalidade_e_num_nacionalidade VARCHAR(100),
    _15_estabelecimento_valor VARCHAR(100),
    _16_estabelecimento_razao_social VARCHAR(100),
    _17_estabelecimento_nome_fantasia VARCHAR(100),
    _18_estabelecimento_municipio_codigo VARCHAR(100),
    _19_estabelecimento_municipio_nome VARCHAR(100),
    _20_estabelecimento_uf VARCHAR(100),
    _21_vacina_grupo_atendimento_code VARCHAR(100),
    _22_vacina_grupo_atendimento_nome VARCHAR(100),
    _23_vacina_categoria_code VARCHAR(100),
    _24_vacina_categoria_nome VARCHAR(100),
    _25_vacina_lote VARCHAR(100),
    _26_vacina_fabricante_nome VARCHAR(100),
    _27_vacina_fabricante_referencia VARCHAR(100),
    _28_vacina_data_aplicacao DATE,
    _29_vacina_descricao_dose VARCHAR(100),
    _30_vacina_codigo VARCHAR(100),
    _31_vacina_nome VARCHAR(100),
    _32_sistema_origem VARCHAR(100)
);

COPY campanha_vacinacao
FROM 'D:\Documentos\Projetos\GitHub\covid_19_br\campanha_vacinacao\dados.csv'
DELIMITER ';'
CSV HEADER;



