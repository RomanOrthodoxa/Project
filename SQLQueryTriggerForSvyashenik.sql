CREATE TRIGGER Products_INSERT
ON SpiritualMinister
AFTER INSERT
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, '�������� �����������������: ' + Name + Patronymic + Last_Name+'���:'+Holy_orders 
FROM INSERTED