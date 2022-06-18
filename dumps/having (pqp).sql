use cadastro;

select carga from cursos;

select carga from cursos group by carga;

select carga, count(nome) from cursos group by carga order by count(nome) desc;

select ano, count(*) from cursos 
group by ano 
having count(ano)>= 5
order by count(*) desc;

select ano, count(*) from cursos
where totaulas > 30 
group by ano 
having ano > 2013
order by count(*) desc;

select avg(carga)from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

select profissao,count(profissao) from gafanhotos
group by profissao;

select nome, nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil';

select nome,nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
order by nacionalidade asc;

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil' 
group by nacionalidade
;

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil' 
group by nacionalidade
having count(*) >3
;

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil' 
group by nacionalidade
;