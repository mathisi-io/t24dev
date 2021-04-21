    SUBROUTINE GREETING.SVC(cust_id)
*------------------------------------------------------------------
* Service that greets customers in their languages
*------------------------------------------------------------------
* Developer: Aaron Niyonzima(aaron@mathisi.io)
* Date     : 18/04/2021
* Version  : 0.0.1
*-------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
    $INSERT MATHISI.BP I_GREETING.SVC.COMMON

    CALL OCOMO('Processing... ': cust_id)

    CALL F.READ(fn_cust, cust_id, cust_rec, f_cust, err)
    IF cust_rec EQ '' THEN
        CALL OCOMO('Error: No customer record found with id ' : cust_id)
        RETURN
    END

    name = cust_rec<EB.CUS.SHORT.NAME>
    lang = cust_rec<EB.CUS.LANGUAGE>

    BEGIN CASE
        CASE lang EQ 1
            greeting = 'Good morning'
        CASE lang EQ 2
            greeting = 'Bonjour'
        CASE lang EQ 3
            greeting = 'Guten morgen'
        CASE lang EQ 4
            greeting = 'Buenos dias'
    END CASE

    CALL OCOMO('Message: ' : greeting : ' ' : name : '!')

    RETURN
END
