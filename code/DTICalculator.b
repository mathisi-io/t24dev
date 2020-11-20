    SUBROUTINE CalculateDti(gross_income, total_debts, dti)

*------------------------------------------------------------------
*  Program to calculate the Debt-to-Income ratio
*------------------------------------------------------------------  
*  Developer: Aaron Niyonzima(@mathisi_io)
*  Date     : 01/11/2020
*  Version  : 0.0.1
*-------------------------------------------------------------------

    dti = total_debts / gross_income
    RETURN
END
