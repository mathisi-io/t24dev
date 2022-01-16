SUBROUTINE GREETING.SVC.LOAD
*------------------------------------------------------------------
* Performs initialization and file opening
*------------------------------------------------------------------
* Developer: Aaron Niyonzima(aaron@mathisi.io)
* Date     : 18/04/2021
* Version  : 0.0.1
*-------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT MATHISI.BP I_GREETING.SVC.COMMON

    fn_cust = 'F.CUSTOMER'
    f_cust  = ''
    CALL OPF(fn_cust, f_cust)

    RETURN
END
