CREATE TRIGGER Church_DELETE
ON Church
AFTER DELETE
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, '������ ���� ' + Name
FROM DELETED