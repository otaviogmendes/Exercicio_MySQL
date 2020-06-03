create database DB_BIBLIOTECA;

use DB_BIBLIOTECA;

create table TB_CLIENTE(
cpf_cliente int not null,
nm_cliente varchar(99) not null,
idade_cliente int not null,
endereco_cliente varchar (255) not null,
contato_cliente varchar (255) not null,
foreign key (livro_emprestimo) references TB_LIVRO (id_livro),
primary key (cpf_cliente)
);

create table TB_EMPRETIMO_LIVRO (
id_emprestimo int not null,
dt_emprestimo date not null,
dt_devolucao date not null,
foreign key (cliente_emprestimo) references TB_CLIENTE (cpf_cliente),
foreign key (livro_emprestimo) references TB_LIVRO (id_livro),
foreign key (qt_emprestimo) references TB_CLIENTE (livro_emprestimo),
primary key (id_emprestimo)
);

create table TB_LIVRO (
id_livro int not null,
qt_livro int not null,
genero_livro varchar (255) not null,
nm_livro varchar (255) not null,
primary key (id_livro) 
);
