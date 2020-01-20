CREATE PROCEDURE expressionsVerification()
BEGIN
	SELECT id,a,b,operation,c 
    FROM expressions
  --  WHERE elt(locate(operation, "+-*/"), a+b, a-b, a*b, a/b) = c;
    WHERE (operation = '+' AND c=a+b)
    OR (operation = '-' AND c=a-b)
    OR (operation = '*' AND c=a*b)
    OR (operation = '/' AND c=a/b);
END