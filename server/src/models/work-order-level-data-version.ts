import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { WorkOrderLevelDataVersionAttributes, WorkOrderLevelDataVersionInstance } from './interfaces/work-order-level-data-version';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<WorkOrderLevelDataVersionInstance, WorkOrderLevelDataVersionAttributes> {

    let WorkOrderLevelDataVersion = sequelize.define<WorkOrderLevelDataVersionInstance, WorkOrderLevelDataVersionAttributes>("WorkOrderLevelDataVersion", {
        snapshot_date: {
            type: dataTypes.DATE(),
            allowNull: false,
            primaryKey: true
        },
        work_order_number: {
            type: dataTypes.STRING(50),
            primaryKey: true
        },
        facility_id: {
            type: dataTypes.INTEGER(10),
            primaryKey: true
        },
        current_flag: {
            type: dataTypes.BOOLEAN,
            allowNull: false,
            primaryKey: true,
            defaultValue: true
        },
        functional_location: {
            type: dataTypes.STRING(50),
            allowNull: true
        },
        barrier_element_id: {
            type: dataTypes.INTEGER(10)
        },
		barrier_type_id: {
            type: dataTypes.INTEGER(10)
        },
		barrier_metric_id: {
            type: dataTypes.INTEGER(10)
        },
		rag_status: {
            type: dataTypes.STRING(1)
        },
		planner_group_id: {
            type: dataTypes.INTEGER(10)
        },
		abc_indicator_id: {
            type: dataTypes.INTEGER(10)
        },
		work_order_description: {
            type: dataTypes.STRING(50)
        },
		order_type: {
            type: dataTypes.STRING(50)
        },
		user_status: {
            type: dataTypes.STRING(50)
        },
		awaiting_deferment: {
            type: dataTypes.STRING(1)
        },
		deferred: {
            type: dataTypes.STRING(1)
        },
		work_centre: {
            type: dataTypes.STRING(50)
        },
		latest_allowable_finish_date: {
            type: dataTypes.DATE
        },
        maint_activ_type: {
            type: dataTypes.STRING(50),
            allowNull: true
        },
        snapshot_pid: {
            type: dataTypes.STRING(20),
            allowNull: true
        },
        start_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        },
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        },
        version_no: {
            type: dataTypes.INTEGER(11),
            allowNull: false
        }
    }, {
        indexes: [],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'work_order_level_data_version'
    });

    WorkOrderLevelDataVersion['associate'] = function(models) {
        WorkOrderLevelDataVersion.belongsTo(models['PlannerGroup'], { foreignKey: 'planner_group_id'});
        WorkOrderLevelDataVersion.belongsTo(models['AbcIndicator'], { foreignKey: 'abc_indicator_id'});
        WorkOrderLevelDataVersion.belongsTo(models['Facility'], { foreignKey: 'facility_id'});
        WorkOrderLevelDataVersion.belongsTo(models['BarrierElement'], { foreignKey: 'barrier_element_id'});
        WorkOrderLevelDataVersion.belongsTo(models['BarrierType'], { foreignKey: 'barrier_type_id'});
        WorkOrderLevelDataVersion.belongsTo(models['BarrierMetric'], { foreignKey: 'barrier_metric_id'});
    };

    return WorkOrderLevelDataVersion;
}
