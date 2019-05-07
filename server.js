var express = require('express'),
  app = express(),
  port = process.env.PORT || 3000,
  mongoose = require('mongoose'),
  Task = require('./api/models/todoListModel'), //created model loading here
  bodyParser = require('body-parser');
  
//mongoose instance connection url connection
  mongoose.Promise = global.Promise;
  //mongoose.set('bufferCommands', false);
 mongoose.connect('mongodb://localhost/datadb');  


 app.use(bodyParser.urlencoded({ extended: true }));
 app.use(bodyParser.urlencoded({ useNewUrlParser: true }));
 app.use(bodyParser.json());


 var routes = require('./api/routes/todoListRoutes'); //importing route
 routes(app); //register the route


app.listen(port);

app.use(function(req, res) {
  res.status(404).send({url: req.originalUrl + ' not found'})
});


//maybe how to access website?
// app.use(function(req, res) {
//   res.status(404).send({url: teamalphahacks.me})
// });

//need to create new file to use and create keys
//app.use(express.static('keyGen'));


console.log('todo list RESTful API server started on: ' + port);