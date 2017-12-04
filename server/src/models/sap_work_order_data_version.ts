import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { SapWorkOrderDataVersionAttributes, SapWorkOrderDataVersionInstance } from './interfaces/sap_work_order_data_version';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<SapWorkOrderDataVersionInstance, SapWorkOrderDataVersionAttributes> {

    let SapWorkOrderDataVersion = sequelize.define<SapWorkOrderDataVersionInstance, SapWorkOrderDataVersionAttributes>("SapWorkOrderDataVersion", {
        barrier_element: {
            type: dataTypes.STRING(3),
            allowNull: false
        },
        functional_location: {
            type: dataTypes.STRING(50),
            allowNull: true
        },
        asset_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: true
        },
        facility_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: true
        },
        performance_standard_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false
        },
        planner_group_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false
        },
        abc_indicator_id:  {
            type: dataTypes.INTEGER(10),
            allowNull: false
        },
        barrier_metrics: {
            type: dataTypes.STRING(21),
            allowNull: false
        },
        work_order_number: {
            type: dataTypes.STRING(50),
            allowNull: false,
            primaryKey: true
        },
        work_order_description: {
            type: dataTypes.STRING(50),
            allowNull: false
        },
        order_type: {
            type: dataTypes.STRING(50),
            allowNull: false
        },
        user_status: {
            type: dataTypes.STRING(50),
            allowNull: false
        },
        awaiting_deferrment: {
            type: dataTypes.STRING(1),
            allowNull: false
        },
        deferred: {
            type: dataTypes.STRING(1),
            allowNull: false
        },
        work_centre: {
            type: dataTypes.STRING(50),
            allowNull: false
        },
        latest_allowable_finish_date: {
            type: dataTypes.DATE,
            allowNull: true
        },
        maint_activ_type: {
            type: dataTypes.STRING(50),
            allowNull: true
        }, 
        start_dt: {
            type: dataTypes.DATE(),
            allowNull: false,
            primaryKey: true,
            defaultValue: dataTypes.NOW
        }, 
        current_flag: {
            type: dataTypes.BOOLEAN,
            allowNull: false,
            primaryKey: true,
            defaultValue: true
        },
        version_no: {
            type: dataTypes.INTEGER(11),
            allowNull: false
        }, 
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        },
        snapshot_date: {
            type: dataTypes.DATE(),
            allowNull: false,
            primaryKey: true
        },
        snapshot_pid: {
            type: dataTypes.STRING(20),
            allowNull: true
        },
    }, {
        indexes: [],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'sap_work_order_data_version'
    });

    SapWorkOrderDataVersion['associate'] = function(models) {
    };

    return SapWorkOrderDataVersion;
}
