--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-28 01:22:56

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16498)
-- Name: bairro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bairro (
    idbairro integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.bairro OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16470)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    idclient integer NOT NULL,
    nome character varying(50),
    cpf character(11),
    rg character varying(15),
    data_nascimento date,
    genero character(1),
    numero character varying(10),
    logradouro character varying(30),
    observacoes text,
    idprofissao integer,
    idnacionalidade integer,
    idcomplemento integer,
    idbairro integer,
    idmunicipio integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16491)
-- Name: complemento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.complemento (
    idcomplemento integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.complemento OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16551)
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedor (
    idfornecedor integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.fornecedor OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16534)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    idmunicipio integer NOT NULL,
    nome character varying(40) NOT NULL,
    iduf integer NOT NULL
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16484)
-- Name: nacionalidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nacionalidade (
    idnacionalidade integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.nacionalidade OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16587)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    idpedido integer NOT NULL,
    idcliente integer NOT NULL,
    idtransportadora integer,
    idvendedor integer NOT NULL,
    datapedido date NOT NULL,
    valor numeric(10,2) NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16607)
-- Name: pedidoproduto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidoproduto (
    idpedido integer NOT NULL,
    idproduto integer NOT NULL,
    quantidade integer NOT NULL,
    valor_unidade numeric(10,2) NOT NULL
);


ALTER TABLE public.pedidoproduto OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16577)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    idproduto integer NOT NULL,
    idfornecedor integer NOT NULL,
    nome character varying(40) NOT NULL,
    valor numeric(10,2) NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16477)
-- Name: profissao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profissao (
    idprofissao integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.profissao OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16565)
-- Name: transportadora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transportadora (
    idtransportadora integer NOT NULL,
    idmunicipio integer NOT NULL,
    nome character varying(40) NOT NULL,
    logradouro character varying(40),
    numero character varying(10)
);


ALTER TABLE public.transportadora OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16525)
-- Name: uf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uf (
    iduf integer NOT NULL,
    nome character varying(40) NOT NULL,
    sigla character(2) NOT NULL
);


ALTER TABLE public.uf OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16558)
-- Name: vendedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendedor (
    idvendedor integer NOT NULL,
    nome character varying(40) NOT NULL
);


ALTER TABLE public.vendedor OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 16498)
-- Dependencies: 218
-- Data for Name: bairro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bairro (idbairro, nome) FROM stdin;
1	Cidade Nova
2	Centro
3	São Pedro
4	Santa Rosa
\.


--
-- TOC entry 3421 (class 0 OID 16470)
-- Dependencies: 214
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (idclient, nome, cpf, rg, data_nascimento, genero, numero, logradouro, observacoes, idprofissao, idnacionalidade, idcomplemento, idbairro, idmunicipio) FROM stdin;
17	Getúlio	\N	4631	1978-04-01	M	343	Rua Central	\N	\N	\N	2	2	\N
2	Geraldo	12343299291	56565	1991-10-01	M	200	Rua das Limas	\N	2	1	2	2	1
11	Fernanda	\N	\N	\N	F	\N	\N	\N	\N	1	\N	\N	1
10	Fabricio	2939342832 	302312	\N	M	\N	\N	\N	1	1	\N	\N	1
1	Manoel	888283821  	32323	2001-01-30	M	23	Rua Joaquim Nabuco	\N	1	1	1	1	1
3	Carlos	8773233227 	55463	1967-10-01	M	300	Rua das Laranjeiras	\N	3	1	2	2	2
12	Gilmar	888818181  	888	2000-02-01	M	200	Rua das Laranjeiras	\N	1	\N	\N	1	2
4	Adriano	12321222122	98777	1989-09-10	M	241	Rua das Limas	\N	4	1	1	3	3
5	Amanda	9992828484 	9127	1989-04-03	F	100	Av.Central	\N	4	2	\N	3	4
6	Ângelo	98238342   	123123	2000-01-01	M	300	Av. Beira Mar	\N	5	1	\N	2	5
13	Diego	1010191919 	11939	\N	M	455	Rua Central	\N	5	4	1	1	5
7	Anderson	\N	\N	\N	M	100	Av. Brasil	\N	5	2	2	4	6
8	Camila	9998238432 	\N	2001-10-10	F	4333	Rua Central	\N	5	3	\N	2	7
9	Cristiano	\N	\N	\N	M	877	Rua do Centro	\N	1	4	1	2	8
15	Jessica	\N	\N	\N	F	\N	\N	\N	1	\N	\N	\N	9
14	Jeferson	\N	\N	1983-07-01	M	\N	\N	\N	\N	1	\N	\N	9
\.


--
-- TOC entry 3424 (class 0 OID 16491)
-- Dependencies: 217
-- Data for Name: complemento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.complemento (idcomplemento, nome) FROM stdin;
1	Casa
2	Apartamento
\.


--
-- TOC entry 3428 (class 0 OID 16551)
-- Dependencies: 221
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fornecedor (idfornecedor, nome) FROM stdin;
1	Cap.Computadores
2	AA. Computadores
3	BB. Máquinas
\.


--
-- TOC entry 3427 (class 0 OID 16534)
-- Dependencies: 220
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipio (idmunicipio, nome, iduf) FROM stdin;
1	Porto União	1
2	Canoinhas	1
3	Porto Vitória	2
4	General Carneiro	2
5	São Paulo	3
6	Rio de Janeiro	6
7	Uberlândia	4
8	Porto Alegre	5
9	União da Vitória	2
\.


--
-- TOC entry 3423 (class 0 OID 16484)
-- Dependencies: 216
-- Data for Name: nacionalidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nacionalidade (idnacionalidade, nome) FROM stdin;
1	Brasileira
2	Italiana
3	Norte-Americana
4	Alemã
\.


--
-- TOC entry 3432 (class 0 OID 16587)
-- Dependencies: 225
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido (idpedido, idcliente, idtransportadora, idvendedor, datapedido, valor) FROM stdin;
1	1	1	1	2008-04-01	1300.00
2	1	1	1	2008-04-01	500.00
3	11	2	5	2008-04-02	300.00
4	8	1	7	2008-04-05	1000.00
5	9	2	6	2008-04-06	200.00
6	10	1	6	2008-04-06	1985.00
7	3	1	7	2008-04-06	800.00
8	3	\N	7	2008-04-06	175.00
9	12	\N	8	2008-04-07	1300.00
10	6	1	8	2008-04-10	200.00
11	15	2	1	2008-04-15	300.00
12	15	2	5	2008-04-20	500.00
13	9	2	7	2008-04-20	350.00
14	2	1	5	2008-04-23	300.00
15	11	\N	5	2008-04-25	200.00
\.


--
-- TOC entry 3433 (class 0 OID 16607)
-- Dependencies: 226
-- Data for Name: pedidoproduto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidoproduto (idpedido, idproduto, quantidade, valor_unidade) FROM stdin;
1	1	1	800.00
1	2	1	500.00
2	2	1	500.00
3	4	2	150.00
4	1	1	800.00
4	3	1	200.00
5	3	1	200.00
6	1	2	800.00
6	7	1	35.00
6	5	1	200.00
6	4	1	150.00
9	1	1	800.00
9	2	1	500.00
10	5	1	200.00
11	5	1	200.00
11	6	1	100.00
12	2	1	500.00
13	3	1	200.00
13	4	1	150.00
14	6	3	100.00
15	3	1	200.00
7	1	1	800.00
8	7	5	35.00
\.


--
-- TOC entry 3431 (class 0 OID 16577)
-- Dependencies: 224
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (idproduto, idfornecedor, nome, valor) FROM stdin;
1	1	Microcomputador	800.00
2	1	Monitor	500.00
3	2	Placa Mãe	200.00
4	2	HD	150.00
5	2	Placa de vídeo	200.00
6	3	Memória Ram	100.00
7	1	Gabinete	25.00
\.


--
-- TOC entry 3422 (class 0 OID 16477)
-- Dependencies: 215
-- Data for Name: profissao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profissao (idprofissao, nome) FROM stdin;
1	Estudante
2	Engenheiro
3	Pedreiro
4	Jornalista
5	Professor
\.


--
-- TOC entry 3430 (class 0 OID 16565)
-- Dependencies: 223
-- Data for Name: transportadora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transportadora (idtransportadora, idmunicipio, nome, logradouro, numero) FROM stdin;
1	1	Bs. Transportes	Rua das Limas	1
2	3	União Transportes	\N	\N
\.


--
-- TOC entry 3426 (class 0 OID 16525)
-- Dependencies: 219
-- Data for Name: uf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uf (iduf, nome, sigla) FROM stdin;
1	Santa Catarina	SC
2	Paraná	PR
3	São Paulo	SP
4	Minas Gerais	MG
5	Rio Grande do Sul	RS
6	Rio de Janeiro	RJ
\.


--
-- TOC entry 3429 (class 0 OID 16558)
-- Dependencies: 222
-- Data for Name: vendedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendedor (idvendedor, nome) FROM stdin;
1	André
2	Alisson
3	José
4	Ailton
5	Maria
6	Suelem
7	Aline
8	Silvana
\.


--
-- TOC entry 3235 (class 2606 OID 16502)
-- Name: bairro pk_brr_idbairro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT pk_brr_idbairro PRIMARY KEY (idbairro);


--
-- TOC entry 3221 (class 2606 OID 16476)
-- Name: cliente pk_cln_idcliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cln_idcliente PRIMARY KEY (idclient);


--
-- TOC entry 3231 (class 2606 OID 16495)
-- Name: complemento pk_cmplt_idcomplemento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complemento
    ADD CONSTRAINT pk_cmplt_idcomplemento PRIMARY KEY (idcomplemento);


--
-- TOC entry 3249 (class 2606 OID 16555)
-- Name: fornecedor pk_frnd_idfornecedor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT pk_frnd_idfornecedor PRIMARY KEY (idfornecedor);


--
-- TOC entry 3245 (class 2606 OID 16538)
-- Name: municipio pk_mncp_idmunicipio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT pk_mncp_idmunicipio PRIMARY KEY (idmunicipio);


--
-- TOC entry 3227 (class 2606 OID 16488)
-- Name: nacionalidade pk_ncn_idnacionalidade; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nacionalidade
    ADD CONSTRAINT pk_ncn_idnacionalidade PRIMARY KEY (idnacionalidade);


--
-- TOC entry 3263 (class 2606 OID 16591)
-- Name: pedido pk_pdd_idpedido; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pk_pdd_idpedido PRIMARY KEY (idpedido);


--
-- TOC entry 3265 (class 2606 OID 16611)
-- Name: pedidoproduto pk_pdprdt_idpedidoproduto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidoproduto
    ADD CONSTRAINT pk_pdprdt_idpedidoproduto PRIMARY KEY (idpedido, idproduto);


--
-- TOC entry 3261 (class 2606 OID 16581)
-- Name: produto pk_prdt_idproduto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_prdt_idproduto PRIMARY KEY (idproduto);


--
-- TOC entry 3223 (class 2606 OID 16481)
-- Name: profissao pk_prf_idprofissao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profissao
    ADD CONSTRAINT pk_prf_idprofissao PRIMARY KEY (idprofissao);


--
-- TOC entry 3257 (class 2606 OID 16569)
-- Name: transportadora pk_trnsp_idtransportadora; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportadora
    ADD CONSTRAINT pk_trnsp_idtransportadora PRIMARY KEY (idtransportadora);


--
-- TOC entry 3239 (class 2606 OID 16529)
-- Name: uf pk_ufd_iduf; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uf
    ADD CONSTRAINT pk_ufd_iduf PRIMARY KEY (iduf);


--
-- TOC entry 3253 (class 2606 OID 16562)
-- Name: vendedor pk_vddr_idvendedor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT pk_vddr_idvendedor PRIMARY KEY (idvendedor);


--
-- TOC entry 3237 (class 2606 OID 16504)
-- Name: bairro un_br_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT un_br_nome UNIQUE (nome);


--
-- TOC entry 3233 (class 2606 OID 16497)
-- Name: complemento un_cmplt_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complemento
    ADD CONSTRAINT un_cmplt_nome UNIQUE (nome);


--
-- TOC entry 3251 (class 2606 OID 16557)
-- Name: fornecedor un_frnd_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT un_frnd_nome UNIQUE (nome);


--
-- TOC entry 3247 (class 2606 OID 16540)
-- Name: municipio un_mncp_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT un_mncp_nome UNIQUE (nome);


--
-- TOC entry 3229 (class 2606 OID 16490)
-- Name: nacionalidade un_ncn_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nacionalidade
    ADD CONSTRAINT un_ncn_nome UNIQUE (nome);


--
-- TOC entry 3225 (class 2606 OID 16483)
-- Name: profissao un_prf_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profissao
    ADD CONSTRAINT un_prf_nome UNIQUE (nome);


--
-- TOC entry 3259 (class 2606 OID 16571)
-- Name: transportadora un_trnsp_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportadora
    ADD CONSTRAINT un_trnsp_nome UNIQUE (nome);


--
-- TOC entry 3241 (class 2606 OID 16531)
-- Name: uf un_ufd_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uf
    ADD CONSTRAINT un_ufd_nome UNIQUE (nome);


--
-- TOC entry 3243 (class 2606 OID 16533)
-- Name: uf un_ufd_sigla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uf
    ADD CONSTRAINT un_ufd_sigla UNIQUE (sigla);


--
-- TOC entry 3255 (class 2606 OID 16564)
-- Name: vendedor un_vddr_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT un_vddr_nome UNIQUE (nome);


--
-- TOC entry 3266 (class 2606 OID 16520)
-- Name: cliente fk_cln_idbairro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cln_idbairro FOREIGN KEY (idbairro) REFERENCES public.bairro(idbairro);


--
-- TOC entry 3267 (class 2606 OID 16515)
-- Name: cliente fk_cln_idcomplemento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cln_idcomplemento FOREIGN KEY (idcomplemento) REFERENCES public.complemento(idcomplemento);


--
-- TOC entry 3268 (class 2606 OID 16546)
-- Name: cliente fk_cln_idmunicipio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cln_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


--
-- TOC entry 3269 (class 2606 OID 16510)
-- Name: cliente fk_cln_idnacionalidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cln_idnacionalidade FOREIGN KEY (idnacionalidade) REFERENCES public.nacionalidade(idnacionalidade);


--
-- TOC entry 3270 (class 2606 OID 16505)
-- Name: cliente fk_cln_idprofissao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (idprofissao) REFERENCES public.profissao(idprofissao);


--
-- TOC entry 3271 (class 2606 OID 16541)
-- Name: municipio fk_mcnp_iduf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT fk_mcnp_iduf FOREIGN KEY (iduf) REFERENCES public.uf(iduf);


--
-- TOC entry 3274 (class 2606 OID 16592)
-- Name: pedido fk_pdd_idcliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pdd_idcliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idclient);


--
-- TOC entry 3275 (class 2606 OID 16597)
-- Name: pedido fk_pdd_idtransportadora; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pdd_idtransportadora FOREIGN KEY (idtransportadora) REFERENCES public.transportadora(idtransportadora);


--
-- TOC entry 3276 (class 2606 OID 16602)
-- Name: pedido fk_pdd_idvendedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pdd_idvendedor FOREIGN KEY (idvendedor) REFERENCES public.vendedor(idvendedor);


--
-- TOC entry 3277 (class 2606 OID 16612)
-- Name: pedidoproduto fk_pdprdt_idpedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidoproduto
    ADD CONSTRAINT fk_pdprdt_idpedido FOREIGN KEY (idpedido) REFERENCES public.pedido(idpedido);


--
-- TOC entry 3278 (class 2606 OID 16617)
-- Name: pedidoproduto fk_pdprdt_idproduto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidoproduto
    ADD CONSTRAINT fk_pdprdt_idproduto FOREIGN KEY (idproduto) REFERENCES public.produto(idproduto);


--
-- TOC entry 3273 (class 2606 OID 16582)
-- Name: produto fk_prdt_idfornecedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_prdt_idfornecedor FOREIGN KEY (idfornecedor) REFERENCES public.fornecedor(idfornecedor);


--
-- TOC entry 3272 (class 2606 OID 16572)
-- Name: transportadora fk_trnsp_idmunicipio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportadora
    ADD CONSTRAINT fk_trnsp_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


-- Completed on 2023-06-28 01:22:57

--
-- PostgreSQL database dump complete
--

