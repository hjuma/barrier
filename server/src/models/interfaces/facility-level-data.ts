import { Instance } from 'sequelize';

export interface FacilityLevelDataAttributes {
 
    facility_id : Number;
    barrier_type_id : Number;
    barrier_metric_id : Number;
    count_of_data : Number;
    rag_status : String;
    snapshot_date : Date;
    snapshot_pid : String;
 
}

export interface FacilityLevelDataInstance extends Instance<FacilityLevelDataAttributes> {
    dataValues: FacilityLevelDataAttributes;
}