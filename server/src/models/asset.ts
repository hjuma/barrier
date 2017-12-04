import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { AssetAttributes, AssetInstance } from './interfaces/asset';
import { models } from './index';

export default function (sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<AssetInstance, AssetAttributes> {

    let Asset = sequelize.define<AssetInstance, AssetAttributes>("Asset", {
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
            type: dataTypes.STRING(10),
            allowNull: false
        },
        business_unit_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false
        },
        name: {
            type: dataTypes.STRING(35),
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
                fields: ['code', 'start_dt', 'current_flag'],
                unique: true
            }],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'asset'
    });

    Asset['associate'] = function (models) {
        Asset.belongsTo(models['BusinessUnit'], { foreignKey: 'business_unit_id' });
        Asset.hasMany(models['Facility'], { foreignKey: 'asset_id' });
        Asset.hasMany(models['PlannerGroup'], { foreignKey: 'asset_id' });
        Asset.hasMany(models['AbcIndicator'], { foreignKey: 'asset_id' });
        Asset.hasMany(models['PerformanceStandard'], { foreignKey: 'asset_id' });
        Asset.hasMany(models['PerformanceStandardMapping'], { foreignKey: 'asset_id' });
        Asset.hasMany(models['BarrierType'], { foreignKey: 'asset_id' });
    };

    return Asset;
}
