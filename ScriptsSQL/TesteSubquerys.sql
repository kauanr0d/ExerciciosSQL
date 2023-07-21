select * from pedido;

select
	cliente.idclient as id,
	cliente.nome as nome,
	count(pdd.idpedido) as total_pedidos
from 
	pedido as pdd
left outer join
	cliente on cliente.idclient = pdd.idcliente
group by 
	cliente.nome, cliente.idclient;
	
select
	cln.idclient as id_cliente,
	cln.nome as nome_cliente,
	(select count(pdd.idpedido) from pedido as pdd where pdd.idcliente = cln.idclient) as total_pedidos
from 
	cliente as cln;

-- 5 Lista Joins



-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select
	cln.idclient,
	cln.nome
from
	cliente as cln
where
	(select count(pdd.idpedido) from pedido as pdd where pdd.idcliente = cln.idclient)>=1
order by
	cln.nome ;
 
-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select
	cln.idclient,
	cln.nome
from 
	cliente as cln
where
	cln.idclient in (select pdd.idcliente from pedido as pdd)
order by
	cln.idclient ASC;
	
-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select
	mcp.nome, 
	(select count(cln.idclient) from cliente as cln where cln.idmunicipio = mcp.idmunicipio) as quantidade_de_moradores
from
	municipio as mcp
where
	mcp.idmunicipio in(select cln.idmunicipio from cliente as cln)
order by
	2 asc;

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).


-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).

--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

	
-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).

-- Exercícios - subconsultas--



--1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.--
select * from cliente order by nome asc;

select
	cln.nome 
from
	cliente as cln
where
	idmunicipio = (select cln.idmunicipio from cliente as cln where cln.idclient  = 1)
and
	cln.idclient != 1;

--2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.--
select
	pdd.datapedido,
	pdd.valor 
from 
	pedido as pdd
where
	(select avg(pdd.valor) from pedido as pdd) > pdd.valor ;

--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.--
select * from pedidoproduto p ;
select
	pdd.datapedido,
	pdd.valor,
	cln.nome,
	vdd.nome,
	(select sum(pedidoproduto.quantidade) from pedidoproduto where pedidoproduto.idpedido = pdd.idpedido)
from
	pedido as pdd
left outer join
	cliente as cln on cln.idclient =pdd.idcliente
left outer join
	vendedor as vdd on vdd.idvendedor = pdd.idvendedor 
where
	(select sum(quantidade) from pedidoproduto where pedidoproduto.idpedido = pdd.idpedido)>=2
	
--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.--
select * from transportadora;
select nome,idmunicipio from cliente c ;
select
	cln.nome
from 
	cliente as cln
where
	idmunicipio = (select mcp.idmunicipio from municipio as mcp where mcp.idmunicipio = 1);

--5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.--
select
	cln.nome,
	mcp.nome
from
	cliente as cln
left outer join
	municipio as mcp on mcp.idmunicipio = cln.idmunicipio
where
	cln.idmunicipio in(select mcp.idmunicipio from municipio as mcp where mcp.idmunicipio in (1,3));
--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total--

update
	pedido as pdd
set 
	valor = pdd.valor * 1.05
where
	(select sum(pdp.valor_unidade) from pedidoproduto as pdp where pdp.idpedido = pdd.idpedido) > (select avg(pdp.valor_unidade) from pedidoproduto as pdp);


select avg(pdp.valor_unidade) from pedidoproduto as pdp;
select * from pedido;
select * from pedidoproduto p ;
--de todos os produtos de todos os pedidos--

--7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.--
select 	
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
order by 
	cln.idclient;
-- alternativa:
-- selecionando id do cliente, o nome e quantidade de pedidos, considerando os clientes que fizeram ao menos um pedido
select
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido)from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
where
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente)>=1;
--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.--

select
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido)from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
where
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente)>=1
group by
	cln.idclient, cln.nome
order by
 	1;
