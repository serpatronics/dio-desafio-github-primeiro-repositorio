use cadastro;

select * from cursos;
select * from gafanhotos
order by nome;

select * from gafanhotos
order by nascimento desc;

select ano, nome, carga from cursos
where ano = 2016
order by nome;

select * from gafanhotos;

insert into gafanhotos values
(default,'Rogerio Serpa', 'Administrador', '1968-03-28', 'M', '80', '1.78', 'Brasil');




