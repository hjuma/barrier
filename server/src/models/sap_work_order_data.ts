import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { SapWorkOrderDataAttributes, SapWorkOrderDataInstance } from './interfaces/sap_work_order_data';
import { models } from './index';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<SapWorkOrderDataInstance, SapWorkOrderDataAttributes> {

    let SapWorkOrderData = sequelize.define<SapWorkOrderDataInstance, SapWorkOrderDataAttributes>("SapWorkOrderData", {
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
    }, {
        indexes: [],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'sap_work_order_data'
    });

    SapWorkOrderData['associate'] = function(models) {
    };

    return SapWorkOrderData;
}
