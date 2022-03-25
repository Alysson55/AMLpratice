-- treino consulta em banco de dados postgres;
-- exemplos abaixo usando tabela final_cpgf e condicoes de filtragem select 

select valor  from final_cpgf
max(value)
order by valor desc;
-- 


select nome_portador,valor from final_cpgf
max(value) 
where valor > 50000
order by valor desc;
-- 


select nome_favorecido,valor from final_cpgf
where valor >500;
-- 


select valor,transacao  from final_cpgf where nome_portador  = 'JOSE HAROLDO DE OLIVEIRA';
-- 

select * from final_cpgf;
-- puxando tabela 

select nome_favorecido,ano,nome_portador ,valor,cpf_portador from final_cpgf
where nome_portador = 'LETICIA VILANI MOROSINO';
-- 

select nome_orgao_superior,ano from final_cpgf
where ano < 2021;
-- 

select nome_favorecido  from final_cpgf
where  documento_favorecido = '-11';
-- 


select codigo_orgao  from final_cpgf
min(value)
where codigo_orgao >0
order by codigo_orgao asc;
-- 

select cpf_portador,nome_portador from final_cpgf fc
order by cpf_portador desc;
-- 

select * from final_cpgf;

select nome_orgao, codigo_unidade_gestora from final_cpgf fc 
where codigo_unidade_gestora >100000
order by codigo_unidade_gestora  desc;
-- 

select nome_orgao, codigo_unidade_gestora from final_cpgf fc 
where nome_orgao  >'A'
order by nome_orgao  asc;
-- 

select nome_orgao, codigo_unidade_gestora from final_cpgf fc 
where nome_orgao >'H'
order by nome_orgao asc;
-- 

select * from final_cpgf fc;

select transacao,valor  from final_cpgf
max(value)
where valor > 100000
order by valor desc;
-- 

select nome_favorecido, documento_favorecido  from final_cpgf
max(value)
where documento_favorecido = '-1'
order by nome_favorecido  desc;
-- 

select nome_unidade_gestora  from final_cpgf
where nome_unidade_gestora >= 'J'
order by nome_unidade_gestora  asc;
-- 

select * from final_cpgf fc2;

select nome_portador,valor,transacao  from final_cpgf fc
where  valor  > 25000
order by valor desc;
-- 

select * from final_cpgf fc 
where codigo_orgao_superior >50000
order by codigo_orgao_superior asc;
-- 

select data from final_cpgf fc
where "data" >'2018-10-10'
order by data;

select codigo_orgao_superior,nome_orgao,nome_orgao_superior,nome_unidade_gestora,
nome_portador,nome_favorecido,documento_favorecido,codigo_unidade_gestora,codigo_orgao 
from final_cpgf fc  
order by nome_portador desc;





