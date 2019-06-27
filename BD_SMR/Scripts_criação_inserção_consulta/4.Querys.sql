/*retorna a relação de músicas que possuem mais de um autor*/
Select M.titulo,count(MA.Id_Autor) as QTD_Autores
FROM musica M
	Inner Join musicaautor MA ON MA.Cod_Musica=M.Cod_Musica
Group BY M.titulo
Having QTD_Autores>1

/*retorna o nome dos álbuns com as respectivas músicas gravadas, o produtor do álbum, o número do seu contrato, data e valor.*/;
SELECT A.Titulo_Album as Nome_ALbum
,M.Titulo as Nome_musica
,Mu.Nome
,C.Id_Contrato
,C.DT_Inicio
,C.DT_Final
,C.Valor_Contrato
FROM album A
INNER JOIN Musica M ON M.Id_Album=A.Id_Album
INNER JOIN Musico Mu ON Mu.CPF=A.MusicoCPF
INNER JOIN Contrato C ON c.Id_Contrato=Mu.contrato
Order BY 1 asc;