CREATE TRIGGER Products_INSERT
ON SpiritualMinister
AFTER INSERT
AS
INSERT INTO History (IdChurch, Operation)
SELECT Id, 'Добавлен Священнослужитель: ' + Name + Patronymic + Last_Name+'Сан:'+Holy_orders 
FROM INSERTED