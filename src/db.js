
const {Sequelize, Op} = require('sequelize');
const pg = require("pg");
require('dotenv').config();

/* const  modelCorporativo = require("./models/Corporativo"); */
const  modelCiudad = require("./models/Ciudad");
const  modelEnvio = require("./models/Envio");
const  modelEvaluaciones = require("./models/Evaluaciones");
const  modelImgRest = require("./models/ImagenRestaurante");
const  modelMenu = require("./models/Menu");
const  modelRestaurantes = require("./models/Restaurantes/Restaurantes");
const  modelRestaurantDetails = require("./models/Restaurantes/RestDetails");
const  modelTipodeComida = require("./models/TipoDeComida");
const  modelClienteFinal = require("./models/Clientes/Clientefinal");
const  modelDireccion = require("./models/Clientes/Direccion");
const  modelMetodosdePago = require("./models/Clientes/MetodosdePago");
const  modelComprasJuntas = require("./models/Pedidos/Compras_juntas");
const  modelPedidoGrupal = require("./models/Pedidos/Grupal");
const  modelPedidos = require("./models/Pedidos/Pedidos");
const  modelIngredientesExtra = require("./models/Platillo/Ingredientes_extra");
const  modelIngredientesaQuitar = require("./models/Platillo/Ingredientes_quitar");
const  modelIngredientes = require("./models/Platillo/Ingredientes");
const  modelPlatillo = require("./models/Platillo/Platillo");
const  modelSelecciondeIngredientes = require("./models/Platillo/Seleccion_Ingredientes");
const  modelRepartidor = require("./models/Repartidor/Repartidor");
const  modelImgPlatillo = require("./models/Platillo/ImagenPlatillo");
const  modelUbicacionRepartidor = require("./models/Repartidor/UbicacionRepartidor");
const  modelSesion = require("./models/Sesion.js");
const  modelClienteRestaurantero = require("./models/ClienteRestaurant/RestaurantCliente");
const  modelSesionRestaurantero = require("./models/SesionRestaurantero");
const  modelSesionRepartidor = require("./models/SesionRepartidor");

const isProduction = process.env.NODE_ENV === 'production';
const connectionString = `postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

var connection = 0;
isProduction ? connection = process.env.DATABASE_URL : connection = connectionString;

/* const sequelize = new Sequelize(connection,{
      logging: false   //Loging Deshabilitado
  });
  try {
      sequelize.authenticate();
      console.log('Conexion a la Base de Datos Exitosa.');
    } catch (error) {
      console.error('Unable to connect to the database:', error);
    }  */ 

const sequelize = new pg.Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  ssl: isProduction,
});

// display message on success if successful
sequelize.on('connect', () => {
  console.log('Teamwork Database connected successfully!');
});

//modelCorporativo(sequelize);
modelCiudad(sequelize);
modelEnvio(sequelize);
modelEvaluaciones(sequelize);
modelImgRest(sequelize);
modelMenu(sequelize);
modelRestaurantes(sequelize);
modelTipodeComida(sequelize);
modelClienteFinal(sequelize);
modelDireccion(sequelize);
modelMetodosdePago(sequelize);
modelComprasJuntas(sequelize);
modelPedidoGrupal(sequelize);
modelPedidos(sequelize);
modelIngredientesExtra(sequelize);
modelIngredientesaQuitar(sequelize);
modelIngredientes(sequelize);
modelPlatillo(sequelize);
/* modelSelecciondeIngredientes(sequelize); */
modelRepartidor(sequelize);
modelImgPlatillo(sequelize);
modelUbicacionRepartidor(sequelize);
modelRestaurantDetails(sequelize);
modelSesion(sequelize);
modelClienteRestaurantero(sequelize);
modelSesionRestaurantero(sequelize);
modelSesionRepartidor(sequelize);


let {/*Corporativo,  Ciudad, */ Envios, Evaluaciones, ImgRest, Menu, Restaurantes, 
    TipodeComida, Clientefinal, Direccion, MetodosdePago, Pedidos, PedidoGrupal, 
    Platillo, IngredientesExtra, IngredientesaQuitar, Ingredientes,
    ComprasJuntas, Repartidor, ImgPlatillo, UbicacionRepartidor, RestaurantDetails, Sesion,
    ClienteRestaurantero, SesionRestaurantero, SesionRepartidor} = sequelize.models;

/* Relaciones de DB */
/* Corporativo.hasMany(Restaurantes);
Restaurantes.belongsTo(Corporativo); */
Restaurantes.hasOne(TipodeComida);
TipodeComida.belongsTo(Restaurantes);
Envios.belongsTo(Repartidor);
Repartidor.hasOne(Envios);
Restaurantes.hasMany(Envios);
Envios.belongsTo(Restaurantes);
Pedidos.hasOne(Envios)
Envios.belongsTo(Pedidos)
Restaurantes.hasMany(Evaluaciones);
Evaluaciones.belongsTo(Restaurantes)
/* Los clientes pueden hacer un pedido a varios restaurantes */
Restaurantes.belongsToMany(Pedidos, {through:"PedidosRestaurantes"});
Pedidos.belongsToMany(Restaurantes, {through:"PedidosRestaurantes"});
Pedidos.belongsToMany(Platillo, {through:"PlatilloPedido"});
Platillo.belongsToMany(Pedidos, {through:"PlatilloPedido"});

Clientefinal.hasMany(Pedidos);
Pedidos.belongsTo(Clientefinal);
Clientefinal.hasMany(MetodosdePago);
MetodosdePago.belongsTo(Clientefinal);
/* El cliente puede tener muchas direcciones y las direcciones ser de varios clientes */
Clientefinal.belongsToMany(Direccion, {through:"DireccionClientes"});
Direccion.belongsToMany(Clientefinal, {through:"DireccionClientes"});

Restaurantes.hasOne(Direccion);
Direccion.belongsTo(Restaurantes);
Repartidor.hasOne(Direccion);
Direccion.belongsTo(Repartidor);
Pedidos.hasMany(PedidoGrupal);
PedidoGrupal.belongsTo(Pedidos);
PedidoGrupal.belongsToMany(Clientefinal, {through:"PedidoGrupalClientes"});
Clientefinal.belongsToMany(PedidoGrupal, {through:"PedidoGrupalClientes"});
Pedidos.hasOne(Evaluaciones);
Evaluaciones.belongsTo(Pedidos);
Repartidor.hasOne(Evaluaciones);
Evaluaciones.belongsTo(Repartidor);
Platillo.belongsToMany(ComprasJuntas, {through:"PlatillosJuntos"});
ComprasJuntas.belongsToMany(Platillo, {through:"PlatillosJuntos"});
Platillo.belongsToMany(Ingredientes, {through:"IngredientesPlatillos"});
Ingredientes.belongsToMany(Platillo, {through:"IngredientesPlatillos"});
/* SelecciondeIngredientes.belongsToMany(Platillo, {through:"SelecciondeIngredientesPlatillos"});
Platillo.belongsToMany(SelecciondeIngredientes, {through:"SelecciondeIngredientesPlatillos"}); */
IngredientesExtra.belongsToMany(Platillo, {through:"IngredientesExtraPlatillos"});
Platillo.belongsToMany(IngredientesExtra, {through:"IngredientesExtraPlatillos"});
IngredientesaQuitar.belongsToMany(Platillo, {through:"IngredientesaQuitarPlatillos"});
Platillo.belongsToMany(IngredientesaQuitar, {through:"IngredientesaQuitarPlatillos"});
/* Restaurantes.hasOne(Menu);
Menu.belongsTo(Restaurantes);
Menu.hasMany(Platillo);
Platillo.belongsTo(Menu); */
Restaurantes.hasMany(Platillo);
Platillo.belongsTo(Restaurantes);
Restaurantes.hasOne(ImgRest);
ImgRest.belongsTo(Restaurantes);
Platillo.hasOne(ImgPlatillo);
ImgPlatillo.belongsTo(Platillo);
UbicacionRepartidor.belongsTo(Repartidor);
Restaurantes.hasOne(RestaurantDetails);
RestaurantDetails.belongsTo(Restaurantes); 
Sesion.belongsTo(Clientefinal);
Clientefinal.hasOne(Sesion);

ClienteRestaurantero.belongsToMany(Restaurantes, {through:"Usuario-Restaurantes"});
Restaurantes.belongsToMany(ClienteRestaurantero, {through:"Usuario-Restaurantes"});
/* ClienteRestaurantero.belongsTo(Corporativo);
Corporativo.hasMany(ClienteRestaurantero); */
SesionRestaurantero.belongsTo(ClienteRestaurantero);
ClienteRestaurantero.hasOne(SesionRestaurantero);

SesionRepartidor.belongsTo(Repartidor);
Repartidor.hasOne(SesionRepartidor);


module.exports = {
    ...sequelize.models,
    db: sequelize,
    Op
};