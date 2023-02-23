BEGIN
   FOR emp IN (SELECT * FROM employees WHERE salary > 11000)
   LOOP
      -- Print out employee information here
      DBMS_OUTPUT.PUT_LINE('Employee ' || emp.employee_id || ': ' || emp.first_name || ' ' || emp.last_name || ', Salary: ' || emp.salary);
   END LOOP;
END;
/
