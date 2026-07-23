CREATE OR REPLACE PROCEDURE TransferFunds(
    p_source_account_id IN NUMBER,
    p_destination_account_id IN NUMBER,
    p_amount IN NUMBER
)
IS
    v_source_balance NUMBER;
BEGIN
    SELECT Balance
    INTO v_source_balance
    FROM Accounts
    WHERE AccountID = p_source_account_id;

    IF v_source_balance >= p_amount THEN

        UPDATE Accounts
        SET Balance = Balance - p_amount,
            LastModified = SYSDATE
        WHERE AccountID = p_source_account_id;

        UPDATE Accounts
        SET Balance = Balance + p_amount,
            LastModified = SYSDATE
        WHERE AccountID = p_destination_account_id;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE(
            'Funds transferred successfully.'
        );

    ELSE

        DBMS_OUTPUT.PUT_LINE(
            'Insufficient balance in source account.'
        );

    END IF;
END;
/