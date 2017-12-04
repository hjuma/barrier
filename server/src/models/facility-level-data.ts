import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { FacilityLevelDataAttributes, FacilityLevelDataInstance } from './interfaces/facility-level-data';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<FacilityLevelDataInstance, FacilityLevelDataAttributes> {
    let FacilityLevelData = sequelize.define<FacilityLevelDataInstance, FacilityLevelDataAttributes>("FacilityLevelData", {
        snapshot_date: {
            type: dataTypes.DATE(),
            allowNull: false,
            primaryKey: true
        },
        facility_id: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true
        },
        barrier_type_id: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true
        },
        barrier_metric_id: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
            primaryKey: true
        },
        current_flag: {
            type: dataTypes.BOOLEAN,
            allowNull: false,
            primaryKey: true,
            defaultValue: true
        },
        count_of_data: {
            type: dataTypes.INTEGER(21),
            allowNull: false
        },
        rag_status: {
            type: dataTypes.STRING(1),
            allowNull: true
        },
        snapshot_pid: {
            type: dataTypes.STRING(20),
            allowNull: true
        },
        end_dt: {
            type: dataTypes.DATE(),
            allowNull: true,
            defaultValue: null
        }
    }, {
        indexes: [

        ],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'facility_level_data'
    });

    FacilityLevelData['associate'] = function(models) {
        FacilityLevelData.belongsTo(models['Facility'], {foreignKey: 'facility_id'});
        FacilityLevelData.belongsTo(models['BarrierType'], {foreignKey: 'barrier_type_id'});
        FacilityLevelData.belongsTo(models['BarrierMetric'], {foreignKey: 'barrier_metric_id'});
    };

    return FacilityLevelData;
}