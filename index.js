const mysql = require('mysql');
const inquirer = require('inquirer');
const view = require('./utils/view');
const add = require('./utils/add');
const update = require('./utils/update');
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
                "Update Employee Role",
                "Update Employee Manager",
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
                    add.addEmployee(connection, start);
                    break;
                case "Remove Employee":
                    update.removeEmployee(connection, start);
                    break;
                case "View Employees":
                    view.viewAllEmployees(connection, start);
                    break;
                case "View Employees by Department":
                    view.ViewEmployeeDept(connection, start);
                    break;
                case "View Employees by Manager":
                    view.viewEmployeeMgr(connection, start);
                    break;
                case "Update Employee Role":
                    update.updateRole(connection, start);
                    break;
                case "Update Employee Manager":
                    update.updateManager(connection, start);
                    break;
               case "Add Role":
                   add.addRole(connection, start);
                   break;
                case "Remove Role":
                    update.removeRole(connection, start);
                    break;
                case "View All Roles":
                    view.viewRoles(connection, start);
                    break;
                case "Add Department":
                    add.addDepartment(connection, start);
                    break;
                case "Remove Department":
                    update.removeDepartment(connection, start);
                    break;
                case "View All Departments":
                    view.viewDepartments(connection, start);
                    break;
                case "Exit":
                    connection.end();
                    break;
            }
        })
}
