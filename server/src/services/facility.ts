//import {logger} from "../utils/logger";
import { models, sequelize } from '../models/index';
import { FacilityAttributes, FacilityInstance } from '../models/interfaces/facility';
import { Transaction } from 'sequelize';
import { WorkOrderLevelDataInstance } from "../models/interfaces/work-order-level-data";

export class FacilityService {
    createFacility(facilityAttributes: FacilityAttributes): Promise<FacilityInstance> {
        let promise = new Promise<FacilityInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].create(facilityAttributes).then((facility: FacilityInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(facility);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    retrieveFacility(id: string): Promise<FacilityInstance> {
        let promise = new Promise<FacilityInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].findOne(
                    {
                        where: {
                            id: id,
                            current_flag:true
                             
                        },
                        include: [
                            {
                                model: sequelize.model('FacilityLevelData'),
                                include: [
                                    {
                                        model: sequelize.model('BarrierMetric')
                                    },
                                    {
                                        model: sequelize.model('BarrierType'),
                                        include: [
                                            {
                                                model: sequelize.model('Barrier')
                                            }
                                        ]
                                    }
                                ]

                            },
                            {
                                model: sequelize.model('Asset')
                            }
                        ]
                    }).then((facility: FacilityInstance) => {
                        if (facility) {
                            //logger.info(`Retrieved product with name ${name}.`);
                        } else {
                            //logger.info(`Product with name ${name} does not exist.`);
                        }
                        resolve(facility);
                    }).catch((error: Error) => {
                        //logger.error(error.message);
                        reject(error);
                    });
            });
        });

        return promise;
    }


    retrieveSCEFacilities(): Promise<Array<FacilityInstance>> {
        let promise = new Promise<Array<FacilityInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].findAll(
                    {
                        include: [
                            {
                                model: sequelize.model('FacilityLevelData'),
                                where: {
                                    barrier_type_id: -1,
                                    barrier_metric_id: -1
                                },
                                include: [
                                    {
                                        model: sequelize.model('BarrierMetric')
                                    },
                                    {
                                        model: sequelize.model('BarrierType'),
                                        include: [
                                            {
                                                model: sequelize.model('Barrier')
                                            }
                                        ]
                                    }
                                ]

                            },
                            {
                                model: sequelize.model('Asset')
                            }
                        ]
                    }).then((facility: Array<FacilityInstance>) => {
                        if (facility) {
                            //logger.info(`Retrieved product with name ${name}.`);
                        } else {
                            //logger.info(`Product with name ${name} does not exist.`);
                        }
                        resolve(facility);
                    }).catch((error: Error) => {
                        //logger.error(error.message);
                        reject(error);
                    });
            });
        });

        return promise;
    }

    retrieveWorkOrders(id: number, barrierTypeId: number, barrierMetricId: number, ragStatus: string) {
        if (ragStatus==='unassigned') {
            let promise = new Promise<Array<WorkOrderLevelDataInstance>>((resolve: Function, reject: Function) => {
                sequelize.transaction((t: Transaction) => {
                    return models['WorkOrderLevelData'].findAll(
                        {
                            where: {
                                facility_id: id,
                                barrier_metric_id: barrierMetricId
                            },
                            include: [
                                {
                                    model: sequelize.model('Facility'),
                                    include: [
                                        {
                                            model: sequelize.model('Asset')
                                        }
                                    ]

                                },
                                {
                                    model: sequelize.model('BarrierMetric'),
                                }
                                ,
                                {
                                    model: sequelize.model('PlannerGroup'),
                                }
                                ,
                                {
                                    model: sequelize.model('AbcIndicator'),
                                }
                            ]
                        }
                    ).then((workOrderLevelData: Array<WorkOrderLevelDataInstance>) => {
                        if (workOrderLevelData) {
                            //logger.info(`Retrieved product with name ${name}.`);
                        } else {
                            //logger.info(`Product with name ${name} does not exist.`);
                        }
                        resolve(workOrderLevelData);
                    }).catch((error: Error) => {
                        //logger.error(error.message);
                        reject(error);
                    });
                });
            });

            return promise;
        }
        else {
            let promise = new Promise<Array<WorkOrderLevelDataInstance>>((resolve: Function, reject: Function) => {
                sequelize.transaction((t: Transaction) => {
                    return models['WorkOrderLevelData'].findAll(
                        {
                            where: {
                                facility_id: id,
                                barrier_type_id: barrierTypeId,
                                barrier_metric_id: barrierMetricId,
                                rag_status: ragStatus
                            },
                            include: [
                                {
                                    model: sequelize.model('Facility'),
                                    include: [
                                        {
                                            model: sequelize.model('Asset')
                                        }
                                    ]

                                },
                                {
                                    model: sequelize.model('BarrierType'),
                                    include: [
                                        sequelize.model('Barrier')
                                    ]
                                },
                                {
                                    model: sequelize.model('BarrierMetric'),
                                }
                                ,
                                {
                                    model: sequelize.model('PlannerGroup'),
                                }
                                ,
                                {
                                    model: sequelize.model('AbcIndicator'),
                                }
                            ]
                        }
                    ).then((workOrderLevelData: Array<WorkOrderLevelDataInstance>) => {
                        if (workOrderLevelData) {
                            //logger.info(`Retrieved product with name ${name}.`);
                        } else {
                            //logger.info(`Product with name ${name} does not exist.`);
                        }
                        resolve(workOrderLevelData);
                    }).catch((error: Error) => {
                        //logger.error(error.message);
                        reject(error);
                    });
                });
            });

            return promise;
        }


    }

    retrieveDataQualityWorkOrders(id: number, barrierTypeId: number, barrierMetricId: number) {
        let promise = new Promise<Array<WorkOrderLevelDataInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['WorkOrderLevelData'].findAll(
                    {
                        where: {
                            facility_id: id,
                            barrier_type_id: barrierTypeId,
                            barrier_metric_id: barrierMetricId
                        },
                        include: [
                            {
                                model: sequelize.model('Facility'),
                                include: [
                                    {
                                        model: sequelize.model('Asset')
                                    }
                                ]

                            },
                            {
                                model: sequelize.model('BarrierType'),
                                include: [
                                    sequelize.model('Barrier')
                                ]
                            },
                            {
                                model: sequelize.model('BarrierMetric'),
                            }
                            ,
                            {
                                model: sequelize.model('PlannerGroup'),
                            }
                            ,
                            {
                                model: sequelize.model('AbcIndicator'),
                            }
                        ]
                    }
                ).then((workOrderLevelData: Array<WorkOrderLevelDataInstance>) => {
                    if (workOrderLevelData) {
                        //logger.info(`Retrieved product with name ${name}.`);
                    } else {
                        //logger.info(`Product with name ${name} does not exist.`);
                    }
                    resolve(workOrderLevelData);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });
        return promise;
    }

    retrieveFacilitiesByAsset(code: string): Promise<Array<FacilityInstance>> {
        let promise = new Promise<Array<FacilityInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].findAll(
                    {
                        where: {
                            asset_id: code
                        },
                        include: [
                            {
                                model: sequelize.model('FacilityLevelData')
                            }
                        ]
                    }
                ).then((facility: Array<FacilityInstance>) => {
                    if (facility) {
                        //logger.info(`Retrieved product with name ${name}.`);
                    } else {
                        //logger.info(`Product with name ${name} does not exist.`);
                    }
                    resolve(facility);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    retrieveFacilities(): Promise<Array<FacilityInstance>> {
        let promise = new Promise<Array<FacilityInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].findAll({
                    where: {
                        id: { $ne: -1 },
                    },
                    include: [
                        {
                            model: sequelize.model('Asset')
                        }
                    ]
                }).then((facilities: Array<FacilityInstance>) => {
                    //logger.info("Retrieved all products.");
                    resolve(facilities);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    updateFacility(id: string, facilityAttributes: any): Promise<number> {
        let promise = new Promise<number>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].update(facilityAttributes, { where: { id: id } })
                    .then((results: [number, Array<FacilityInstance>]) => {
                        if (results.length > 0) {
                            //logger.info(`Updated product with name ${name}.`);
                        } else {
                            //logger.info(`Product with name ${name} does not exist.`);
                        }
                        resolve(results.length);
                    }).catch((error: Error) => {
                        //logger.error(error.message);
                        reject(error);
                    });
            });
        });

        return promise;
    }

    deleteFacility(code: string): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].destroy({ where: { code: code } }).then((afffectedRows: number) => {
                    if (afffectedRows > 0) {
                        //logger.info(`Deleted product with name ${name}`);
                    } else {
                        //logger.info(`Product with name ${name} does not exist.`);
                    }
                    resolve(null);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }
}

export const facilityService = new FacilityService();
