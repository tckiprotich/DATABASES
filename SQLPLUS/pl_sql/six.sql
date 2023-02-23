DECLARE
   -- Declare variables here
   v_last_name varchar2(50);
BEGIN
   v_last_name := 'Ma%'; -- The % symbol is a wildcard character that matches any string of zero or more characters
   
   -- Query all employees whose last name starts with 'Ma'
   FOR emp IN (SELECT * FROM employees WHERE last_name LIKE v_last_name)
   LOOP
      -- Output employee information
      dbms_output.put_line(emp.employee_id || ' ' || emp.first_name || ' ' || emp.last_name);
   END LOOP;
END;
/
