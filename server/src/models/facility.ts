import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { FacilityAttributes, FacilityInstance } from './interfaces/facility';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<FacilityInstance, FacilityAttributes> {
    let Facility = sequelize.define<FacilityInstance, FacilityAttributes>("Facility", {
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
            defaultValue:1
        },
        code: {
            type: dataTypes.STRING(10),
            allowNull: false,
            primaryKey: false
        },
        asset_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: false
        },
        name: {
            type: dataTypes.STRING(40),
            allowNull: false
        },
        category: {
            type: dataTypes.STRING(25),
            allowNull: false
        },
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        }
    }, {
        indexes: [
            {
            fields: ['code', 'asset_id', 'start_dt', 'current_flag'],
            unique: true
            }
        ],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'facility'
    });

    Facility['associate'] = function(models) {
        Facility.belongsTo(models['Asset'], {foreignKey: 'asset_id'});
        Facility.hasMany(models['FacilityLevelData'], {foreignKey: 'facility_id'});
        Facility.hasMany(models['AssetLevelData'], {foreignKey: 'facility_id'});
        Facility.hasMany(models['WorkOrderLevelData'], {foreignKey: 'facility_id'});

    };

    return Facility;
}