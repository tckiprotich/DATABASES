DECLARE
   -- Declare variables here
BEGIN
   -- Query all employees in departments 100 and 120, along with their department names
   FOR emp IN (SELECT e.employee_id, e.first_name, e.last_name, d.department_name
               FROM employees e
               JOIN departments d ON e.department_id = d.department_id
               WHERE e.department_id IN (100, 120))
   LOOP
      -- Output employee information
      dbms_output.put_line(emp.employee_id || ' ' || emp.first_name || ' ' || emp.last_name || ' ' || emp.department_name);
   END LOOP;
END;
/
