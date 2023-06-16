create table cliente(
	idclient integer not null,
	nome varchar(50), -- nome do campo, tipo e determinar tamanho, indicar se pode ser um campo nulo
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	numero varchar(10),
	logradouro varchar(30),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	
	--restrição:id cliente como chave primária-- campo unico que nunca pode ser repetido
	--coloca a restricao insere o atributo e chama primary key("nome da coluna")
	constraint pk_cln_idcliente primary key(idclient)
);
-- para evitar a repetição de comandos, use ';'
--ver os dados por comando SQL:
--SELECT * FROM public."nomeDaTabela"
--ORDER BY "atributo selecionado" -- ou seja, exiba ordenado de acordo com um atributo especifico

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(1,'Manoel','888283821','32323','2001-01-30','M','Estudante','Brasileira','Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(2,'Geraldo','12343299291','56565','1991-10-01','M','Engenheiro','Brasileira','Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(3,'Carlos','8773233227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apartamento','Centro','Canoinhas','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','Sao Pedro','Porto Vitoria','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(5,'Amanda','9992828484','9127','1989-04-03','F','Jornalista','Italiana','Av.Central','100',null,'Sao Pedro','General Carneiro','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(6,'Ângelo','98238342','123123','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null,'Centro','Sao Paulo','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(7,'Anderson',null,null,null,'M','Professor','Italiano','Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(8,'Camila','9998238432',null,'2001-10-10','F','Professora','Norte Americana','Rua Central','4333',null,'Centro','Uberlândia','MG');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(10,'Fabricio','2939342832','302312',null,'M','Estudante','Brasileira',null,null,null,null,'PU','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(12,'Gilmar','888818181','888','2000-02-01','M','Estudante',null,'Rua das Laranjeiras','200',null,'Cidade Nova','Canoinhas','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(13,'Diego','1010191919','11939',null,'M','Professor','Alemã','Rua Central','455','Casa','Cidade Nova','Sao Paulo','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileira',null,null,null,null,'Uniao da Vitoria','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(15,'Jessica',null,null,null,'F','Estudante',null,null,null,null,null,'Uniao da Vitoria','PR');

--consultas muito simples:
--O * indica que vamos selecionar todas colunas e clientes FROM
-- PERGUNTA: CONSULTAR TODOS OS CLIENTES E COLUNAS?
SELECT * FROM cliente;
-- PERGUNTA: CONSULTAR APENAS OS NOMES DOS CLIENTES E DATA DE NASCIMENTO
select nome, data_nascimento from cliente;
-- PERGUNTA: CONSULTAR APENAS OS NOMES DOS CLIENTES E DATA DE NASCIMENTO, POREM, RENOMEANDO A COLUNA
-- r: use o "as"
-- as: renomeia a coluna
select nome as "Nome do cliente", data_nascimento as "Data de Nascimento" from cliente;
select cpf, rg from cliente;
--concatenar colunas, volta somente um coluna e com um nome apenas na coluna?
select 'CPF:' || cpf|| ' RG:' || rg as "CPF E RG:" from cliente;
--Selecionar apenas algumas tuplas?
select * from cliente limit 4;-- use o limit para limitar a quantidade de registros
--Selecionar registros com filtro de data de nascimento(pode ser qualquer coisa bocó)
--relembrando: os operadores relacionais são:(>, <, =>.<=,!=)
-- operadores lógicos que podem ajudar: or, not, and
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';
--outro filtro para pegar o nome do cliente com determinada inicial:
-- like:como, semelhante ao 'igual'
select nome from cliente where nome like '%c%';--nomes que possuem qualquer letra no inicio e final, mas no meio tem c
-- between função para estabelecer intervalos
select nome, data_nascimento from cliente where data_nascimento between '1989-01-01' and '1998-01-01';
--buscar clientes com campos nulos:
--verificador 'is', verifica se algo é vazio
select nome, rg from cliente where rg is null;--clientes que não informaram o RG, interessante para corrigir dados em eventos futuros;
-- consulta ordenada: seleciona coluna, seleciona tabela, ordena de acordo com oq tu quiser aí
select nome from cliente
order by nome ASC;
--Consultar nome e rg de clientes que cadastraram seu rg no sistema
select nome, rg from cliente where rg is not null;
-- caralho mt bom 
--LISTA 1 DE EXERCÍCIOS:
-- #1 O NOME, GÊNERO, E A PROFISSÃO DE TODOS OS CLIENTES, ORDENADO PELO NOME EM ORDEM DECRESCENTE
SELECT nome, genero, profissao from cliente order by nome DESC;
-- #2  OS CLIENTES QUE TENHAM A LETRA "R" NO NOME:
--resposta: procurar onde tem r, seja no meio, final ou inicio
--'%r' fim com r, '%r%' r em qualquer posicao
SELECT * FROM cliente WHERE nome like '%r%' --or nome like 'R%' or nome like '%r'--;
-- #3 Os clientes que o nome inicia com a letra "C"
select * FROM cliente WHERE nome like 'C%';
-- #4 Os clientes que o nome termina com a letra "A"
SELECT * FROM cliente where nome like '%a';
-- #5 Os clientes que moram no bairro "Centro" -- 
select *  from cliente where bairro = 'Centro' or bairro = 'centro' or bairro = 'Ctr' or bairro = 'Cto.';
-- #6 Os clientes que moram em complementos que iniciam com a letra "A"
select * from cliente where complemento like 'A%';
-- #7 Somente clientes do sexo feminino:
select * from cliente where genero  = 'F' or genero  = 'f';
-- #8  Os clientes que não informaram o CPF;
-- obs: toda vez que for preciso verificar se o campo é null, use o "is", nunca o null***
select * from cliente where cpf is null;
-- #9 O nome e a profissão dos clientes, ordenado em ordem crescete pelo nome da profissao
select nome ,profissao from cliente order by profissao ASC;
-- #10 Os clientes de nacionalidade brasileira:
select * from cliente where nacionalidade like 'Brasil%'
-- #11 Os clientes que informaram o número da residência
select * from cliente where numero is not null;
-- #12 Os clientes que moram em Santa Catarina
select * from cliente where uf = 'SC';
-- #13 Os clientes que nasceram entre 01/01/2001 e 01/01/2002
-- between: usar o operador Lógico and, poderia colocar um not antes do between pra negar tranquilamente
select * from cliente where data_nascimento between '2000-01-01' and  '2002-01-01';
-- #14 O nome do cliente e o logradouro, número, complemento, bairro, munícipio e UF concatenado de todos os clientes
select 'Nome: '||nome||'; Logradouro: '||logradouro||'; Número:'||numero||'; Complemento: '||complemento||'; Bairro: '||bairro||'; Municipio: '||municipio||'; UF: '||uf as "Endereço Cliente" from cliente; 

--#	COMANDO UPDATE E DELETE#--

select * from cliente;
--update <tabela> set <campo> = 'alteracao';
update cliente set nome = 'Manoel' where idclient = 1;
select * from cliente;
update cliente set nome = 'Adriano', genero = 'M', numero ='241' where idclient = 4;
select * from cliente order by idclient;
--
insert into cliente(idclient,nome) values(16,'Joao');
select * from cliente order by idclient;
--comando delete:
delete from cliente where idclient = 16;
select * from cliente order by idclient;
-- fim delete

--#LISTA 2 DE EXERCICIOS- COMANDOS UPDATE E DELETE#
-- #1 Insira os dados abaixo na tabela de clientes:
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,municipio,uf)
values(16,'Maicon','12345679','1234','1965-10-10','F','Empresário','Florianópolis','PR');
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values (17,'Getúlio',null,'4631',null,'F','Estudante','Brasileira','Rua Central','343','Apartamento','Centro','Curitiba','SC');
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values (18,'Sandra',null,null,null,'M','Professor','Italiana',null,'12','Bloco A',null,null,null);

--#2 Altere os dados do cliente Maicon
--a) O CPF para 45390569432
--b) O gênero para M
--c) A nacionalidade para Brasileira
--d) O UF para SC
update cliente set cpf = '45390569432', genero = 'M',nacionalidade = 'Brasileiro', uf = 'SC' where idclient = 16;
select * from cliente order by idclient ASC;
-- #3 Altere os dados do client Getúlio
--a) A data de nascimento para 01/04/1978
--b) O gênero para M
update cliente set data_nascimento = '1978-04-01', genero ='M' where idclient = 17;
select * from cliente order by idclient ASC;
-- #4 Altere os dados da cliente Sandra
--a) O gênero para F
--b) A profissão para Professora
--c) O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idclient = 18;
select * from cliente order by idclient ASC;
--#5 Apague o cliente Maicon e Sandra
delete from cliente where idclient = 16 or idclient = 18;
select * from cliente order by idclient ASC;

--#Criação de novas tabelas#
--Criar uma tabela de profissão

create table profissao(
	idprofissao integer not null,
	nome varchar(40) not null,
	
	--Toda tabela necessita de pelo menos uma chave primária
	--Então, é necessário aplicar uma restrição (Constraint) de chave primária
	constraint pk_prf_idprofissao primary key(idprofissao),
	constraint un_prf_nome unique(nome)
);

insert into profissao(idprofissao, nome) values (1,'Estudante');
insert into profissao(idprofissao, nome) values (2,'Engenheiro');
insert into profissao(idprofissao, nome) values (3,'Pedreiro');
insert into profissao(idprofissao, nome) values (4,'Jornalista');
insert into profissao(idprofissao, nome) values (5,'Professor');

select idprofissao,nome from profissao;

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(40) not null,
	
	constraint pk_ncn_idnacionalidade primary key(idnacionalidade),
	constraint un_ncn_nome unique(nome)
);
insert into nacionalidade values(1,'Brasileira');
insert into nacionalidade values(2,'Italiana');
insert into nacionalidade values(3,'Norte-Americana');
insert into nacionalidade values(4,'Alemã');


select * from nacionalidade;

create table complemento(
	idcomplemento integer not null,
	nome varchar(40) not null,
	CONSTRAINT pk_cmplt_idcomplemento PRIMARY KEY (idcomplemento),
	CONSTRAINT un_cmplt_nome unique(nome)
);
insert into complemento values(1,'Casa');
insert into complemento values (2,'Apartamento');

create table bairro(
	idbairro integer not null,
	nome varchar(40) not null,
	CONSTRAINT pk_brr_idbairro PRIMARY KEY(idbairro),
	CONSTRAINT un_br_nome unique(nome)
);
insert into bairro values (1,'Cidade Nova');
insert into bairro values (2,'Centro');
insert into bairro values (3,'São Pedro');
insert into bairro values (4,'Santa Rosa');






