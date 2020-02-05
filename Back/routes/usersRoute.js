const express = require('express');
const router = express.Router();
var usersFactory = require('../factories/usersFactory');

router.post('/register', async function (req, res, next) {
  try {
    var token = await usersFactory.createNewUser(req.body);
    res.status(200).send({token}).end();
  } catch (error) {
    next(error);
  }
});

router.post('/login', async function (req, res, next) {
  try {
    var user = req.body;
    var auto = req.header('Authorization');
    var token = await usersFactory.login(user, auto);
    
    res.status(200).send({token}).end();
  } catch (error) {
    next(error);
  }
});

module.exports = router;