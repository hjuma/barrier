import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { FacilityLevelDataVersionAttributes, FacilityLevelDataVersionInstance } from './interfaces/facility-level-data-version';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<FacilityLevelDataVersionInstance, FacilityLevelDataVersionAttributes> {
    let FacilityLevelDataVersion = sequelize.define<FacilityLevelDataVersionInstance, FacilityLevelDataVersionAttributes>("FacilityLevelDataVersion", {
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
        },
    }, {
        indexes: [

        ],
        timestamps: true,
        underscored: true,
        freezeTableName: true,
        tableName: 'facility_level_data_version'
    });

    FacilityLevelDataVersion['associate'] = function(models) {
        FacilityLevelDataVersion.belongsTo(models['Facility'], {foreignKey: 'facility_id'});
        FacilityLevelDataVersion.belongsTo(models['BarrierType'], {foreignKey: 'barrier_type_id'});
        FacilityLevelDataVersion.belongsTo(models['BarrierMetric'], {foreignKey: 'barrier_metric_id'});
    };

    return FacilityLevelDataVersion;
}