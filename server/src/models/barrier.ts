import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { BarrierAttributes, BarrierInstance } from './interfaces/barrier';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<BarrierInstance, BarrierAttributes> {

    let Barrier = sequelize.define<BarrierInstance, BarrierAttributes>("Barrier", {
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
        code: {
            type: dataTypes.STRING(30),
            allowNull: false
        },
        name: {
            type: dataTypes.STRING(35),
            allowNull: false
        },
        description: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
        display_order: {
            type: dataTypes.INTEGER(1),
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
        tableName: 'barrier'
    });
 
    Barrier['associate'] = function(models) {
        Barrier.hasMany(models['BarrierType'], {foreignKey: 'barrier_id'});
        Barrier.hasMany(models['FacilityRuleSet'], {foreignKey: 'barrier_id'});
        Barrier.hasMany(models['AssetRuleSet'], {foreignKey: 'barrier_id'});
    };
 
    return Barrier;
}
