DECLARE
  CURSOR jobs_cursor IS
    SELECT * FROM jobs;
  job jobs%ROWTYPE;
BEGIN
  OPEN jobs_cursor;
  LOOP
    FETCH jobs_cursor INTO job;
    EXIT WHEN jobs_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(job.job_id || ' - ' || job.job_title);
  END LOOP;
  CLOSE jobs_cursor;
END;

/
