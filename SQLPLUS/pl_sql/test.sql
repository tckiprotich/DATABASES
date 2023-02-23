-- pl/sql block to show all data in regions, jobs, departments, employees, locations, countries, and departments
DECLARE
  -- declare variables
  v_region_id NUMBER;
  v_region_name VARCHAR2(25);
  v_job_id VARCHAR2(10);
  v_job_title VARCHAR2(35);
  v_department_id NUMBER;
  v_department_name VARCHAR2(30);
  v_employee_id NUMBER;
  v_first_name VARCHAR2(20);
  v_last_name VARCHAR2(25);
  v_email VARCHAR2(25);
  v_phone_number VARCHAR2(20);
  v_hire_date DATE;
  v_job_id VARCHAR2(10);
  v_salary NUMBER;
  v_commission_pct NUMBER;
  v_manager_id NUMBER;
  v_department_id NUMBER;
  v_location_id NUMBER;
  v_street_address VARCHAR2(40);
  v_postal_code VARCHAR2(12);
  v_city VARCHAR2(30);
  v_state_province VARCHAR2(25);
  v_country_id VARCHAR2(2);
  v_country_name VARCHAR2(40);
  -- declare cursors
  CURSOR c_regions IS
    SELECT region_id, region_name
    FROM regions;
  CURSOR c_jobs IS
    SELECT job_id, job_title
    FROM jobs;
  CURSOR c_departments IS
    SELECT department_id, department_name
    FROM departments;
  CURSOR c_employees IS
    SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id
    FROM employees;
  CURSOR c_locations IS
    SELECT location_id, street_address, postal_code, city, state_province, country_id
    FROM locations;
  CURSOR c_countries IS
    SELECT country_id, country_name
    FROM countries;
BEGIN
    -- open cursors
    OPEN c_regions;
    OPEN c_jobs;
    OPEN c_departments;
    OPEN c_employees;
    OPEN c_locations;
    OPEN c_countries;
    -- fetch data from regions
    LOOP
        FETCH c_regions INTO v_region_id, v_region_name;
        EXIT WHEN c_regions%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Region ID: ' || v_region_id || ' Region Name: ' || v_region_name);
    END LOOP;
    -- fetch data from jobs
    LOOP
        FETCH c_jobs INTO v_job_id, v_job_title;
        EXIT WHEN c_jobs%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Job ID: ' || v_job_id || ' Job Title: ' || v_job_title);
    END LOOP;
    -- fetch data from departments
    LOOP
        FETCH c_departments INTO v_department_id, v_department_name;
        EXIT WHEN c_departments%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Department ID: ' || v_department_id || ' Department Name: ' || v_department_name);
    END LOOP;
    -- fetch data from employees
    LOOP
        FETCH c_employees INTO v_employee_id, v_first_name, v_last_name, v_email, v_phone_number, v_hire_date, v_job_id, v_salary, v_commission_pct, v_manager_id, v_department_id;
        EXIT WHEN c_employees%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id || ' First Name: ' || v_first_name || ' Last Name: ' || v_last_name || ' Email: ' || v_email || ' Phone Number: ' || v_phone_number || ' Hire Date: ' || v_hire_date || ' Job ID: ' || v_job_id || ' Salary: ' || v_salary || ' Commission PCT: ' || v_commission_pct || ' Manager ID: ' || v_manager_id || ' Department ID: ' || v_department_id);
    END LOOP;
    -- fetch data from locations
    LOOP
        FETCH c_locations INTO v_location_id, v_street_address, v_postal_code, v_city, v_state_province, v_country_id;
        EXIT WHEN c_locations%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Location ID: ' || v_location_id || ' Street Address: ' || v_street_address || ' Postal Code: ' || v_postal_code || ' City: ' || v_city || ' State Province: ' || v_state_province || ' Country ID: ' || v_country_id);
    END LOOP;
    -- fetch data from countries
    LOOP
        FETCH c_countries INTO v_country_id, v_country_name;
        EXIT WHEN c_countries%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Country ID: ' || v_country_id || ' Country Name: ' || v_country_name);
    END LOOP;
    -- close cursors
    CLOSE c_regions;
    CLOSE c_jobs;
    CLOSE c_departments;
    CLOSE c_employees;
    CLOSE c_locations;
    CLOSE c_countries;
END;
/
