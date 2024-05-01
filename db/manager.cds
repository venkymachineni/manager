namespace capm.reuse.manager;

@cds.persistence.exists
entity syn_EMPLOYEES {
   key ID : Integer;
    empName : String;
    company: Association to one syn_COMPANY;
}

@cds.persistence.exists
entity syn_COMPANY
{
    key ID : Integer;
    orgName : String;
    employee: Association to many syn_EMPLOYEES;
    
}