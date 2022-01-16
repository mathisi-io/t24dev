PROGRAM Arrays

    name    = 'David Doe'
    company = "mathisi.io"
    address = \23, avenue de l'armee\

    employee = name:@FM:address:@FM:35:@FM:"mathisi.io":@VM:5428.43:@FM:"ABC corp":@VM:324.45

    PRINT FMT(employee, 'MCP')
    CRT "Address: ": employee<2>
    CRT "Company: ": employee<4,1>
    CRT "Salary: EUR ": employee<4,2>
    CRT "Company2: ": employee<5,1>
    CRT "Salary2: EUR ": employee<5,2>

    loan_request = '001*Anne*EUR*348990*240*0.031'
    CONVERT '*' TO @FM IN loan_request
    CRT FMT(loan_request, 'MCP')
    req_id = loan_request<1>
    cust_name = loan_request<2>
    curr = loan_request<3>
    amount = loan_request<4>
    terms = loan_request<5>
    int_rate = loan_request<6>

    CRT @(-1)
    !PRINT cust_name : " requested ": curr :" ": amount : " on ": int_rate * 100 :"%": " for ": terms / 12 :" years."

    * --------------------------
    * Dimensioned arrays
    *---------------------------
    rows = 2
    cols = 3
    DIM arr(rows, cols)
    arr(1, 1) = 1
    arr(1, 2) = 2
    arr(1, 3) = 3
    arr(2, 1) = 4
    arr(2, 2) = 5
    arr(2, 3) = 6

    FOR r = 1 TO rows
        FOR c = 1 TO cols
            CRT @(c,r): arr(r, c)
        NEXT c
    NEXT r

    * Convert dimensioned array to dynamic array
    MATBUILD arr2 FROM arr USING CHAR(32)
    PRINT arr2 ;* 1 2 3 4 5 6

    DIM arr3(3, 2)
    * Convert dynamic array dimensioned array
    MATPARSE arr3 FROM arr2 USING CHAR(32)
    REM CRT arr3(3, 1) ;* 5
    ! comments
    // This is also a comment

END
