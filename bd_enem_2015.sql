-- SCRIPT ELABORADO POR: SAULO MARTINS SOARES DA FONSECA
-- BANCO DE DADOS: PostgreSQL
-- ORIENTADORA: ANA CAROLINA ALMEIDA
-- MONOGRAFIA: BANCO DE DADOS
-- DATA CRIAÇÃO: 11/06/2016 

--------------------------------------------------------------------------------------------------------------
-- Database e tabase criados no servidor. Data Criação: 22/06/2016

CREATE DATABASE bd_enem_dados_2015
CREATE TABLESPACE tablespace_enem_2015 LOCATION '/mnt/data/base_enem';
ALTER DATABASE bd_enem_dados_2015 SET TABLESPACE tablespace_enem_2015; 

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 22/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:26/06/2016

CREATE TABLE UF(
	SEQUENCIAL_UF NUMERIC(7) NOT NULL PRIMARY KEY,
	SIGLA_UF VARCHAR(2) NOT NULL  
);
-- Falta colocar no servidor
COMMENT on table UF is 'Tabela que guarda informações sobre as siglas das unidades federativas'; 
COMMENT on column UF.sequencial_uf is 'Números sequenciais para as UFs';
COMMENT on column UF.sigla_uf is 'Sigla que representa cada unidade federativa';


CREATE TABLE MUNICIPIO(
	COD_MUNICIPIO   NUMERIC(7)	NOT NULL PRIMARY KEY,
	NOME_MUNICIPIO  VARCHAR(150) NULL,
	SEQUENCIAL_UF   NUMERIC(2) NOT NULL,
	CONSTRAINT FK_MUNICIPIO_UF FOREIGN KEY(SEQUENCIAL_UF) REFERENCES UF(SEQUENCIAL_UF)   
);
-- Falta colocar no servidor
COMMENT on table MUNICIPIO is 'Tabela que guarda informações referente ao município onde o vive, referente ao 
município da escola onde estuda(ou) e referente ao município onde nasceu o inscrito no Enem'; 
COMMENT on column MUNICIPIO.cod_municipio is 'Código referente aos municipios dos estados brasileiros';
COMMENT on column MUNICIPIO.nome_municipio is 'Nomes dos municípios';
COMMENT on column MUNICIPIO.sequencial_uf is 'Números sequenciais que são referentes as siglas UFs (chave estrangeira: municipio-uf)';

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 19/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 20/01/2018

CREATE TABLE ESCOLA(
	COD_ESCOLA NUMERIC(10) NOT NULL PRIMARY KEY,
	COD_MUNICIPIO_ESCOLA NUMERIC(7) NULL,
	NOME_ESCOLA 	  VARCHAR (200) NULL,
	TIPO_ADM_ESCOLA   NUMERIC(1) NULL,
	TIPO_LOCALIZACAO  NUMERIC(1) NULL,
	SIT_FUNC_ESCOLAR  NUMERIC(1) NULL,
	CONSTRAINT FK_ESCOLA_MUNICIPIO FOREIGN KEY(COD_MUNICIPIO_ESCOLA) REFERENCES MUNICIPIO(COD_MUNICIPIO)
);
-- Falta colocar no servidor
COMMENT on table ESCOLA is 'Tabela que guarda informações referente a escola onde o estudou o inscrito no Enem'; 
COMMENT on column ESCOLA.cod_escola is 'Código da escola';
COMMENT on column ESCOLA.cod_municipio_escola is 'Código referente ao município da escola (chave estrangeira: escola-municipio)';
COMMENT on column ESCOLA.nome_escola is 'Nomes das escolas';
COMMENT on column ESCOLA.tipo_adm_escola is 'Código numérico referente a Dependência administrativa da Escola, exemplos: 1-Federal;
2-Estadual; 3-Municipal; 4-Privada';
COMMENT on column ESCOLA.tipo_localizacao is 'Código numérico referente a Localização da Escola, exemplos: 1-Urbana; 2-Rural';
COMMENT on column ESCOLA.sit_func_escolar is 'Código numérico referente a Situação de funcionamento da Escola, exemplos: 1-Em atividade; 
2-Paralisada; 3-Extinta; 4-Escola extinta em anos anteriores';

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 22/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:27/10/2016

CREATE TABLE NECESSIDADES_ESPECIAIS(
	NU_INSCRICAO DOUBLE PRECISION NOT NULL PRIMARY KEY,
	IN_MESA_CADEIRA_SEPARADA 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_AUDITIVA 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_MENTAL 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_FISICA	NUMERIC(1) NULL,
	IN_LEITURA_LABIAL 		NUMERIC(1) NULL,
	IN_MESA_CADEIRA_RODAS 	NUMERIC(1) NULL,
	IN_GUIA_INTERPRETE	NUMERIC(1) NULL,
	IN_DEFICIT_ATENCAO	NUMERIC(1) NULL,
	IN_BAIXA_VISAO 		NUMERIC(1) NULL,
	IN_APOIO_PERNA	NUMERIC(1) NULL,
	IN_TRANSCRICAO	NUMERIC(1) NULL,
	IN_SABATISTA	NUMERIC(1) NULL,
	IN_DISLEXIA		NUMERIC(1) NULL,
	IN_GESTANTE	NUMERIC(1) NULL,
	IN_CEGUEIRA	NUMERIC(1) NULL,
	IN_LIBRAS 	NUMERIC(1) NULL,
	IN_LACTANTE	NUMERIC(1) NULL,
	IN_SURDEZ	NUMERIC(1) NULL,
	IN_AUTISMO	NUMERIC(1) NULL,
	IN_IDOSO	NUMERIC(1) NULL,
	IN_LEDOR	NUMERIC(1) NULL,
	IN_ACESSO	NUMERIC(1) NULL,
	CONSTRAINT FK_NECESSIDADES_ESPECIAIS_CANDIDATO FOREIGN KEY(NU_INSCRICAO) REFERENCES CANDIDATO(NU_INSCRICAO)
);
-- Falta colocar no servidor
COMMENT on table NECESSIDADES_ESPECIAIS is 'Tabela que guarda informações referente alguma necessidade, estado físico ou mental do inscrito no Enem';
COMMENT on column NECESSIDADES_ESPECIAIS.nu_inscricao is 'Código referente a cada inscrito na prova do Enem (Chave Estrangeira: Necessidades_especiais-Candidato)';
COMMENT on column NECESSIDADES_ESPECIAIS.in_mesa_cadeira_separada is 'Indicador de solicitação de cadeira separada';
COMMENT on column NECESSIDADES_ESPECIAIS.in_deficiencia_auditiva is 'Indicador de deficiência auditiva';
COMMENT on column NECESSIDADES_ESPECIAIS.in_deficiencia_mental is 'Indicador de deficiência mental';
COMMENT on column NECESSIDADES_ESPECIAIS.in_deficiencia_fisica is 'Indicador de deficiência física';
COMMENT on column NECESSIDADES_ESPECIAIS.in_leitura_labial is 'Indicador de solicitação de leitura labial';
COMMENT on column NECESSIDADES_ESPECIAIS.in_mesa_cadeira_rodas is 'Indicador de solicitação de cadeira de rodas';
COMMENT on column NECESSIDADES_ESPECIAIS.in_guia_interprete is 'Indicador de solicitação de guia intérprete';
COMMENT on column NECESSIDADES_ESPECIAIS.in_deficit_atencao is 'Indicador de déficit de atenção';
COMMENT on column NECESSIDADES_ESPECIAIS.in_baixa_visao is 'Indicador de baixa visão';
COMMENT on column NECESSIDADES_ESPECIAIS.in_apoio_perna is 'Indicador de solicitação de apoio de perna';
COMMENT on column NECESSIDADES_ESPECIAIS.in_transcricao is 'Indicador de solicitação de transcrição';
COMMENT on column NECESSIDADES_ESPECIAIS.in_sabatista is 'Indicador de solicitação de prova aplicada em horário diferenciado para os guardadores dos sábados';
COMMENT on column NECESSIDADES_ESPECIAIS.in_dislexia is 'Indicador de dislexia';
COMMENT on column NECESSIDADES_ESPECIAIS.in_gestante is 'Indicador de gestante';
COMMENT on column NECESSIDADES_ESPECIAIS.in_cegueira is 'Indicador de cegueira';
COMMENT on column NECESSIDADES_ESPECIAIS.in_libras is 'Indicador de solicitação de Libras';
COMMENT on column NECESSIDADES_ESPECIAIS.in_lactante is 'Indicador de lactante';
COMMENT on column NECESSIDADES_ESPECIAIS.in_surdez is 'Indicador de surdez';
COMMENT on column NECESSIDADES_ESPECIAIS.in_autismo is 'Indicador de autismo';
COMMENT on column NECESSIDADES_ESPECIAIS.in_idoso is 'Indicador de inscrito idoso';
COMMENT on column NECESSIDADES_ESPECIAIS.in_ledor is 'Indicador de solicitação de auxílio de ledor';
COMMENT on column NECESSIDADES_ESPECIAIS.in_acesso is 'Indicador de solicitação de sala de fácil acesso';

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 10/07/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 18/03/2018

CREATE TABLE REDACAO(
	SEQUENCIAL_REDACAO DOUBLE PRECISION NOT NULL PRIMARY KEY,
	ANO_REDACAO NUMERIC(4),
	TEMA VARCHAR(600)
);
-- Falta incluir no servidor
COMMENT on table REDACAO is 'Tabela que guarda informações referente a prova de Redação do inscrito no Enem';
COMMENT on column REDACAO.sequencial_redacao is 'Número sequencial referente a redação do Enem';
COMMENT on column REDACAO.ano_redacao is 'Ano de aplicacao da prova de redacao do Enem';
COMMENT on column REDACAO.tema is 'Tema proposto para elaborar a redacao do Enem';

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 19/07/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:22/07/2017

CREATE TABLE CANDIDATO(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL PRIMARY KEY,
	COD_MUNICIPIO_RESIDENCIA  NUMERIC(7) NULL,
	COD_MUNICIPIO_NASCIMENTO  NUMERIC(7) NULL,
	COD_MUNICIPIO_PROVA  NUMERIC(7) NULL,
	COD_ESCOLA NUMERIC(10) NULL, 
	SEQUENCIAL_REDACAO NUMERIC(2) NULL,
	NACIONALIDADE  NUMERIC(1) NULL,
	ANO_CONCLUSAO NUMERIC(4) NULL,
	TP_ESTADO_CIVIL NUMERIC(1) NULL,
	ST_CONCLUSAO NUMERIC(1) NULL,
	IN_TP_ENSINO NUMERIC(1) NULL,
	TP_COR_RACA NUMERIC(1) NULL,
	NU_ANO NUMERIC(4) NULL,
	IDADE NUMERIC(3) NULL,
	TP_SEXO VARCHAR(1) NULL,
	NU_NOTA_COMP1 NUMERIC(9,2) NULL,
	NU_NOTA_COMP2 NUMERIC(9,2) NULL,
	NU_NOTA_COMP3 NUMERIC(9,2) NULL,
	NU_NOTA_COMP4 NUMERIC(9,2) NULL,
	NU_NOTA_COMP5 NUMERIC(9,2) NULL,
	NU_NOTA_REDACAO NUMERIC (9,2) NULL,
	TP_LINGUA NUMERIC(1) NULL,
	IN_STATUS_REDACAO VARCHAR(2) NULL,
	CONSTRAINT FK_CANDIDATO_ESCOLA FOREIGN KEY(COD_ESCOLA) REFERENCES ESCOLA (COD_ESCOLA),
	CONSTRAINT FK_CANDIDATO_REDACAO FOREIGN KEY(SEQUENCIAL_REDACAO) REFERENCES REDACAO (SEQUENCIAL_REDACAO),
	CONSTRAINT FK_CANDIDATO_MUNICIPIO FOREIGN KEY(COD_MUNICIPIO_RESIDENCIA) REFERENCES MUNICIPIO (COD_MUNICIPIO),
	CONSTRAINT FK_CANDIDATO_MUNICIP_IO FOREIGN KEY(COD_MUNICIPIO_NASCIMENTO) REFERENCES MUNICIPIO (COD_MUNICIPIO),
	CONSTRAINT FK_CANDIDATO_MUNICIPI_O FOREIGN KEY(COD_MUNICIPIO_PROVA) REFERENCES MUNICIPIO (COD_MUNICIPIO)
);
-- Falta colocar no servidor
COMMENT on table CANDIDATO is 'Tabela que guarda informações sobre cada inscrito no Enem';
COMMENT on column CANDIDATO.nu_inscricao is 'Código referente a cada inscrito na prova do Enem';
COMMENT on column CANDIDATO.cod_municipio_residencia is 'Código referente ao município da residência do inscrito no ENEM (Chave Estrangeira: Candidato-Municipio)';
COMMENT on column CANDIDATO.cod_municipio_nascimento is 'Código referente ao município do nascimento do inscrito no ENEM (Chave Estrangeira: Candidato-Municipio)';
COMMENT on column CANDIDATO.cod_municipio_prova is 'Código referente ao município onde foi realizado a prova do ENEM (Chave Estrangeira: Candidato-Municipio)';
COMMENT on column CANDIDATO.cod_escola is 'Código da escola (Chave Estrangeira: Candidato-Escola)';
COMMENT on column CANDIDATO.sequencial_redacao is 'Número sequencial referente a redação do Enem (Chave Estrangeira: Candidato-Redacao)';
COMMENT on column CANDIDATO.nacionalidade is 'Código referente a nacionalidade do inscrito no Enem';
COMMENT on column CANDIDATO.ano_conclusao is 'Código referente ao ano de conclusão do Ensino Médio do inscrito no Enem';
COMMENT on column CANDIDATO.tp_estado_civil is 'Código referente ao estado civil do inscrito no Enem, exemplos: 0-Solteiro(a); 1-Casado(a)/Mora com um(a) companheiro(a); 
2-Divorciado(a)/Desquitado(a)/Separado(a); 3-Viúvo(a)';
COMMENT on column CANDIDATO.st_conclusao is 'Código referente a situação de conclusão do Ensino Médio do inscrito no Enem';
COMMENT on column CANDIDATO.in_tp_ensino is 'Código referente ao tipo de instituição que concluiu ou concluirá o Ensino Médio do inscrito no Enem';
COMMENT on column CANDIDATO.tp_cor_raca is 'Código referente ao Cor/raça do inscrito no Enem';
COMMENT on column CANDIDATO.nu_ano is 'Ano de realização da prova do Enem';
COMMENT on column CANDIDATO.idade is 'Idade do inscrito no Enem';
COMMENT on column CANDIDATO.tp_sexo is 'Sexo do inscrito do Enem, exemplos: M-Masculino;F-Feminino';
COMMENT on column CANDIDATO.nu_nota_comp1 is 'Nota referente a competência: Dominar linguagens (DL)'; 
COMMENT on column CANDIDATO.nu_nota_comp2 is 'Nota referente a competência: Compreender fenômenos (CF)'; 
COMMENT on column CANDIDATO.nu_nota_comp3 is 'Nota referente a competência: Enfrentar situações-problema (SP)'; 
COMMENT on column CANDIDATO.nu_nota_comp4 is 'Nota referente a competência: Construir argumentação (CA)';
COMMENT on column CANDIDATO.nu_nota_comp5 is 'Nota referente a competência: Elaborar propostas (EP)';
COMMENT on column CANDIDATO.nu_nota_redacao is 'Nota da prova de redação';
COMMENT on column CANDIDATO.tp_lingua is 'Código referente ao tipo de Língua Estrangeira, exemplos: 0-Inglês;1-Espanhol';
COMMENT on column CANDIDATO.in_status_redacao is 'Código referente a situação da redação do participante do inscrito do Enem';

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 07/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 17/03/2018

CREATE TABLE  COR(
	COD_COR NUMERIC(3)	NOT NULL PRIMARY KEY,
	NOME_COR VARCHAR(36) NOT NULL
);
COMMENT on table COR is 'Tabela que guarda informações sobre a cor de cada prova';
COMMENT on column COR.cod_cor is 'Números sequenciais da cor das provas do Enem';
COMMENT on column COR.nome_cor is 'Nomes da cor das provas do Enem';


CREATE TABLE AREA(
	COD_AREA NUMERIC(1) NOT NULL PRIMARY KEY,
	NOME_AREA  VARCHAR(100) NULL, 
	SIGLA_AREA VARCHAR(2) NULL
);
COMMENT on table AREA is 'Tabela que guarda informações referente a área especifíca de cada prova';
COMMENT on column area.cod_area is 'Números sequenciais das áreas das provas do Enem';
COMMENT on column area.nome_area is 'Nomes das áreas de conhecimento das provas do Enem';
COMMENT on column area.sigla_area is 'Siglas correspondes as áreas de conhecimento das provas do Enem';

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 12/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 18/08/2016

CREATE TABLE PROVA(
	ID_PROVA NUMERIC(7) PRIMARY KEY,
	ANO_PROVA NUMERIC(4) NULL,
	COD_AREA NUMERIC(1) NULL,
	COD_COR  NUMERIC(2) NULL,
	CONSTRAINT FK_PROVA_AREA FOREIGN KEY (COD_AREA) REFERENCES AREA (COD_AREA),
	CONSTRAINT FK_PROVA_COR FOREIGN KEY (COD_COR) REFERENCES COR (COD_COR)
);
COMMENT on table PROVA is 'Tabela que guarda informações referente a prova. Esta tabela guarda informações de relacionamento com as tabelas: Area e Cor';
COMMENT ON column prova.id_prova is 'Número de identificação da prova do Enem (composição: Ano da prova + número da cor da prova: 2015+235=2015235)';
COMMENT ON column prova.ano_prova is 'Ano em que prova foi realizada a prova do Enem';
COMMENT ON column prova.cod_area is 'Números sequenciais das áreas das provas do Enem (chave estrangeira: prova-area)';
COMMENT ON column COR.cod_cor is 'Números sequenciais da cor das provas do Enem (chave estrangeira: prova-cor)';

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 07/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 16/06/2017

CREATE TABLE REALIZA(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	ID_PROVA NUMERIC(7)  NOT NULL,
	IN_PRESENCA NUMERIC(1) NULL,
	NOTA_PROVA NUMERIC(9,2) NULL,
 	CONSTRAINT PK_REALIZA PRIMARY KEY (NU_INSCRICAO, ID_PROVA),
	CONSTRAINT FK_REALIZA_CANDIDATO FOREIGN KEY (NU_INSCRICAO) REFERENCES CANDIDATO (NU_INSCRICAO),
	CONSTRAINT FK_REALIZA_PROVA FOREIGN KEY (ID_PROVA) REFERENCES PROVA (ID_PROVA)
);
-- Falta colocar no servidor
COMMENT on table REALIZA is 'Tabela que guarda informações referente a presença e nota das provas do inscrito no Enem';
COMMENT ON column realiza.nu_inscricao is 'Código referente a cada inscrito na prova do Enem (chave estrangeira: realiza-candidato)';
COMMENT ON column realiza.id_prova is 'Número de identificação da prova do Enem (composição: Ano da prova + número da cor da prova: 2015+235=2015235, chave estrangeira: realiza-prova)';
COMMENT ON column realiza.in_presenca is 'Indicador da presença do inscrito na prova';
COMMENT ON column realiza.nota_prova is 'Número que indica a nota recebida pelo inscrito nas provas do Enem';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 13/02/2017
-- Tabela revisada no servidor. DATA DA REVISÃO:

CREATE TABLE QUESTAO(
	SEQUENCIAL_QUESTAO NUMERIC(11) NOT NULL,
	GABARITO_EN VARCHAR(1),
	GABARITO_ES VARCHAR(1),
	CONSTRAINT PK_QUESTAO PRIMARY KEY (SEQUENCIAL_QUESTAO)
);
-- Falta colocar no servidor
COMMENT on table REALIZA is 'Tabela que guarda as questões da prova do Enem';
COMMENT ON column questao.sequencial_questao is 'Número da questao da prova do Enem (composição: Ano da prova + código de cor + número de questão (1 a 180))';
COMMENT ON column questao.gabarito_en is 'Letra correspondente ao gabarito da questão da prova, considerando o inglês como língua estrangeira padrão para a modelo físico';
COMMENT ON column questao.gabarito_es is 'Letra correspondente ao gabarito da questão da prova de espanhol. As demais linhas não referentes as questões de espanhol assumem
valor nulo';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 10/09/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 

CREATE TABLE RESPONDE(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	SEQUENCIAL_QUESTAO NUMERIC(12) NOT NULL,
	RESPOSTA_QUESTAO VARCHAR(1) NULL,
 	CONSTRAINT PK_RESPONDE PRIMARY KEY (NU_INSCRICAO, SEQUENCIAL_QUESTAO),
	CONSTRAINT FK_RESPONDE_CANDIDATO FOREIGN KEY (NU_INSCRICAO) REFERENCES CANDIDATO (NU_INSCRICAO),
	CONSTRAINT FK_RESPONDE_QUESTAO FOREIGN KEY (SEQUENCIAL_QUESTAO) REFERENCES QUESTAO (SEQUENCIAL_QUESTAO)
);
-- Falta colocar no servidor
COMMENT on table RESPONDE is 'Tabela que guarda as respostas de cada inscrito no Enem';
COMMENT ON column responde.nu_inscricao is 'Código referente a cada inscrito na prova do Enem (chave estrangeira: responde-candidato)';
COMMENT ON column contem.sequencial_questao is 'Número da questao da prova do Enem (composição: Ano da prova + código de cor + número de questão (1 a 180), chave estrangeira:
responde-questao)';
COMMENT ON column contem.resposta is 'Resposta da questão da prova atribuída pelo inscrito do Enem';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 27/01/2017
-- Tabela revisada no servidor. DATA DA REVISÃO: 05/03/2017

CREATE TABLE CONTEM(
	ID_PROVA NUMERIC(7)  NOT NULL,
	SEQUENCIAL_QUESTAO NUMERIC(11) NOT NULL,
	CONSTRAINT PK_CONTEM PRIMARY KEY (ID_PROVA, SEQUENCIAL_QUESTAO),
	CONSTRAINT FK_CONTEM_PROVA FOREIGN KEY(ID_PROVA) REFERENCES PROVA(ID_PROVA),
	CONSTRAINT FK_CONTEM_QUESTAO FOREIGN KEY(SEQUENCIAL_QUESTAO) REFERENCES QUESTAO(SEQUENCIAL_QUESTAO)
);
COMMENT on table CONTEM is 'Tabela que guarda as informações da prova e questão. Esta tabela guarda informações de relacionamento com as tabelas: Prova e Questao';
COMMENT ON column contem.id_prova is 'Número de identificação da prova do Enem (composição: Ano da prova + número da cor da prova: 2015+235=2015235, chave estrangeira: contem-prova)';
COMMENT ON column contem.sequencial_questao is 'Número da questao da prova do Enem (composição: Ano da prova + código de cor + número de questão (1 a 180), chave estrangeira: contem-questao)';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 31/12/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 05/01/2017

CREATE TABLE QUESTAO_SOCIOECONOMICO(
	SEQUENCIAL_QUESTIONARIO_SOCIO NUMERIC(2) NOT NULL PRIMARY KEY,
	QUESTAO VARCHAR(500) NULL
);
-- Falta colocar no servidor
COMMENT on table QUESTAO_SOCIOECONOMICO is 'Tabela que guarda cada questão que compõe o questionário socioeconômico';
COMMENT on column QUESTAO_SOCIOECONOMICO.sequencial_questionario_socio is 'Números sequenciais referentes a cada questão socioeconômica';
COMMENT on column QUESTAO_SOCIOECONOMICO.questao is 'Enunciado de cada questão socioeconômica';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 12/01/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:13/01/2016

CREATE TABLE PREENCHE(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	SEQUENCIAL_QUESTIONARIO_SOCIO NUMERIC(2) NOT NULL,
	RESPOSTA_SOCIOECONOMICO	VARCHAR(2) NULL,
	CONSTRAINT PK_PREENCHE PRIMARY KEY (NU_INSCRICAO, SEQUENCIAL_QUESTIONARIO_SOCIO),
	CONSTRAINT FK_PREENCHE_QUESTAO_SOCIOECONOMICO FOREIGN KEY(SEQUENCIAL_QUESTIONARIO_SOCIO) REFERENCES QUESTAO_SOCIOECONOMICO(SEQUENCIAL_QUESTIONARIO_SOCIO),
	CONSTRAINT FK_PREENCHE_CANDIDATO FOREIGN KEY(NU_INSCRICAO) REFERENCES CANDIDATO(NU_INSCRICAO)
);
-- Falta colocar no servidor
COMMENT on table PREENCHE is 'Tabela que guarda a resposta referente a questão socioeconômica do inscrito no Enem';
COMMENT on column PREENCHE.nu_inscricao is 'Código referente a cada inscrito na prova do Enem (chave estrangeira: preenche-candidato)';
COMMENT on column PREENCHE.sequencial_questionario_socio is 'Números sequenciais referentes a cada questão socioeconômica (chave estrangeira: preenche-questao_socioeconomico)';
COMMENT on column PREENCHE.resposta_socioeconomico is 'Resposta referente a cada questão socioeconômica';

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 20/01/2018
-- TABELAS QUE SERVEM COMO DICIONÁRIO

CREATE TABLE DIC_ESCOLA_TPM_ADM_ESCOLA(
	ID_DIC NUMERIC  NOT NULL PRIMARY KEY,
	DIC_TPM_ADM_ESCOLA VARCHAR(10) NULL,
);

CREATE TABLE DIC_ESCOLA_TIPO_LOCALIZACAO(
	ID_DIC NUMERIC  NOT NULL PRIMARY KEY,
	DIC_TIPO_LOCALIZACAO VARCHAR(10) NULL
);

CREATE TABLE DIC_ESCOLA_SIT_FUNC_ESCOLAR(
	ID_DIC NUMERIC  NOT NULL PRIMARY KEY,
	DIC_SIT_FUNC_ESCOLAR VARCHAR(40)NULL
);