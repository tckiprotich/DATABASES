DECLARE
  v_first_name employees.first_name%TYPE;
  v_last_name employees.last_name%TYPE;
  v_hire_date employees.hire_date%TYPE;
BEGIN
  FOR e IN (SELECT first_name, last_name, hire_date FROM employees)
  LOOP
    v_first_name := e.first_name;
    v_last_name := e.last_name;
    v_hire_date := e.hire_date;
    
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_first_name || 
                         ', Last Name: ' || v_last_name || 
                         ', Hire Date: ' || v_hire_date);
  END LOOP;
END;
/
