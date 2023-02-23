DECLARE
   
BEGIN
   
   FOR emp IN (SELECT * FROM employees WHERE department_id = 100)
   LOOP
      -- Output employee information
      dbms_output.put_line(emp.employee_id || ' ' || emp.first_name || ' ' || emp.last_name);
   END LOOP;
END;
/
