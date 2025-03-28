CREATE TRIGGER Products_UPDATE
ON [event]
AFTER UPDATE
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, 'Обновлено событие ' + Name 
FROM INSERTED