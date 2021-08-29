--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.3

-- Started on 2021-08-29 19:32:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 16394)
-- Name: gestao_imobiliario; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA gestao_imobiliario;


ALTER SCHEMA gestao_imobiliario OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 24730)
-- Name: aluguel_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.aluguel_imovel (
    id_aluguel_imovel integer NOT NULL,
    id_imovel_aluguel integer,
    id_cliente_aluguel character varying(14),
    id_funcionario_aluguel integer,
    data_anuncio_aluguel date,
    preco_sugerido_aluguel money,
    valor_aluguel money,
    parte_aluguel_imobiliaria money,
    comissao_funcionario_aluguel money,
    data_transacao_aluguel date,
    num_contrato_aluguel integer,
    forma_pagamento_aluguel integer
);


ALTER TABLE gestao_imobiliario.aluguel_imovel OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16429)
-- Name: apartamento; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.apartamento (
    id_apartamento integer NOT NULL,
    qtde_quartos_ap integer NOT NULL,
    qtde_suites_ap integer NOT NULL,
    "qtde_sala_estar_ap " integer NOT NULL,
    "qtde_sala_jantar_ap " integer NOT NULL,
    "qtde_vaga_garagem_ap " integer NOT NULL,
    area_ap real NOT NULL,
    armario_embutido character varying[] NOT NULL,
    andar_ap integer NOT NULL,
    condominio real NOT NULL,
    portaria_ap character varying(3) NOT NULL,
    descricao_casa character varying[],
    id_imovel_cat_fk integer NOT NULL
);


ALTER TABLE gestao_imobiliario.apartamento OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24670)
-- Name: cargos_imobiliaria; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.cargos_imobiliaria (
    id_cargo_imobiliaria integer NOT NULL,
    nome_cargo_imobiliaria character varying(30) NOT NULL,
    salario_base_cargo_imobiliaria money NOT NULL
);


ALTER TABLE gestao_imobiliario.cargos_imobiliaria OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16421)
-- Name: casa; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.casa (
    id_casa integer NOT NULL,
    qtde_quartos_casa integer NOT NULL,
    qtde_suites_casa integer NOT NULL,
    qtde_sala_estar_casa integer NOT NULL,
    qtde_sala_jantar_casa integer NOT NULL,
    qtde_vaga_garagem_casa integer NOT NULL,
    area_casa real NOT NULL,
    armario_embutido_casa character varying(3)[] NOT NULL,
    descricao_casa character varying(200)[],
    id_imovel_cat_fk integer NOT NULL
);


ALTER TABLE gestao_imobiliario.casa OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16403)
-- Name: categoria_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.categoria_imovel (
    id_categoria integer NOT NULL
);


ALTER TABLE gestao_imobiliario.categoria_imovel OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24660)
-- Name: cliente_proprietario; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.cliente_proprietario (
    cpf_cliente_proprietario character varying(50) NOT NULL,
    endereco_cliente_proprietario character varying(100) NOT NULL,
    telefone1_cliente_proprietario character varying(12) NOT NULL,
    telefone2_cliente_proprietario character varying(12),
    email_cliente_proprietario character varying(50) NOT NULL,
    sexo__cliente_proprietario "char" NOT NULL,
    estado_civil_cliente_proprietario character varying(12) NOT NULL,
    profissao_cliente_proprietario character varying(30)
);


ALTER TABLE gestao_imobiliario.cliente_proprietario OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24624)
-- Name: cliente_usuario; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.cliente_usuario (
    cpf_cliente_usuariol character varying(14) NOT NULL,
    nome_cliente_usuario character varying(50) NOT NULL,
    endereco_cliente_usuario character varying(100) NOT NULL,
    telefone1_cliente_usuario character varying(12) NOT NULL,
    telefone2_cliente_usuario character varying(12),
    sexo_cliente_usuario "char" NOT NULL,
    estado_cliente_usuario character varying(12) NOT NULL,
    profissao_cliente_usuario character varying(30) NOT NULL
);


ALTER TABLE gestao_imobiliario.cliente_usuario OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24629)
-- Name: endereco_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.endereco_imovel (
    id_endereco_imovel integer NOT NULL,
    id__imovel integer NOT NULL,
    cep_imovel character varying(9) NOT NULL,
    num_imovel integer,
    logradouro_imovel character varying(50) NOT NULL,
    complemento character varying(50),
    bairro_imovel character varying(25) NOT NULL,
    cidade_imovel character varying(50) NOT NULL,
    estado_imovel character varying(50) NOT NULL
);


ALTER TABLE gestao_imobiliario.endereco_imovel OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24642)
-- Name: fiador; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.fiador (
    cpf_fiador character varying(14) NOT NULL,
    nome_fiador character varying(50)
);


ALTER TABLE gestao_imobiliario.fiador OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24665)
-- Name: forma_de_pagamento; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.forma_de_pagamento (
    id_forma_de_pagamento integer NOT NULL,
    descricao_forma_de_pagamento character varying(30)
);


ALTER TABLE gestao_imobiliario.forma_de_pagamento OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24675)
-- Name: funcionario; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.funcionario (
    id_funcionario integer NOT NULL,
    comissao_funcionario money NOT NULL,
    nome_funcionario character varying(50) NOT NULL,
    telefone_funcionario character varying(12) NOT NULL,
    cpf_funcionario character varying(14) NOT NULL,
    telefone_contato_funcionario character varying(12) NOT NULL,
    telefone_celular_funcionario character varying(12),
    data_ingresso_imobiliario_funcionario date NOT NULL,
    id_cargo_funcionario integer NOT NULL,
    salario_funcionario money NOT NULL,
    login_funcionario character varying(30) NOT NULL,
    senha_funcionario character varying(128) NOT NULL
);


ALTER TABLE gestao_imobiliario.funcionario OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16395)
-- Name: imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.imovel (
    id_imovel integer NOT NULL,
    status_imovel character varying(20)[] NOT NULL,
    imagem_imovel character varying(50)[],
    data_construcao date NOT NULL
);


ALTER TABLE gestao_imobiliario.imovel OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24634)
-- Name: indicacao; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.indicacao (
    cpf_indicacao character varying(14) NOT NULL,
    nome_indicacao character varying(50)
);


ALTER TABLE gestao_imobiliario.indicacao OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16437)
-- Name: sala_comercial; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.sala_comercial (
    id_sala_comercial integer NOT NULL,
    area_sala_comercial real NOT NULL,
    qtde_banheiro_sala_comercial integer NOT NULL,
    qtde_comodos_sala_comercial integer NOT NULL,
    id_imovel_cat_fk integer NOT NULL
);


ALTER TABLE gestao_imobiliario.sala_comercial OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24619)
-- Name: terreno; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.terreno (
    id_terrano integer NOT NULL,
    area_terreno real NOT NULL,
    largura_terrano real NOT NULL,
    comprimento_terreno real NOT NULL,
    aclive_terreno character varying(3) NOT NULL,
    id_imovel_cat_fk integer NOT NULL
);


ALTER TABLE gestao_imobiliario.terreno OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24705)
-- Name: venda_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.venda_imovel (
    id_op_venda_imovel integer NOT NULL,
    id_imovel_venda integer,
    id_cliente_venda character varying(14),
    id_funcionario_venda integer,
    preco_sugerido_venda money,
    valor_venda money,
    parte_venda_imobiliario real,
    data_anuncio_venda date,
    forma_pagamento_venda integer
);


ALTER TABLE gestao_imobiliario.venda_imovel OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 24730)
-- Dependencies: 217
-- Data for Name: aluguel_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.aluguel_imovel (id_aluguel_imovel, id_imovel_aluguel, id_cliente_aluguel, id_funcionario_aluguel, data_anuncio_aluguel, preco_sugerido_aluguel, valor_aluguel, parte_aluguel_imobiliaria, comissao_funcionario_aluguel, data_transacao_aluguel, num_contrato_aluguel, forma_pagamento_aluguel) FROM stdin;
\.


--
-- TOC entry 3089 (class 0 OID 16429)
-- Dependencies: 205
-- Data for Name: apartamento; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.apartamento (id_apartamento, qtde_quartos_ap, qtde_suites_ap, "qtde_sala_estar_ap ", "qtde_sala_jantar_ap ", "qtde_vaga_garagem_ap ", area_ap, armario_embutido, andar_ap, condominio, portaria_ap, descricao_casa, id_imovel_cat_fk) FROM stdin;
\.


--
-- TOC entry 3098 (class 0 OID 24670)
-- Dependencies: 214
-- Data for Name: cargos_imobiliaria; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.cargos_imobiliaria (id_cargo_imobiliaria, nome_cargo_imobiliaria, salario_base_cargo_imobiliaria) FROM stdin;
\.


--
-- TOC entry 3088 (class 0 OID 16421)
-- Dependencies: 204
-- Data for Name: casa; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.casa (id_casa, qtde_quartos_casa, qtde_suites_casa, qtde_sala_estar_casa, qtde_sala_jantar_casa, qtde_vaga_garagem_casa, area_casa, armario_embutido_casa, descricao_casa, id_imovel_cat_fk) FROM stdin;
\.


--
-- TOC entry 3087 (class 0 OID 16403)
-- Dependencies: 203
-- Data for Name: categoria_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.categoria_imovel (id_categoria) FROM stdin;
\.


--
-- TOC entry 3096 (class 0 OID 24660)
-- Dependencies: 212
-- Data for Name: cliente_proprietario; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.cliente_proprietario (cpf_cliente_proprietario, endereco_cliente_proprietario, telefone1_cliente_proprietario, telefone2_cliente_proprietario, email_cliente_proprietario, sexo__cliente_proprietario, estado_civil_cliente_proprietario, profissao_cliente_proprietario) FROM stdin;
\.


--
-- TOC entry 3092 (class 0 OID 24624)
-- Dependencies: 208
-- Data for Name: cliente_usuario; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.cliente_usuario (cpf_cliente_usuariol, nome_cliente_usuario, endereco_cliente_usuario, telefone1_cliente_usuario, telefone2_cliente_usuario, sexo_cliente_usuario, estado_cliente_usuario, profissao_cliente_usuario) FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 24629)
-- Dependencies: 209
-- Data for Name: endereco_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.endereco_imovel (id_endereco_imovel, id__imovel, cep_imovel, num_imovel, logradouro_imovel, complemento, bairro_imovel, cidade_imovel, estado_imovel) FROM stdin;
\.


--
-- TOC entry 3095 (class 0 OID 24642)
-- Dependencies: 211
-- Data for Name: fiador; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.fiador (cpf_fiador, nome_fiador) FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 24665)
-- Dependencies: 213
-- Data for Name: forma_de_pagamento; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.forma_de_pagamento (id_forma_de_pagamento, descricao_forma_de_pagamento) FROM stdin;
\.


--
-- TOC entry 3099 (class 0 OID 24675)
-- Dependencies: 215
-- Data for Name: funcionario; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.funcionario (id_funcionario, comissao_funcionario, nome_funcionario, telefone_funcionario, cpf_funcionario, telefone_contato_funcionario, telefone_celular_funcionario, data_ingresso_imobiliario_funcionario, id_cargo_funcionario, salario_funcionario, login_funcionario, senha_funcionario) FROM stdin;
\.


--
-- TOC entry 3086 (class 0 OID 16395)
-- Dependencies: 202
-- Data for Name: imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.imovel (id_imovel, status_imovel, imagem_imovel, data_construcao) FROM stdin;
\.


--
-- TOC entry 3094 (class 0 OID 24634)
-- Dependencies: 210
-- Data for Name: indicacao; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.indicacao (cpf_indicacao, nome_indicacao) FROM stdin;
\.


--
-- TOC entry 3090 (class 0 OID 16437)
-- Dependencies: 206
-- Data for Name: sala_comercial; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.sala_comercial (id_sala_comercial, area_sala_comercial, qtde_banheiro_sala_comercial, qtde_comodos_sala_comercial, id_imovel_cat_fk) FROM stdin;
\.


--
-- TOC entry 3091 (class 0 OID 24619)
-- Dependencies: 207
-- Data for Name: terreno; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.terreno (id_terrano, area_terreno, largura_terrano, comprimento_terreno, aclive_terreno, id_imovel_cat_fk) FROM stdin;
\.


--
-- TOC entry 3100 (class 0 OID 24705)
-- Dependencies: 216
-- Data for Name: venda_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.venda_imovel (id_op_venda_imovel, id_imovel_venda, id_cliente_venda, id_funcionario_venda, preco_sugerido_venda, valor_venda, parte_venda_imobiliario, data_anuncio_venda, forma_pagamento_venda) FROM stdin;
\.


--
-- TOC entry 2940 (class 2606 OID 24734)
-- Name: aluguel_imovel aluguel_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.aluguel_imovel
    ADD CONSTRAINT aluguel_imovel_pkey PRIMARY KEY (id_aluguel_imovel);


--
-- TOC entry 2920 (class 2606 OID 16436)
-- Name: apartamento apartamento_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.apartamento
    ADD CONSTRAINT apartamento_pkey PRIMARY KEY (id_apartamento);


--
-- TOC entry 2934 (class 2606 OID 24674)
-- Name: cargos_imobiliaria cargos_imobiliaria_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.cargos_imobiliaria
    ADD CONSTRAINT cargos_imobiliaria_pkey PRIMARY KEY (id_cargo_imobiliaria);


--
-- TOC entry 2918 (class 2606 OID 16428)
-- Name: casa casa_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.casa
    ADD CONSTRAINT casa_pkey PRIMARY KEY (id_casa);


--
-- TOC entry 2916 (class 2606 OID 16407)
-- Name: categoria_imovel categoria_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.categoria_imovel
    ADD CONSTRAINT categoria_imovel_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2930 (class 2606 OID 24664)
-- Name: cliente_proprietario cliente_proprietario_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.cliente_proprietario
    ADD CONSTRAINT cliente_proprietario_pkey PRIMARY KEY (cpf_cliente_proprietario);


--
-- TOC entry 2926 (class 2606 OID 24628)
-- Name: cliente_usuario cliente_usuario_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.cliente_usuario
    ADD CONSTRAINT cliente_usuario_pkey PRIMARY KEY (cpf_cliente_usuariol);


--
-- TOC entry 2928 (class 2606 OID 24633)
-- Name: endereco_imovel endereco_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.endereco_imovel
    ADD CONSTRAINT endereco_imovel_pkey PRIMARY KEY (id_endereco_imovel);


--
-- TOC entry 2932 (class 2606 OID 24669)
-- Name: forma_de_pagamento forma_de_pagamento_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.forma_de_pagamento
    ADD CONSTRAINT forma_de_pagamento_pkey PRIMARY KEY (id_forma_de_pagamento);


--
-- TOC entry 2936 (class 2606 OID 24679)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);


--
-- TOC entry 2924 (class 2606 OID 24623)
-- Name: terreno id_imovel_cat_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.terreno
    ADD CONSTRAINT id_imovel_cat_pkey PRIMARY KEY (id_terrano);


--
-- TOC entry 2914 (class 2606 OID 16402)
-- Name: imovel imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.imovel
    ADD CONSTRAINT imovel_pkey PRIMARY KEY (id_imovel);


--
-- TOC entry 2922 (class 2606 OID 16441)
-- Name: sala_comercial sala_comercial_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.sala_comercial
    ADD CONSTRAINT sala_comercial_pkey PRIMARY KEY (id_sala_comercial);


--
-- TOC entry 2938 (class 2606 OID 24709)
-- Name: venda_imovel venda_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT venda_imovel_pkey PRIMARY KEY (id_op_venda_imovel);


--
-- TOC entry 2946 (class 2606 OID 24645)
-- Name: fiador cpf_cliente_usuario_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.fiador
    ADD CONSTRAINT cpf_cliente_usuario_fk FOREIGN KEY (cpf_fiador) REFERENCES gestao_imobiliario.cliente_usuario(cpf_cliente_usuariol) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2945 (class 2606 OID 24650)
-- Name: indicacao cpf_cliente_usuario_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.indicacao
    ADD CONSTRAINT cpf_cliente_usuario_fk FOREIGN KEY (cpf_indicacao) REFERENCES gestao_imobiliario.cliente_usuario(cpf_cliente_usuariol) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2955 (class 2606 OID 24750)
-- Name: aluguel_imovel forma_pagamento_aluguel_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.aluguel_imovel
    ADD CONSTRAINT forma_pagamento_aluguel_fk FOREIGN KEY (forma_pagamento_aluguel) REFERENCES gestao_imobiliario.forma_de_pagamento(id_forma_de_pagamento) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2951 (class 2606 OID 24725)
-- Name: venda_imovel forma_pagamento_venda_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT forma_pagamento_venda_fk FOREIGN KEY (forma_pagamento_venda) REFERENCES gestao_imobiliario.forma_de_pagamento(id_forma_de_pagamento) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2947 (class 2606 OID 24680)
-- Name: funcionario id_cargo_imobiliaria_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.funcionario
    ADD CONSTRAINT id_cargo_imobiliaria_fk FOREIGN KEY (id_cargo_funcionario) REFERENCES gestao_imobiliario.cargos_imobiliaria(id_cargo_imobiliaria) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2953 (class 2606 OID 24740)
-- Name: aluguel_imovel id_cliente_aluguel_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.aluguel_imovel
    ADD CONSTRAINT id_cliente_aluguel_fk FOREIGN KEY (id_cliente_aluguel) REFERENCES gestao_imobiliario.cliente_usuario(cpf_cliente_usuariol) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2949 (class 2606 OID 24715)
-- Name: venda_imovel id_cliente_venda_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT id_cliente_venda_fk FOREIGN KEY (id_cliente_venda) REFERENCES gestao_imobiliario.cliente_proprietario(cpf_cliente_proprietario) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2954 (class 2606 OID 24745)
-- Name: aluguel_imovel id_funcionario_aluguel_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.aluguel_imovel
    ADD CONSTRAINT id_funcionario_aluguel_fk FOREIGN KEY (id_funcionario_aluguel) REFERENCES gestao_imobiliario.funcionario(id_funcionario) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2950 (class 2606 OID 24720)
-- Name: venda_imovel id_funcionario_venda_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT id_funcionario_venda_fk FOREIGN KEY (id_funcionario_venda) REFERENCES gestao_imobiliario.funcionario(id_funcionario) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2952 (class 2606 OID 24735)
-- Name: aluguel_imovel id_imovel_aluguel_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.aluguel_imovel
    ADD CONSTRAINT id_imovel_aluguel_fk FOREIGN KEY (id_imovel_aluguel) REFERENCES gestao_imobiliario.imovel(id_imovel) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2941 (class 2606 OID 24576)
-- Name: casa id_imovel_cat_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.casa
    ADD CONSTRAINT id_imovel_cat_fk FOREIGN KEY (id_imovel_cat_fk) REFERENCES gestao_imobiliario.categoria_imovel(id_categoria) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2942 (class 2606 OID 24581)
-- Name: apartamento id_imovel_cat_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.apartamento
    ADD CONSTRAINT id_imovel_cat_fk FOREIGN KEY (id_apartamento) REFERENCES gestao_imobiliario.categoria_imovel(id_categoria) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2943 (class 2606 OID 24591)
-- Name: sala_comercial id_imovel_cat_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.sala_comercial
    ADD CONSTRAINT id_imovel_cat_fk FOREIGN KEY (id_imovel_cat_fk) REFERENCES gestao_imobiliario.categoria_imovel(id_categoria) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2944 (class 2606 OID 24655)
-- Name: terreno id_imovel_cat_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.terreno
    ADD CONSTRAINT id_imovel_cat_fk FOREIGN KEY (id_imovel_cat_fk) REFERENCES gestao_imobiliario.categoria_imovel(id_categoria) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2948 (class 2606 OID 24710)
-- Name: venda_imovel id_imovel_venda_fk; Type: FK CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT id_imovel_venda_fk FOREIGN KEY (id_imovel_venda) REFERENCES gestao_imobiliario.imovel(id_imovel) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2021-08-29 19:32:26

--
-- PostgreSQL database dump complete
--

