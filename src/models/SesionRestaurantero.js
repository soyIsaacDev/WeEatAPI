const {DataTypes} = require ('sequelize');

module.exports = s => {
    s.define(
        "SesionRestaurantero", 
    {
        autenticated:{
            type: DataTypes.ENUM("LoggedIn","LoggedOut"),
            allowNull: false
        }
    }, {
    timestamps: false,
    });
}