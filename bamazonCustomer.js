var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "papa2010",
  database: "bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
  });
  
  function afterConnection() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.log(res);
      inquirer.prompt([{
        type: "input",
        message: "how many units of the product you would like to buy? ",
        name:"PRODID"

      },
    {
      type: "input",
      message: "What is your name?",
      name: "username"
    }
    ])
      connection.end();
    });
  }

