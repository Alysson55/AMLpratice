select 
	cpf_portador, 
	nome_portador,
	max(valor) as maior_valor_saque,
	min(valor) as menor_valor_saque,
	count(*) as qtd_movimentacoes,
	sum(valor) as valor_total
from 
	final_cpgf fc 
where 
	transacao like 'SAQUE%'  
group by 
	cpf_portador,
	nome_portador
having 
	sum(valor) >= 20000;
-- primeiro exercicio



select 
	cpf_portador, 
	nome_portador,
	max(data) as data_ultimo_saque,
	min(data) as data_primeiro_saque,
	max(valor) as maior_valor_saque,
	min(valor) as menor_valor_saque,
	count(*) as qtd_movimentacoes,
	sum(valor) as valor_total
from 
	final_cpgf fc 
where 
	transacao like 'SAQUE%'  
group by 
	cpf_portador,
	nome_portador,
	"data"
having 
	sum(valor) >= 5000;
	
-- seg exercicio
 
select * from final_cpgf;
select 	
	count(*) as qtd_total
	
	from final_cpgf fc 
	where documento_favorecido = '-11'
	and valor = 1000
	
	group by 
	codigo_orgao,
	nome_orgao,
	ano,
	mes 
	
	having 
	count(*) == 100
	
	order by 
	codigo_orgao,
	nome_orgao,
	ano, 
	mes;