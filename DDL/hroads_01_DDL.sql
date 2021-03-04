CREATE DATABASE HROADS;

USE HROADS;

CREATE TABLE Classes(
	idClasse	INT PRIMARY KEY IDENTITY 
	,Nome		VARCHAR(200) NOT NULL
);


CREATE TABLE TipoHabilidade(
	idTipoHabilidade INT PRIMARY KEY IDENTITY
	,Nome			 VARCHAR(200) NOT NULL
);


CREATE TABLE Habilidades(
	idHabilidade      INT PRIMARY KEY IDENTITY
	,idTipoHabilidade INT FOREIGN KEY REFERENCES TipoHabilidade (IdTipoHabilidade)
	,Nome			  VARCHAR(200) NOT NULL
);

CREATE TABLE Relacao(
	idClasse INT FOREIGN KEY REFERENCES Classes (idClasse)
	,idHabilidade INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);


CREATE TABLE Personagens(
	idPersonagem				INT PRIMARY KEY IDENTITY
	,idClasse					INT FOREIGN KEY REFERENCES Classes (idClasse)
	,Nome						VARCHAR(200) NOT NULL
	,CapacidadedeMaximaDeVida	VARCHAR(200)
	,CapacidadeMaximaDeMana		VARCHAR(200)
	,DataDeAtualização          SMALLDATETIME NOT NULL
	,DataDeCriacao				SMALLDATETIME NOT NULL
);
