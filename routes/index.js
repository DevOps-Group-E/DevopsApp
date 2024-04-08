var express = require('express');
var router = express.Router();

// GET home page
router.get('/', function(req, res, next) {
  res.render('index', { title: "Devops Application" });
});

// GET about page
router.get('/about', function(req, res, next) {
  res.render('about', { title: "About Devops Application" });
});

// GET contact page
router.get('/contact', function(req, res, next) {
  res.render('contact', { title: "Contact Devops Application" });
});

router.get('/demo', function(req, res, next) {
  res.render('demo', { title: "Demo Devops Application" });
});

module.exports = router;
