PROGRAM MTD.Forex

    class_name = "io.mathisi.Forex"
    method_name = "calculate"
    param = "USD]2349.45"

    CALLJ class_name, method_name, param SETTING amount_fcy ON ERROR
        err = SYSTEM(0)
        CRT "Error(": err :")"
        RETURN
    END

    PRINT "EUR 2349.45 = USD ": amount_fcy

    RETURN
END