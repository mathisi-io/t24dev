PROGRAM TestCallJ

    class_name = "io.mathisi.test.Greeting"
    method_name = "hello"
    param = "Anne Smith"

    CALLJ class_name, method_name, param SETTING ret ON ERROR
        err = SYSTEM(0)
        CRT "Error code ": err
        RETURN
    END

    CRT "Received from java: ": ret
END
