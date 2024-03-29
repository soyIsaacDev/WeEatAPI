const server = require("express").Router();
//const req = require("express/lib/request");
const {  Repartidor, UbicacionRepartidor } = require("../db");
const {Op} = require("sequelize");


server.post("/nuevoRepartidor", async (req, res) => { 
  try {
    const { nombre, usuario, contraseña, estatus } = req.body;
    
    const repartidor = await Repartidor.findOrCreate({
        where: {
          usuario
        },
        defaults: {
          nombre,
          contraseña, 
          estatus
        }      
    });
    res.json(repartidor);
  } catch (error) {
    res.send(error);
  }
});
/* Format to send from Thunder Client
{  "ubicacion": { "lat": 29.0843225, "lng": -111.0360456 }   }  */
/* server.post("/ubicacionRepartidor", async (req, res) => { 
  try {
    const { idRepartidor, ubicacion } = req.body;
    const ubicacionRepartidor = await UbicacionRepartidor.create({
       ubicacion, 
       RepartidorId: idRepartidor 
    });  
    res.send(ubicacionRepartidor);
  } catch (error) {
    res.send(error);
  }
}); */

server.get("/buscarRepartidor/:idRepartidor", async (req, res) => {
  const { idRepartidor } = req.params;
  try {
    const repartidor = await Repartidor.findOne({
      where: {
        id: idRepartidor,
      },
    });
    res.json(repartidor ? repartidor : "No existe ese repartidor");
  } catch (error) {
    res.send(error);
  }
});

server.post("/ubicacionRepartidor", async (req, res) => { 
  try {
    const { name, ubicacion } = req.body;
    const repartidor = await Repartidor.findOne({
      where: {
        nombre: name,
      },
    });
    const repartidorObject = repartidor;
    const ubicacionActualRepartidor = await UbicacionRepartidor.findOne({
      where:{
        [Op.and]: [
          { ubicacion },
          { RepartidorId:repartidorObject.id }
        ]
        
      }
    })
    if(!ubicacionActualRepartidor){
      const createUbicacionRepartidor = await UbicacionRepartidor.create({
        ubicacion, 
        RepartidorId: repartidorObject.id 
     });  
     res.send(createUbicacionRepartidor);
    }
    else{
      const actualizarUbicacionRepartidor = await UbicacionRepartidor.update(
        {ubicacion},
        {
          where:{
            RepartidorId: repartidorObject.id 
          }
      });  
      res.send(actualizarUbicacionRepartidor);
    }
    
  } catch (error) {
    res.send(error);
  }
});



server.get("/repartidor", async (req, res) => {
  try {
    const repartidor = await Repartidor.findAll({
    });
    res.json(repartidor);
  } catch (error) {     
    res.send(error);
  }
});



server.get("/repartidoractivo", async (req, res) => {
  try {
    const repartidor = await Repartidor.findAll({
      where:{
        estatus: {
          [Op.eq]: "Activo"
        }
      }
    });
    res.json(repartidor);
  } catch (error) {     
    res.send(error);
  }
});

server.get("/ubicacionRepartidor", async (req, res) => {
  try {
    const repartidor = await UbicacionRepartidor.findAll({
    });
    res.json(repartidor);
  } catch (error) {     
    res.send(error);
  }
});

server.get("/cambiarStatusRepartidor/:idRepartidor/:status", async (req, res) => {
  try {
    let {idRepartidor, status} = req.params;
    const repartidor = await Repartidor.findOne({
      where:{
        id: idRepartidor
      }
    });
    repartidor.estatus = status;
    await repartidor.save()
    res.json(repartidor);
  } catch (error) {     
    res.send(error);
  }
});

module.exports = server;