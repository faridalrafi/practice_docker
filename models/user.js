'use strict';
module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    name: DataTypes.STRING,
    username: DataTypes.STRING,
    email: DataTypes.STRING,
    password: DataTypes.STRING,
    id_rumah: DataTypes.INTEGER
  }, {});
  User.associate = function (models) {
    // associations can be defined here
    // User.hasOne(models.Role);
  };
  return User;
};
