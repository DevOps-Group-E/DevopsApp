// Require the express module
var express = require('express');

// Create a router object
var router = express.Router();

// GET request handler for the home page
router.get('/', function(req, res, next) {
  // Render the 'index' view with the provided title
  res.render('index', { title: "Devops Application" });
});

// GET request handler for the about page
router.get('/about', function(req, res, next) {
  // Render the 'about' view with the provided title
  res.render('about', { title: "About Devops Application" });
});

// GET request handler for the contact page
router.get('/contact', function(req, res, next) {
  // Render the 'contact' view with the provided title
  res.render('contact', { title: "Contact Devops Application" });
});

// GET request handler for the demo page
router.get('/demo', function(req, res, next) {
  // Render the 'demo' view with the provided title
  res.render('demo', { title: "Demo Devops Application" });
});

// Export the router object to be used by other modules
module.exports = router;
