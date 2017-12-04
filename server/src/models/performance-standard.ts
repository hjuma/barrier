import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { PerformanceStandardAttributes, PerformanceStandardInstance } from './interfaces/performance-standard';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<PerformanceStandardInstance, PerformanceStandardAttributes> {
    let PerformanceStandard = sequelize.define<PerformanceStandardInstance, PerformanceStandardAttributes>("PerformanceStandard", {
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
            allowNull: false
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
        barrier_type_id: {
            type: dataTypes.INTEGER(10),
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
        indexes: [
            {
                fields: ['code', 'asset_id', 'start_dt', 'current_flag'],
                unique: true
            }
        ],
        classMethods: {},
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'performance_standard'
    });

    PerformanceStandard['associate'] = function(models) {
        PerformanceStandard.belongsTo(models['Asset'], {foreignKey: 'asset_id'});
        PerformanceStandard.belongsTo(models['BarrierType'], {foreignKey: 'barrier_type_id'});
        PerformanceStandard.hasMany(models['PerformanceStandardMapping'], {foreignKey: 'ps_id'});
    };

    return PerformanceStandard;
}
