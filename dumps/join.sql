use cadastro;

select * from gafanhotos;

select * from cursos;

describe gafanhotos;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso);

update gafanhotos set cursopreferido = '6'where id = '1';

delete from cursos where idcurso = '28';

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido 
order by gafanhotos.id;


select g.nome, c.nome, c.ano from
gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido 
order by g.id;


select g.nome, c.nome, c.ano from
gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido 
order by g.id;


select g.nome, c.nome, c.ano from
gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido 
order by c.nome;

create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos (idcurso)
)default charset = utf8; 

select * from gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso values
(default,'2014-03-01','1','2');

select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;

select  g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso
order by g.nome;