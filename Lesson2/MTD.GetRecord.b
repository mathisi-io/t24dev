    SUBROUTINE MTD.GetRecord(fn, rec_id, rec)
*------------------------------------------------------------------
* Subroutine to retutn a file record
* Params:
*    - fn (IN)    : filename (eg. F.CUSTOMER)
*    - rec_id (IN): record id
*    - rec (OUT)  : Dynamic Array containg Record
*------------------------------------------------------------------  
* Developer: Aaron Niyonzima(@mathisi_io)
* Date     : 01/11/2020
* Version  : 0.0.1
*-------------------------------------------------------------------
    fh = ''
    CALL OPF(fn, fh)
    CALL F.READ(fn, rec_id, rec, fh, err)

    RETURN
END
