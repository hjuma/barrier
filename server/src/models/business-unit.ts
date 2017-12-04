import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { BusinessUnitAttributes, BusinessUnitInstance } from './interfaces/business-unit';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<BusinessUnitInstance, BusinessUnitAttributes> {

    let BusinessUnit = sequelize.define<BusinessUnitInstance, BusinessUnitAttributes>("BusinessUnit", {
        id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        start_dt: {
            type: dataTypes.DATE(),
            allowNull: false,
            primaryKey: false,
            defaultValue: dataTypes.NOW
        }, 
        current_flag: {
            type: dataTypes.BOOLEAN,
            allowNull: false,
            primaryKey: false,
            defaultValue: true
        },
        version_no: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
            defaultValue: 1
        },
        name: {
            type: dataTypes.STRING(35),
            allowNull: false
        },
        description: {
            type: dataTypes.STRING(100),
            allowNull: false
        },
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        }
    }, {
        indexes: [],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'business_unit'
    });

    BusinessUnit['associate'] = function(models) {
        BusinessUnit.hasMany(models['Asset'], { foreignKey: 'business_unit_id'});
        BusinessUnit.hasMany(models['User'], { foreignKey: 'business_unit_id'});
    };

    return BusinessUnit;
}
