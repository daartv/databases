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
  messages: {
    // get
    // post
    post: function (data) {
      // connect to db
      // dbConnection.connect();
      // query username into username table
      console.log(data);
      var selectQuery = "SELECT username_id FROM USERNAME WHERE username = '" + data.username + "';";
      console.log(selectQuery);
      dbConnection.query(selectQuery, 
        function(err, id) {
          if(err) {
            throw err;
          }
          console.log('RESULT IS', id);
          var query = "INSERT INTO MESSAGES (username_id, room, text) VALUES (" + id[0].username_id +  ", '" + data.roomname + "', " + "'" + data.text + "');";
          console.log(query);
          dbConnection.query(query);  
          
        });
      // end connection to db
      // dbConnection.end();
    }
  },
  // users functions
  users: {
    // get
    // post
    post: function (chunk) {
      // connect to db
      // dbConnection.connect();
      // query username into username table
      var condQuery = "SELECT username_id from USERNAME WHERE username = '" + chunk + "';";
      dbConnection.query(condQuery, function(err, response) {
        console.log('RESPONSE OF CONDITION', !response);
        if (!response[0]) {
          console.log(chunk);
          var query = "INSERT INTO USERNAME (username) VALUES ('" + chunk + "')";
          console.log(query);
          dbConnection.query(query);  
          
        }

      });
      // end connection to db
      // dbConnection.end();
    }
  }
};

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".


