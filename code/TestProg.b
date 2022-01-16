PROGRAM TestProg

    customers = '100434,111217,100485,100289,100588,100489'
    CHANGE ',' TO @FM IN customers

    LOOP
        REMOVE cust_id FROM customers SETTING pos
    WHILE cust_id : pos
        CALL MTD.CustomerDetails(cust_id, cust_name, cust_residence)

        BEGIN CASE
            CASE cust_residence EQ 'US'
                CRT cust_id :'*': cust_name :'*': cust_residence
            CASE cust_residence EQ 'LU'
                CRT cust_name :' is a resident of Luxembourg'
            CASE cust_residence EQ 'RW'
                CRT cust_id :'-': cust_name :'(': cust_residence :')'
        END CASE
    REPEAT
END
