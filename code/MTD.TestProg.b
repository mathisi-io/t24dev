PROGRAM MTD.TestProg

    CRT @(-1)
    PRINT "Enter the customer Id: "
    INPUT cust_id

    CALL MTD.CustomerDetails(cust_id, employment_status, occupation, job_title, employers_name, employers_address)
    CRT "Customer Id        : " : cust_id
    CRT "Employment Status  : " : FMT(employment_status, 'MCP')
    CRT "Occupation         : " : FMT(occupation, 'MCP')
    CRT "Job Title          : " : FMT(job_title, 'MCP')
    CRT "Employers          : " : FMT(employers_name, 'MCP')
    CRT "Employers Address  : " : FMT(employers_address, 'MCP')
END
