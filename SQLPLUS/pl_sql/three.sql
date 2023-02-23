DECLARE
  v_first_name employees.first_name%TYPE;
  v_last_name employees.last_name%TYPE;
  v_hire_date employees.hire_date%TYPE;
BEGIN
  FOR e IN (SELECT first_name AS fname, last_name AS lname, hire_date AS hdate FROM employees)
  LOOP
    v_first_name := e.fname;
    v_last_name := e.lname;
    v_hire_date := e.hdate;
    
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_first_name || 
                         ', Last Name: ' || v_last_name || 
                         ', Hire Date: ' || v_hire_date);
  END LOOP;
END;
/
