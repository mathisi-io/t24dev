SUBROUTINE MTD.CustomerDetails(cust_id, cust_name, cust_residence)
*------------------------------------------------------------------
* Mainline routine to fetch the details of customers
*------------------------------------------------------------------
* Developer: Aaron Niyonzima(aaron@mathisi.io)
* Date     : 08/11/2020
* Version  : 0.0.1
*-------------------------------------------------------------------
    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.CUSTOMER

    fn_cust  = 'F.CUSTOMER'
    f_cust   = ''
    cust_rec = ''

    CALL OPF(fn_cust, f_cust)
    CALL F.READ(fn_cust, cust_id, cust_rec, f_cust, err)
    cust_name      = cust_rec<EB.CUS.SHORT.NAME>
    cust_residence = cust_rec<EB.CUS.RESIDENCE>

    RETURN
END
