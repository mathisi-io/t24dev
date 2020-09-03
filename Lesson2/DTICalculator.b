PROGRAM DTICalculator
* ------------------------------------------------------------------
*  Program to calculate the Debt-to-Income ratio
*  
*  Developer: Aaron Niyonzima(@mathisi_io)
*  Date     : 03/09/2020
*  Version  : 0.0.1
*-------------------------------------------------------------------

    gross_income = 34790                  ;* monthly income in LCY
    debt_repay_amt = 348.89               ;* total debt repayment(monthly)
    dti = debt_repay_amt / gross_income
    CRT "Your DTI ratio is ": dti
END
