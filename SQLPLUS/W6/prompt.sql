DECLARE
  -- Declare variables
  num1 NUMBER;
  num2 NUMBER;
  result NUMBER;
BEGIN
  -- Prompt user for input
  DBMS_OUTPUT.PUT('Enter the first number: ');
  num1 :=new ; -- First input
  DBMS_OUTPUT.PUT('Enter the second number: ');
  num2 := new; -- Second input
  -- Add variables
  result := num1 + num2;
  -- Output result
  DBMS_OUTPUT.PUT_LINE('The sum of ' || num1 || ' and ' || num2 || ' is ' || result);
END;
/
