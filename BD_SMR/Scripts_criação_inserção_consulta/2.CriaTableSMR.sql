USE SMR;

create table Supervisor(
    Id_Supervisor           int not null ,
    Nome_Supervisor         varchar(40) not null,
    constraint pk_Supervisor primary key(Id_Supervisor)
);

create table Contrato(
    Id_Contrato         int not null,
    Supervisor          int not null,
    DT_Inicio           date not null,
    DT_Final            date not null,
    Valor_Contrato      double not null,
    Sobre text(200),
    constraint pk_IdContrato primary key(Id_Contrato),
    constraint fk_Supervisor foreign key(Supervisor) references Supervisor(Id_Supervisor)
);

create table Endereco(
    IdEndereco      int not null,
    Rua             varchar(45) not null,
    Bairro          varchar (45) not null,
    Numero          varchar (45),
    Telefone        varchar (20),
    constraint uk_Telefone unique (Telefone),
    constraint pk_Endereco primary key (IdEndereco)
);

create table Musico(
    CPF         varchar(25) not null ,
    Nome        varchar(50) not null,
    Id_end      int not null,
    Contrato    int not null,
    constraint pk_Musico primary key(CPf),
    constraint fk_Contrato foreign key(Contrato) references Contrato(Id_Contrato),
    constraint fk_IdEndereco foreign key(Id_end) references Endereco(IdEndereco)
);

create table Album (
    Id_Album            int not null ,
    Titulo_Album        varchar(45) not null,
    DT_DirAutorais      date not null,
    Format_album        varchar(20)not null,
    MusicoCPF           varchar(25) not null,
    constraint fk_Musico foreign key (Musicocpf) references Musico(CPF),
    constraint pk_Album primary key(Id_Album)
);

create table Musica(
    Cod_Musica      int not null ,
    Titulo          varchar(50) not null ,
    Id_Album        int not null,
    constraint fk_IdAlbum foreign key(Id_Album) references Album(Id_Album),
    constraint pk_Musica primary key(Cod_Musica)
);

create table EstiloMusical(
    Id_Estilo_Musical       int not null ,
    Nome_Estilo             varchar(20),
    constraint pk_Estilo_Musical primary key (Id_Estilo_Musical)
);

create table EstiloMusicalMusico(
    Id_Estilo_Musical       int not null ,
    CPF                     varchar(25) not null,
    constraint fk_IdEstiloMusical foreign key(Id_Estilo_Musical) references EstiloMusical(Id_Estilo_Musical),
    constraint fk_CPF  foreign key(CPF) references Musico(CPF),
    constraint pk_EstiloMusical_Musico primary key(Id_Estilo_Musical,CPF)
);

create table Instrumento(
    Id_Instru       int not null ,
    Nome_Instru     varchar(45) not null,
    Tom_Musc        varchar(15),
    constraint pk_Instrumento primary key(Id_Instru)
);

create table MusicoInstrumento(
    Id_Instru       int not null ,
    CPF             varchar(25) not null,
    constraint fk_IdInstru foreign key(Id_Instru) references Instrumento(Id_Instru),
    constraint fk_CPFMusicoInstrumento foreign key(CPF) references Musico(CPF),
    constraint pk_MusicoInstrumento primary key(Id_Instru,CPF)
);


create table Autor(
    Id_Autor        int not null,
    Nome_Autor      varchar(45),
    constraint pk_autor primary key(Id_Autor)
);

create table MusicaInstrumento(
    Cod_Musica      int not null,
    Id_Instru       int not null,
   constraint fk_MusicaInstrumento  foreign key(Cod_Musica) references Musica(Cod_Musica),
   constraint fk_IdInstrumento foreign key(Id_Instru) references Instrumento(Id_Instru),
   constraint pk_MusicaInstrumento primary key(Cod_Musica,Id_Instru)
);

create table MusicaAutor(
    Id_Autor        int not null ,
    Cod_Musica      int not null ,
    constraint fk_IdAutor foreign key(Id_Autor) references Autor(Id_Autor),
    constraint fk_MusicaAutor  foreign key(Cod_Musica) references Musica(Cod_Musica),
    constraint pk_MusicaAutor primary key(Id_Autor,Cod_Musica)
);

create table MusicoMusica(
    CPF             varchar(25) not null ,
    Cod_Musica      int not null ,
    constraint fk_CPFMusicoMusica foreign key(CPF) references Musico(CPF),
    constraint fk_CodMusica foreign key(Cod_Musica) references Musica(Cod_Musica),
    constraint pk_MusicoMusica primary key(CPF,Cod_Musica)
);