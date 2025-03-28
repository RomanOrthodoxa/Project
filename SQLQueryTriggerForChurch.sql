CREATE TRIGGER Church_DELETE
ON Church
AFTER DELETE
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, 'Удален храм ' + Name
FROM DELETED