import { Instance } from 'sequelize';

export interface AssetLevelDataAttributes {
    facility_id : Number;
    barrier_type_id : Number;
    count_of_data : Number;
    rag_status : String;
    red_count : Number;
    amber_count : Number;
    green_count : Number;
    snapshot_date : Date;
    snapshot_pid : String;
    current_flag : Number;
    start_dt : Date;
    end_dt : Date;
    version : Number;
}

export interface AssetLevelDataInstance extends Instance<AssetLevelDataAttributes> {
    dataValues: AssetLevelDataAttributes;
}