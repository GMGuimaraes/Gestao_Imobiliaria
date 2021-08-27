--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.3

-- Started on 2021-08-27 16:20:38

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
-- TOC entry 207 (class 1259 OID 16429)
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
    armario_embutido character varying(3)[] NOT NULL,
    andar_ap integer NOT NULL,
    condominio real NOT NULL,
    portaria_ap character varying(3) NOT NULL,
    descricao_casa character varying(200)[]
);


ALTER TABLE gestao_imobiliario.apartamento OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16421)
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
    descricao_casa character varying(200)[]
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
-- TOC entry 210 (class 1259 OID 16450)
-- Name: cliente_usuario; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.cliente_usuario (
    cpf character varying(14)[] NOT NULL,
    nome_cliente_usuario character varying(50)[] NOT NULL,
    endereco_cliente_usuario character varying(100)[] NOT NULL,
    telefone_cliente_usuario character varying(12) NOT NULL,
    sexo_cliente_usuario "char" NOT NULL,
    "estado_civil_cliente_usuario " character varying(12) NOT NULL,
    profissao_cliente_usuario character varying(30)
);


ALTER TABLE gestao_imobiliario.cliente_usuario OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16408)
-- Name: endereco_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.endereco_imovel (
    id_endereco_imovel integer NOT NULL,
    id_imovel integer NOT NULL,
    cep_imovel character varying(9)[] NOT NULL,
    num_imovel integer,
    logradouro_imovel character varying(50)[] NOT NULL,
    complemento character varying(50)[],
    bairro_imovel character varying(25)[] NOT NULL,
    cidade_imovel character varying(50)[] NOT NULL,
    estado_imovel character varying(50)[] NOT NULL
);


ALTER TABLE gestao_imobiliario.endereco_imovel OWNER TO postgres;

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
-- TOC entry 208 (class 1259 OID 16437)
-- Name: sala_comercial; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.sala_comercial (
    id_sala_comercial integer NOT NULL,
    area_sala_comercial real NOT NULL,
    qtde_banheiro_sala_comercial integer NOT NULL,
    qtde_comodos_sala_comercial integer NOT NULL
);


ALTER TABLE gestao_imobiliario.sala_comercial OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16442)
-- Name: terreno; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.terreno (
    id_terreno integer NOT NULL,
    area_terreno real NOT NULL,
    largura_terreno real NOT NULL,
    comprimento_terreno real NOT NULL,
    aclive_terreno character varying(3)[] NOT NULL
);


ALTER TABLE gestao_imobiliario.terreno OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16416)
-- Name: venda_imovel; Type: TABLE; Schema: gestao_imobiliario; Owner: postgres
--

CREATE TABLE gestao_imobiliario.venda_imovel (
    id_op_venda_imovel integer NOT NULL,
    preco_sugerido money,
    valor_venda money,
    parte_valor_imobiliaria money
);


ALTER TABLE gestao_imobiliario.venda_imovel OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 16429)
-- Dependencies: 207
-- Data for Name: apartamento; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.apartamento (id_apartamento, qtde_quartos_ap, qtde_suites_ap, "qtde_sala_estar_ap ", "qtde_sala_jantar_ap ", "qtde_vaga_garagem_ap ", area_ap, armario_embutido, andar_ap, condominio, portaria_ap, descricao_casa) FROM stdin;
\.


--
-- TOC entry 3040 (class 0 OID 16421)
-- Dependencies: 206
-- Data for Name: casa; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.casa (id_casa, qtde_quartos_casa, qtde_suites_casa, qtde_sala_estar_casa, qtde_sala_jantar_casa, qtde_vaga_garagem_casa, area_casa, armario_embutido_casa, descricao_casa) FROM stdin;
\.


--
-- TOC entry 3037 (class 0 OID 16403)
-- Dependencies: 203
-- Data for Name: categoria_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.categoria_imovel (id_categoria) FROM stdin;
\.


--
-- TOC entry 3044 (class 0 OID 16450)
-- Dependencies: 210
-- Data for Name: cliente_usuario; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.cliente_usuario (cpf, nome_cliente_usuario, endereco_cliente_usuario, telefone_cliente_usuario, sexo_cliente_usuario, "estado_civil_cliente_usuario ", profissao_cliente_usuario) FROM stdin;
\.


--
-- TOC entry 3038 (class 0 OID 16408)
-- Dependencies: 204
-- Data for Name: endereco_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.endereco_imovel (id_endereco_imovel, id_imovel, cep_imovel, num_imovel, logradouro_imovel, complemento, bairro_imovel, cidade_imovel, estado_imovel) FROM stdin;
\.


--
-- TOC entry 3036 (class 0 OID 16395)
-- Dependencies: 202
-- Data for Name: imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.imovel (id_imovel, status_imovel, imagem_imovel, data_construcao) FROM stdin;
\.


--
-- TOC entry 3042 (class 0 OID 16437)
-- Dependencies: 208
-- Data for Name: sala_comercial; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.sala_comercial (id_sala_comercial, area_sala_comercial, qtde_banheiro_sala_comercial, qtde_comodos_sala_comercial) FROM stdin;
\.


--
-- TOC entry 3043 (class 0 OID 16442)
-- Dependencies: 209
-- Data for Name: terreno; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.terreno (id_terreno, area_terreno, largura_terreno, comprimento_terreno, aclive_terreno) FROM stdin;
\.


--
-- TOC entry 3039 (class 0 OID 16416)
-- Dependencies: 205
-- Data for Name: venda_imovel; Type: TABLE DATA; Schema: gestao_imobiliario; Owner: postgres
--

COPY gestao_imobiliario.venda_imovel (id_op_venda_imovel, preco_sugerido, valor_venda, parte_valor_imobiliaria) FROM stdin;
\.


--
-- TOC entry 2899 (class 2606 OID 16436)
-- Name: apartamento apartamento_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.apartamento
    ADD CONSTRAINT apartamento_pkey PRIMARY KEY (id_apartamento);


--
-- TOC entry 2897 (class 2606 OID 16428)
-- Name: casa casa_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.casa
    ADD CONSTRAINT casa_pkey PRIMARY KEY (id_casa);


--
-- TOC entry 2891 (class 2606 OID 16407)
-- Name: categoria_imovel categoria_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.categoria_imovel
    ADD CONSTRAINT categoria_imovel_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2905 (class 2606 OID 16457)
-- Name: cliente_usuario cliente_usuario_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.cliente_usuario
    ADD CONSTRAINT cliente_usuario_pkey PRIMARY KEY (cpf);


--
-- TOC entry 2893 (class 2606 OID 16415)
-- Name: endereco_imovel endereco_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.endereco_imovel
    ADD CONSTRAINT endereco_imovel_pkey PRIMARY KEY (id_endereco_imovel);


--
-- TOC entry 2889 (class 2606 OID 16402)
-- Name: imovel imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.imovel
    ADD CONSTRAINT imovel_pkey PRIMARY KEY (id_imovel);


--
-- TOC entry 2901 (class 2606 OID 16441)
-- Name: sala_comercial sala_comercial_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.sala_comercial
    ADD CONSTRAINT sala_comercial_pkey PRIMARY KEY (id_sala_comercial);


--
-- TOC entry 2903 (class 2606 OID 16449)
-- Name: terreno terreno_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.terreno
    ADD CONSTRAINT terreno_pkey PRIMARY KEY (id_terreno);


--
-- TOC entry 2895 (class 2606 OID 16420)
-- Name: venda_imovel venda_imovel_pkey; Type: CONSTRAINT; Schema: gestao_imobiliario; Owner: postgres
--

ALTER TABLE ONLY gestao_imobiliario.venda_imovel
    ADD CONSTRAINT venda_imovel_pkey PRIMARY KEY (id_op_venda_imovel);


-- Completed on 2021-08-27 16:20:43

--
-- PostgreSQL database dump complete
--

