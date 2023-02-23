DECLARE
   -- Declare variables here
   v_dept_id_1 number := 100;
   v_dept_id_2 number := 120;
BEGIN
   -- Query all employees belonging to department IDs 100 and 120
   FOR emp IN (SELECT * FROM employees WHERE department_id IN (v_dept_id_1, v_dept_id_2))
   LOOP
      -- Output employee information
      dbms_output.put_line(emp.employee_id || ' ' || emp.first_name || ' ' || emp.last_name);
   END LOOP;
END;
/
