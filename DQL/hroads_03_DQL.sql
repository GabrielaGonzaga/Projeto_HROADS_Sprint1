
--- Selects ----

--6--
SELECT * FROM Personagens;

--7--
SELECT * FROM Classes;

--8--
SELECT Nome AS Classes FROM Classes;

--9--
SELECT * FROM Habilidades;

--10--
SELECT COUNT(idHabilidade) AS QntHabilidades FROM Habilidades


--11--
 SELECT idHabilidade AS IdHabilidades FROM Habilidades ORDER BY idHabilidade ASC


--12--
SELECT * FROM TipoHabilidade;

--13--
SELECT TipoHabilidade.Nome AS TipoHabilidade, Habilidades.Nome AS Habilidade FROM Habilidades
INNER JOIN TipoHabilidade
ON Habilidades.idTipoHabilidade = TipoHabilidade.idTipoHabilidade;


--14--
 SELECT Personagens.Nome AS Personagens, Classes.Nome AS Classes FROM Personagens
 INNER JOIN Classes
 ON Personagens.idClasse = Classes.idClasse;


--15--
SELECT  Personagens.Nome AS Personagens, Classes.Nome AS Classes  FROM Personagens, Classes;


--16--
 SELECT Classes.Nome AS Classes, Habilidades.Nome AS Habilidade FROM  Classes
 INNER JOIN Relacao
 ON Classes.idClasse  = Relacao.idClasse
 INNER JOIN Habilidades
 ON Relacao.idHabilidade = Habilidades.idHabilidade

 
--17--
SELECT Classes.Nome AS Classes, Habilidades.Nome AS Habilidade FROM Habilidades
INNER JOIN Relacao
ON Habilidades.idHabilidade  = Relacao.idHabilidade
INNER JOIN Classes
ON Relacao.idClasse = Classes.idClasse



--18--
SELECT Classes.Nome AS Classes , Habilidades.Nome AS Habilidades FROM Habilidades
INNER JOIN Classes
ON Habilidades.idTipoHabilidade = Classes.idClasse
INNER JOIN TipoHabilidade
ON TipoHabilidade.idTipoHabilidade = Classes.idClasse;