import { Instance } from 'sequelize';

export interface FacilityLevelDataVersionAttributes {
    
    snapshot_date : Date;
    facility_id : Number;
    barrier_type_id : Number;
    barrier_metric_id : Number;
    current_flag: Boolean;
    count_of_data : Number;
    rag_status : String;
    snapshot_pid : String;
    end_dt: Date;
    start_dt : Date;
    version_no: String;
    
}

export interface FacilityLevelDataVersionInstance extends Instance<FacilityLevelDataVersionAttributes> {
    dataValues: FacilityLevelDataVersionAttributes;
}