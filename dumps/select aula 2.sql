use cadastro;
select * from cursos;
select * from gafanhotos;

Select nome, descricao, carga, ano from cursos where ano = 2016 order by nome;
Select nome, descricao, carga, ano from cursos where ano <= 2015 order by ano, nome;
Select nome, descricao, carga, ano from cursos where ano != 2015 order by ano, nome;
Select nome, descricao, carga, ano from cursos where ano <> 2015 order by ano, nome;
Select nome, descricao, carga, ano from cursos where ano between 2017 and 2019 order by ano desc, nome asc;
Select nome, descricao, carga, ano from cursos where ano in (2014, 2020) order by ano desc, nome asc;
Select nome, descricao, carga, ano from cursos where carga <> 40 order by ano desc, nome asc;
Select nome, descricao, carga, totaulas from cursos where carga > 35 and totaulas < 30 order by ano desc, nome asc;
Select nome, descricao, carga, totaulas from cursos where carga > 35 or totaulas < 30 order by ano desc, nome asc;

delete from gafanhotos where id = 62;
update gafanhotos set altura = '1.78' where id = '62' limit 1;


select * from cursos where nome not like ('%e%') order by nome;
select * from cursos where nome like ('%e%') order by nome;

select distinct carga from cursos order by carga;

select count(*) from cursos where carga > 50;

select max(carga) from cursos;
select count(*)from cursos where carga > 40;

select max(totaulas) from cursos where ano = '2016';

select min(totaulas) from cursos where ano = '2016';
select nome, min(totaulas) from cursos where ano = '2016'; 
select sum(totaulas) from cursos where ano = '2016';
select avg(totaulas) from cursos where ano = '2016';

select nome  from gafanhotos where sexo = 'F';
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31' order by nascimento;
select * from gafanhotos where profissao = 'programador';
select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nome like ('j%');
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like ('%silva%') and nacionalidade != 'Brasil' and peso < '100';
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
select avg(peso) from gafanhotos ;
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';