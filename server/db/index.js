var mysql = require('mysql');

var dbConnection = mysql.createConnection({
  user: 'root',
  password: '',
  database: 'chat'
});
dbConnection.connect();

var tablename = 'messages';


//module export
module.exports = {

  // message functions
    // get
    // post

  // users functions
  users: {
    // get
    // post
    post: function (chunk) {
      // connect to db
      // dbConnection.connect();
      // query username into username table
      console.log(chunk);
      var query = "INSERT INTO USERNAME (username) VALUES ('" + chunk + "')";
      console.log(query);
      dbConnection.query(query);  
      // end connection to db
      // dbConnection.end();
    }
  }
};

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".


