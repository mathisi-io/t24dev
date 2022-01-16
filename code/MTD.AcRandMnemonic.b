SUBROUTINE MTD.AcRandMnemonic
*------------------------------------------------------------------
* Auto New content Routine to populaite AC>MNEMONIC with 
* randomly generated value(eg ABCD1234XY)
*------------------------------------------------------------------
* Developer: Aaron Niyonzima(aaron@mathisi.io)
* Date     : 15/11/2020
* Version  : 0.0.1
*-------------------------------------------------------------------
    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT MATHISI.BP I_MTD.COMMON

    rand_mne = RND$Letters(4) : RND$Numbers(4) : RND$Letters(2) ;* ABCD1234XY
    IF R.NEW(AF) EQ '' THEN R.NEW(AF) = rand_mne

    RETURN
END
