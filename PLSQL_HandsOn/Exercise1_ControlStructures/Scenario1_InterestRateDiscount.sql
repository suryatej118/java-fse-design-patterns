BEGIN
    FOR customer_rec IN (
        SELECT CustomerID, DOB
        FROM Customers
    )
    LOOP
        IF MONTHS_BETWEEN(SYSDATE, customer_rec.DOB) / 12 > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = customer_rec.CustomerID;

        END IF;
    END LOOP;

    COMMIT;
END;
/