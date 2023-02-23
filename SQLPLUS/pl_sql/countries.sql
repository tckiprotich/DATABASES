DECLARE
  v_country_id countries.country_id%TYPE;
  v_country_name countries.country_name%TYPE;
  v_region_id countries.region_id%TYPE;
BEGIN
  FOR c IN (SELECT country_id, country_name, region_id FROM countries)
  LOOP
    v_country_id := c.country_id;
    v_country_name := c.country_name;
    v_region_id := c.region_id;
    
    DBMS_OUTPUT.PUT_LINE('Country ID: ' || v_country_id || 
                         ', Country Name: ' || v_country_name || 
                         ', Region ID: ' || v_region_id);
  END LOOP;
END;
/
