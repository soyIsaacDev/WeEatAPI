//var compression = require('compression');
var helmet = require('helmet');
var cors = require('cors');
const express = require('express');

const { index, restaurantes, envios, repartidor, clientefinal, auth, 
  ClienteRestaurantero, authrestaurantero, pedidos, authrepartidor } = require('./src/routes');
const app = express();
const passport = require('passport');
var session = require('express-session');
var db = require('./src/db');
var path = require('path');

var allowlist = ['https://weeatcliente.onrender.com/', 'https://weeat-restaurantes.onrender.com/']

var corsOptionsDelegate = function (req, callback) {
  var corsOptions;
  if (allowlist.indexOf(req.header('Origin')) !== -1) {
    corsOptions = { origin: true } // reflect (enable) the requested origin in the CORS response
  } else {
    corsOptions = { origin: false } // disable CORS for this request
  }
  callback(null, corsOptions) // callback expects two parameters: error and options
}

/* app.get('/products/:id', cors(corsOptionsDelegate), function (req, res, next) {
  res.json({msg: 'This is CORS-enabled for an allowed domain.'})
}); */

app.use(cors(corsOptionsDelegate));
app.set('view engine', 'ejs');
app.use(helmet());
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static('./public'));
//mantener sesion autenticada
app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: false,
}));
app.use(passport.authenticate('session'));

app.use(express.urlencoded({extended: false}));
app.use(express.json({extended: false}));

app.use('/', index);
app.use("/authcliente", auth ) // usamos autenticacion en todas las rutas
app.use("/authrestaurantero", authrestaurantero);
app.use("/authrepartidor", authrepartidor)

app.use("/restaurantes", restaurantes)
app.use("/envios", envios);
app.use("/repartidor", repartidor);
app.use("/clientefinal", clientefinal);
app.use("/clienteRestaurantero", ClienteRestaurantero );
app.use("/pedidos", pedidos);


app.use(function (err, req, res, next) {
    console.error(err);
    res.status(err.status || 500).send(err.message);
});



passport.serializeUser(function(user, done) {
  done(null, user.id);
});

passport.deserializeUser(function(id, done) {
    db.users.findById(id)
      .then((user) => {
        done(null, user);
      })
      .catch(err => {
        return done(err);
      })
  });
  

module.exports = app;
