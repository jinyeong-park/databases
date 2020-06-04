var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.getAll( function(err, result) {
      if (err) {
        res.send(err);
      } else {
        res.send(result);
      }
    })

  }, // a function which handles a get request for all messages
  post: function (req, res) {
    // models.create( newMessage, function(err, result) => {
    //   if (err) {
    //     res.send(err);
    //   } else {
    //     res.send(result)
    //   }
    }
    // a function which handles posting a message to the database
};

