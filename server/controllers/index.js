
var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10, // Seconds.
  'Content-Type': 'application/json'
};
var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      // console.log(req);
      res.writeHead(200, headers);
      data = {results: [{username: 'brandon', text: 'testing', room: 'lobby'}]};
      res.end(JSON.stringify(data));
      // get data from database
      // send response along with unserialized data

    }, // a function which handles a get request for all messages
    post: function (req, res) {
      //
      // get data from request
      // send to database to store
      // give response
      console.log(req.body);
      console.log('posting in controller!');
      req.on('data', function (chunk) {
        console.log('chunk', chunk);
      });
      res.writeHead(201, headers);
      res.end();
      // models.messages.post()
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      res.writeHead(200, headers);
      res.end('test');
    },
    post: function (req, res) {
      /*debugger;*/
      res.writeHead(201, headers);
      res.end('test');
      // res.send('test for users');
      console.log('posting users! from controller');
    }
  }
};

