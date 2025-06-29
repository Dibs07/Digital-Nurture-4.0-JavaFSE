DECLARE
  CURSOR due_loans IS
    SELECT l.LoanID, l.CustomerID, c.Name, l.EndDate
    FROM Loans l
    JOIN Customers c ON l.CustomerID = c.CustomerID
    WHERE l.EndDate <= SYSDATE + 30;
BEGIN
  FOR loan_rec IN due_loans LOOP
    DBMS_OUTPUT.PUT_LINE('Reminder: Loan ' || loan_rec.LoanID || 
                         ' for customer ' || loan_rec.Name || 
                         ' is due on ' || TO_CHAR(loan_rec.EndDate, 'YYYY-MM-DD'));
  END LOOP;
END;
