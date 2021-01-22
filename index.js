const mysql = require('mysql');
const inquirer = require('inquirer');
// const { start } = require('repl');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: 'employees_db',
});


connection.connect(function(err){
    if (err) throw err;
    start();
});

function start() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What do you want to do?",
            choices: [
                "Add Employee",
                "Remove Employee",
                "View Employees",
                "View Employees by Department",
                "View Employees by Manager",
                "Update Employee",
                "Update Employee Manager",
                "Update Employee Role",
                "Add Role",
                "Remove Role",
                "View All Roles",
                "Add Department",
                "Remove Department",
                "View All Departments",  
                "Exit",
            ]
        })
        .then(function (answer){
            switch (answer.action) {
                case "Add Employee":
                    
                case "View Employees":
                    employee.viewAllEmployees(connection, start);
                    break;
                case "View Employees by Department":
                    ViewEmployeeDept();
                    break;

                case "Exit":
                    connection.end();
                    break;

            }
        })
}
