import { Instance } from 'sequelize';

export interface SapWorkOrderDataVersionAttributes {
    barrier_element: string;
    functional_location: string;
    asset_id: number;
    facility_id : number;
    performance_standard_id: number;
    planner_group_id: number;
    abc_indicator_id: number;
    barrier_metrics: string;
    work_order_number: string
    work_order_description: string
    order_type: string
    user_status: string
    awaiting_deferrment: string
    deferred: string
    work_centre: string
    latest_allowable_finish_date: Date;
    maint_activ_type: string;
    current_flag : Boolean;
    start_dt : Date;
    end_dt : Date;
    version_no : Number;
    snapshot_date : Date
    snapshot_pid :string;
}

export interface SapWorkOrderDataVersionInstance extends Instance<SapWorkOrderDataVersionAttributes> {
    dataValues: SapWorkOrderDataVersionAttributes;
}