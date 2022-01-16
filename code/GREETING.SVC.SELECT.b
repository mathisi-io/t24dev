SUBROUTINE GREETING.SVC.SELECT
*------------------------------------------------------------------
* Prepares a file containing all the IDs to be processed
*------------------------------------------------------------------
* Developer: Aaron Niyonzima(aaron@mathisi.io)
* Date     : 18/04/2021
* Version  : 0.0.1
*-------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT MATHISI.BP I_GREETING.SVC.COMMON

    sel_cmd = 'SELECT ' : fn_cust
    CALL EB.READLIST(sel_cmd, sel_list, '', total_rec, ret_code)
    CALL BATCH.BUILD.LIST('', sel_list)

    RETURN
END
