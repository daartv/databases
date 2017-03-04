var db = require('../db');

module.exports = {
  messages: {
    get: function () {}, // a function which produces all the messages
    post: function () {
      console.log('posting messages from model');
      /*
      var queryString = 'SELECT * FROM messages';
      var queryArgs = [];

      dbConnection.query(queryString, queryArgs, function(err, results) {

      */
      //use db to add to the database
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {
      console.log('posting users from model');
    }
  }
};

