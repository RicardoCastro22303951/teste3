-- Aluno: ricardo castro
-- Numero: a22402222
-- Turma: LEI
-- Horário: 10-12
-- Caso de estudo: Reserva de Alojamento

----------1-------------

CREATE SCHEMA a22402222
GO

CREATE TABLE a22402222.Hospede(

       IDHOSPEDE INT NOT NULL,
       nome VARCHAR(80) NOT NULL,
       morada VARCHAR(80) NOT NULL,
)

ALTER TABLE a22402222.Hospede
ADD CONSTRAINT pk_hospede PRIMARY KEY(IDHOSPEDE);



CREATE TABLE a22402222.Alojamento(
    IDReserva INT NOT NULL,
    IDHOSPEDE INT NOT NULL,
    nome VARCHAR(80) NOT NULL,
    dia DATE NOT NULL,
    tipo VARCHAR(80) NOT NULL
)


ALTER TABLE a22402222.Alojamento
ADD CONSTRAINT PK_Alojamento PRIMARY KEY(IDReserva);


ALTER TABLE a22402222.Alojamento
ADD CONSTRAINT FK_dehospede
FOREIGN KEY(IDHOSPEDE)
REFERENCES a22402222.Hospede


SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Hospede';
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Hospede';


SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Alojamento';
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Alojamento';


---------2------------

INSERT INTO a22402222.Hospede(IDHOSPEDE,nome,morada)
VALUES
(1,'RICARDO','portugal'),
(2,'MANUEL','CHINA'),
(3,'JOAO','FRANCA');

INSERT INTO a22402222.Alojamento(IDReserva,IDHOSPEDE,nome,dia,tipo)
VALUES
(1,1,'lisboa','2026-05-05','ferias'),
(2,1,'porto','2026-07-07','descansar'),
(3,2,'braga','2026-01-01','descansar');

SELECT *
FROM INFORMATION_SCHEMA.TABLES;



SELECT *
FROM a22402222.Hospede

SELECT *
FROM a22402222.Alojamento




SELECT h.nome, A.tipo
FROM a22402222.Alojamento as A
LEFT JOIN a22402222.Hospede AS H
on A.IDHOSPEDE = H.IDHOSPEDE 




----------3--------------



-------4-----------
UPDATE a22402222.Alojamento
SET NOME = 'LONDRES'
WHERE IDReserva = 2;


SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Alojamento';
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'a22402222' AND TABLE_NAME = 'Alojamento';

SELECT *
FROM a22402222.Alojamento


-------------5-------------








---------------------6----------------












--------------------7------------------
Delete from a22402222.Alojamento
DELETE from a22402222.Hospede




SELECT * FROM a22402222.Hospede
SELECT * FROM a22402222.Alojamento
----------------8-----------------------

DROP TABLE a22402222.Alojamento
DROP TABLE a22402222.Hospede




DROP SCHEMA a22402222;