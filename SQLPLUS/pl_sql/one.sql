SET SERVEROUTPUT ON
DECLARE
  CURSOR c_regions IS
    SELECT *
    FROM regions;
BEGIN
  FOR region_rec IN c_regions
  LOOP
    DBMS_OUTPUT.PUT_LINE(region_rec.region_id || ' ' || region_rec.region_name);
  END LOOP;
END;

/
