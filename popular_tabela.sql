select * from final_cpgf fc;
select * from portador p;
select * from cartao c ;
select * from sistema_cliente sc;

create sequence cliente_sequence;

insert into proc_cliente(
aposentado,
ativo,
cep,
cnae,
codigo,
codigo_localizador,
documento,
dt_atualizacao,
dt_entrada,
empresa,
id_proc_cliente,
id_sistema,
nome,
outros,
patrimonio,
profissao,
renda,
score,
tipo_cadastro,
validado
)
select 
	false,
	true,
	'',
	'',
	'CPGF'|| '_' || p.codigo_portador,
	'',
	p.cpf_portador,
	d.data_cadastro,
	d.data_cadastro, 
	p.codigo_unidade_gestora ,
	nextval('cliente_sequence'),
	1,
	p.nome_portador,
	'{}',
	0,
	'',
	0,
	0,
	1,
	true 	
from portador p
inner join(
select codigo_portador,min("data") as data_cadastro
from cartao
group by codigo_portador
) d
on d.codigo_portador = p.codigo_portador
where p.nome_portador <> 'Sigiloso';
select * from proc_cliente pc;
-- 
select * from final_servidores_remuneracao fsr;

select * from final_servidores fs2;


insert into proc_cliente(
aposentado,
ativo,
cep,
cnae,
codigo,
codigo_localizador,
documento,
dt_atualizacao,
dt_entrada,
empresa,
id_proc_cliente,
id_sistema,
nome,
outros,
patrimonio,
profissao,
renda,
score,
tipo_cadastro,
validado
)
select 
	false,
	true,
	'',
	'',
	'SERV'|| '_' || fs2.id_servidor_portal,
	'',
	fs2.cpf,
	fs2.data_ingresso_orgao,
	fs2.data_ingresso_orgao,
	fs2.org_exercicio,
	nextval('cliente_sequence'),
	2,
	fs2.nome,
	'{}',
	0,
	fs2.descricao_cargo,
	avg(fsr.remuneracao_total_rs+ (fsr.remuneracao_total_us*5)),
	0,
	1,
	true
from final_servidores fs2
inner join final_servidores_remuneracao fsr 
on fsr.id_servidor_portal = fs2.id_servidor_portal 
group by fs2.id_servidor_portal, fs2.cpf, fs2.nome, fs2.descricao_cargo, fs2.data_ingresso_orgao, fs2.org_exercicio;
select count(*) from proc_cliente pc; 
	
	
	
	
	
