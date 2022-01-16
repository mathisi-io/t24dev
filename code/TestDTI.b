PROGRAM TestDTI

    PROMPT "Enter your gross income: "
    INPUT gross_income

    IF NOT(ISDIGIT(gross_income) OR gross_income MATCHES '0N.0N') THEN
        CRT "Invalid amount"
        STOP
    END

    PROMPT "Enter your total debts: "
    INPUT total_debts
    IF NOT(ISDIGIT(total_debts) OR total_debts MATCHES '0N.0N') THEN
        CRT "Invalid amount"
        STOP
    END

    CALL CalculateDTI(gross_income, total_debts, dti)
    CRT "DTI from Subr is ": dti

END
