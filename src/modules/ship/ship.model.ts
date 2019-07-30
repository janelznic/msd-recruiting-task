import { Sequelize } from 'sequelize';
import db from '../../db/mysql/mysql';

const ShipModel = db.define('ships', {
  id: {
    type: Sequelize.BIGINT(20),
    autoIncrement: true,
    primaryKey: true,
    unique: true,
    allowNull: false
  },
  name: {
    type: Sequelize.STRING(100),
    allowNull: false,
    unique: true
  },
  speed: {
    type: Sequelize.STRING(100),
    allowNull: false
  }},
  {
    underscored: true,
    timestamps: false,
    createAt: false,
    paranoid: true
  }
);

export default ShipModel;
