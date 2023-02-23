DECLARE
-- sample pl_sql block to output "Hello World"

-- Declare variables
message VARCHAR2(20);

BEGIN

-- Assign values to variables
message := 'Hello World';
-- Output message
DBMS_OUTPUT.PUT_LINE(message);
END;
/