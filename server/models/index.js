var db = require('../db');

module.exports = {
  messages: {
    get: function () {}, // a function which produces all the messages
    post: function (data) {
      console.log('posting messages from model');
      /*
      var queryString = 'SELECT * FROM messages';
      var queryArgs = [];

      dbConnection.query(queryString, queryArgs, function(err, results) {

      */
      //use db to add to the database
      var queryString = 'INSERT INTO messages (username, text, room)';  
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function (chunk) {
      console.log('posting users from model');
      db.users.post(chunk);
    }
  }
};

