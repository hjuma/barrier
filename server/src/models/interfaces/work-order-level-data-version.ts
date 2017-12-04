import { Instance } from 'sequelize';

export interface WorkOrderLevelDataVersionAttributes {
    snapshot_date: Date;
    work_order_number: string;
    functional_location: string;
    facility_id: number;
    barrier_element_id: number;
    barrier_type_id: number;
    barrier_metric_id: number;
    rag_status: string;
    planner_group_id: number;
    abc_indicator_id: number;
    work_order_description: string;
    order_type: string;
    user_status: string;
    awaiting_deferment: string;
    deferred: string;
    work_centre: string;
    latest_allowable_finish_date: Date;
    maint_activ_type: string;
    snapshot_pid : string;
    current_flag : Boolean;
    start_dt : Date;
    end_dt : Date;
    version_no : Number;
}

export interface WorkOrderLevelDataVersionInstance extends Instance<WorkOrderLevelDataVersionAttributes> {
    dataValues: WorkOrderLevelDataVersionAttributes;
}