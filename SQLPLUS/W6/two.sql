    DECLARE
    -- pl/sql block to add three numbers

    -- Declare variables
    num1 NUMBER := 10;
    num2 NUMBER :=50;
    num3 NUMBER := 100;
    result NUMBER;

    BEGIN
    -- Adding two numbers
    result := num1 + num2 + num3;
    -- Output result
    DBMS_OUTPUT.PUT_LINE('The sum of ' || num1 || ' and ' || num2 || ' is ' || result);
    END;
    /

