CREATE TRIGGER Products_UPDATE
ON [event]
AFTER UPDATE
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, '��������� ������� ' + Name 
FROM INSERTED