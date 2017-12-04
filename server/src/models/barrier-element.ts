import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { BarrierElementAttributes, BarrierElementInstance } from './interfaces/barrier-element';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<BarrierElementInstance, BarrierElementAttributes> {

    let BarrierElement = sequelize.define<BarrierElementInstance, BarrierElementAttributes>("BarrierElement", {
        id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        start_dt: {
            type: dataTypes.DATE(),
            primaryKey: false,
            allowNull: false,
            defaultValue: dataTypes.NOW
        }, 
        current_flag: {
            type: dataTypes.BOOLEAN,
            primaryKey: false,
            allowNull: false,
            defaultValue: true
        },
            version_no: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
            defaultValue:1
        }, 
        name: {
            type: dataTypes.STRING(10),
            allowNull: false
        },
        code: {
                type: dataTypes.STRING(10),
                allowNull: false
        },
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        }
    }, {
        indexes: [  {
            fields: ['code', 'start_dt', 'current_flag'],
            unique: true
            }],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'barrier_element'
    });

    BarrierElement['associate'] = function(models) {
        BarrierElement.hasMany(models['BarrierMetric'], {foreignKey: 'barrier_element_id'});
        BarrierElement.hasMany(models['WorkOrderLevelData'], {foreignKey: 'barrier_element_id'});
    };

    return BarrierElement;
}
