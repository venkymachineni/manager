const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

    this.on('READ', "Employee", async (req) => {

        const employee = await cds.tx(req).run(req.query);
        const employee_final = [];
        // matrials_final = material;

        console.log(employee);

       
        
        for (i=0; i<employee.length; i++)
        {
            
            if (employee[i].empName === 'venky')
            {
                employee[i].empName = 'Venkatesh Naidu';
                employee_final.push(employee[i])
            }
        }
        
        return employee_final;

    })
})