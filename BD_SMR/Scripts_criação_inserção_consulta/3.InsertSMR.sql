USE SMR;

insert into supervisor(Id_Supervisor, Nome_Supervisor) value (1,'João');
insert into supervisor(Id_Supervisor, Nome_Supervisor) value (2,'Karla');
insert into supervisor(Id_Supervisor, Nome_Supervisor) value (3,'Pedro');
insert into supervisor(Id_Supervisor, Nome_Supervisor) value (4,'Carol');
insert into supervisor(Id_Supervisor, Nome_Supervisor) value (5,'Renato');
insert into supervisor(Id_Supervisor, Nome_Supervisor) value (6,'Maria');


insert into Contrato(Id_Contrato,Supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (1000,1,'2014-01-12','2015-01-13',3.500,'contrato pago antecipadamente');
insert into Contrato(Id_Contrato,supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (2000,2,'2005-01-12','2010-01-13',7.800,'contrato pago antecipadamente');
insert into Contrato(Id_Contrato,supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (3000,3,'2017-01-12','2018-01-13',2.100,'contrato parcelado 10 X');
insert into Contrato(Id_Contrato,supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (4000,4,'2000-04-12','2001-04-23',7.500,'contrato pagamento no final');
insert into Contrato(Id_Contrato,supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (5000,5,'2002-11-12','2005-10-23',9.000,'contrato pago antecipadamente');
insert into Contrato(Id_Contrato,supervisor,DT_Inicio,DT_Final,Valor_Contrato,Sobre) value (6000,6,'2010-01-12','2011-01-17',1.500,'contrato pago antecipadamente');

insert into endereco(IdEndereco,Rua,Bairro,Numero,Telefone) value (04,'lisboa','good Garden','4578','85985471423');
insert into endereco(IdEndereco,Rua,Bairro,Numero,Telefone) value (10,'Wall Street','New kansas','1000','555874652');
insert into endereco(IdEndereco,Rua,Bairro,Numero,Telefone) value (05,'allan kardec','Montese','748','85981231423');
insert into endereco(IdEndereco,Rua,Bairro,Numero,Telefone) value (15,'Barao de Aratanha','Centro','478','85987451236');


insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (70,'para voce','1999-09-23','vinyl','854812');
insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (78,'serenata da sofrencia','2018-11-01','MP4','848454168');   
insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (98,'nome desconhecido que te dou','2005-09-28','CD','484848');    
insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (88,'mas o que foi isso','2002-07-13','MP3','3484152');    
insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (08,'Miss U','2017-05-17','Midia Digital','84841844'); 
insert into Album(Id_Album,Titulo_Album,DT_DirAutorais,Format_album,MusicoCPF) value (79,'hola Madam','2001-10-30','Disco','8541559600');   

Insert into musico(CPF,Nome,Id_end,contrato) value ('854812','Yuri greenovich',04,1000);
Insert into musico(CPF,Nome,Id_end,contrato) value ('848454168','DJ_marshmellow',10,2000);
Insert into musico(CPF,Nome,Id_end,contrato) value ('484848','leandro braga',05,3000);
Insert into musico(CPF,Nome,Id_end,contrato) value ('3484152','maria claudia',15,4000);
Insert into musico(CPF,Nome,Id_end,contrato) value ('84841844','jose dom',05,5000);
Insert into musico(CPF,Nome,Id_end,contrato) value ('8541559600','jose Maria',10,6000);

insert into Musica(Cod_Musica,Titulo,Id_Album) value (10,'rip',08);/*marshmellow*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (20,'mi amor',79);/*Yuri greenovich*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (30,'vem cá me amar',70);/*jose Maria*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (40,'corno, nunca serei',78);/*jose Dom*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (50,'como é o teu nome ?',98);/*maria claudia*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (60,'o que foi aquilo ?',88);/*leandro braga*/
insert into Musica(Cod_Musica,Titulo,Id_Album) value (70,'ela vai ve !',78);
insert into Musica(Cod_Musica,Titulo,Id_Album) value (80,'qual seu nome ?',88);
insert into Musica(Cod_Musica,Titulo,Id_Album) value (90,'Miss u',08);
insert into Musica(Cod_Musica,Titulo,Id_Album) value (11,'vai sol',79);
insert into Musica(Cod_Musica,Titulo,Id_Album) value (22,'vem vem vem',98);

insert into Autor(Id_Autor,Nome_Autor) value (100,'Pablo');
insert into Autor(Id_Autor,Nome_Autor) value (200,'Cardoso');
insert into Autor(Id_Autor,Nome_Autor) value (300,'Mike Mosqueteiro');
insert into Autor(Id_Autor,Nome_Autor) value (400,'William Bob');
insert into Autor(Id_Autor,Nome_Autor) value (500,'Skrillex');
insert into Autor(Id_Autor,Nome_Autor) value (600,'Bob Alzeimher');

insert into MusicaAutor(Id_Autor,Cod_Musica) value (500,10);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (400,10);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (100,20);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (200,20);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (200,30);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (300,40);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (600,50);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (400,60);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (300,70);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (100,70);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (600,80);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (500,90);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (400,11);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (100,11);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (200,22);
insert into MusicaAutor(Id_Autor,Cod_Musica) value (300,22);
    

insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (1,'pandeiro','C#');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (2,'bateria','F#');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (3,'piano','A');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (4,'tambo de macumba','B');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (5,'violao','FB');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (6,'guitarra','AB#');
insert into Instrumento(Id_Instru,Nome_Instru,Tom_Musc) value (7,'Mixer','XXX');

insert into MusicoInstrumento(Id_Instru,CPF) value (1,'854812');
insert into MusicoInstrumento(Id_Instru,CPF) value (6,'854812');
insert into MusicoInstrumento(Id_Instru,CPF) value (7,'848454168');
insert into MusicoInstrumento(Id_Instru,CPF) value (3,'848454168');
insert into MusicoInstrumento(Id_Instru,CPF) value (2,'484848');
insert into MusicoInstrumento(Id_Instru,CPF) value (5,'484848');
insert into MusicoInstrumento(Id_Instru,CPF) value (3,'3484152');
insert into MusicoInstrumento(Id_Instru,CPF) value (2,'3484152');
insert into MusicoInstrumento(Id_Instru,CPF) value (4,'84841844');
insert into MusicoInstrumento(Id_Instru,CPF) value (7,'84841844');
insert into MusicoInstrumento(Id_Instru,CPF) value (4,'8541559600');
insert into MusicoInstrumento(Id_Instru,CPF) value (5,'8541559600');


insert into MusicoMusica(CPF,Cod_Musica) value ('848454168',10);
insert into MusicoMusica(CPF,Cod_Musica) value ('854812',10);
insert into MusicoMusica(CPF,Cod_Musica) value ('8541559600',10);
insert into MusicoMusica(CPF,Cod_Musica) value ('84841844',20);
insert into MusicoMusica(CPF,Cod_Musica) value ('854812',20);
insert into MusicoMusica(CPF,Cod_Musica) value ('8541559600',20);
insert into MusicoMusica(CPF,Cod_Musica) value ('84841844',30);
insert into MusicoMusica(CPF,Cod_Musica) value ('3484152',30);
insert into MusicoMusica(CPF,Cod_Musica) value ('8541559600',30);
insert into MusicoMusica(CPF,Cod_Musica) value ('84841844',40);
insert into MusicoMusica(CPF,Cod_Musica) value ('3484152',40);
insert into MusicoMusica(CPF,Cod_Musica) value ('484848',40);
insert into MusicoMusica(CPF,Cod_Musica) value ('84841844',50);
insert into MusicoMusica(CPF,Cod_Musica) value ('3484152',50);
insert into MusicoMusica(CPF,Cod_Musica) value ('484848',60);
insert into MusicoMusica(CPF,Cod_Musica) value ('848454168',60);

insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (21,'Eletronica');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (22,'Brega');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (23,'POP');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (24,'Reggae');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (25,'Rock');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (26,'Forro');
insert into EstiloMusical(Id_Estilo_Musical,Nome_Estilo) value (27,'Religiosa');

insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (21,'848454168');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (22,'848454168');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (23,'848454168');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (22,'84841844');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (23,'84841844');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (24,'84841844');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (23,'854812');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (24,'854812');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (25,'854812');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (24,'484848');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (25,'484848');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (26,'484848');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (25,'3484152');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (26,'3484152');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (27,'3484152');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (27,'8541559600');
insert into EstiloMusicalMusico(Id_Estilo_Musical,CPF) value (26,'8541559600');







