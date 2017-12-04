import * as SequelizeStatic from 'sequelize';
import { DataTypes, Sequelize } from 'sequelize';
import { PlannerGroupAttributes, PlannerGroupInstance } from './interfaces/planner-group';

export default function(sequelize: Sequelize, dataTypes: DataTypes):
    SequelizeStatic.Model<PlannerGroupInstance, PlannerGroupAttributes> {
    let PlannerGroup = sequelize.define<PlannerGroupInstance, PlannerGroupAttributes>("PlannerGroup", {
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
            type: dataTypes.STRING(3),
            allowNull: false
        },
        asset_id: {
            type: dataTypes.INTEGER(10),
            allowNull: false,
            primaryKey: false
        },
        description: {
            type: dataTypes.STRING(40),
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
        tableName: 'planner_group'
    });

    PlannerGroup['associate'] = function(models) {
        PlannerGroup.belongsTo(models['Asset'], {foreignKey: 'asset_id'});
        PlannerGroup.hasMany(models['WorkOrderLevelData'], {foreignKey: 'planner_group_id'});
    };

    return PlannerGroup;
}
