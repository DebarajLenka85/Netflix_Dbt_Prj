CREATE OR REPLACE PROCEDURE area()
RETURNS FLOAT
LANGUAGE SQL
AS

DECLARE
  radius FLOAT;
  area_of_circle FLOAT;
BEGIN
  radius := 3;
  area_of_circle := PI() * radius * radius;
  RETURN area_of_circle;
END;

call area()