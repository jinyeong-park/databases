var db = require('../db');

module.exports = {
  getAll: function (callback) {
    connection.query('SELECT * FROM messages', function (err, result) {
      if (err) {
        console.log('getAll error :', err);
        callback(err, null);
      } else {
        console.log('getAll success: ', result);
        callback(null, result);
      }
    });
  }, // a function which produces all the messages
  create: function () {

   } // a function which can be used to insert a message into the database
};
