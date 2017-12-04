import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { BarrierMetricAttributes, BarrierMetricInstance } from './interfaces/barrier-metric';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<BarrierMetricInstance, BarrierMetricAttributes> {

    let BarrierMetric = sequelize.define<BarrierMetricInstance, BarrierMetricAttributes>("BarrierMetric", {
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
        barrier_element_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false
        },
        name: {
            type: dataTypes.STRING(100),
            allowNull: false
        },
        description: {
            type: dataTypes.STRING(200),
            allowNull: true,
            defaultValue: null
        },
        use_barriers: {
          type: dataTypes.BOOLEAN,
          allowNull: false,
          defaultValue: true
        },
        green_on_no_data: {
            type: dataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: true
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
        tableName: 'barrier_metric'
    });

    BarrierMetric['associate'] = function(models) {
        BarrierMetric.belongsTo(models['BarrierElement'], {foreignKey: 'barrier_element_id'});
        BarrierMetric.hasMany(models['FacilityLevelData'], {foreignKey: 'barrier_metric_id'});
        BarrierMetric.hasMany(models['FacilityRuleSet'], {foreignKey: 'barrier_metric_id'});
        BarrierMetric.hasMany(models['WorkOrderLevelData'], {foreignKey: 'barrier_metric_id'});
    };

    return BarrierMetric;
}
