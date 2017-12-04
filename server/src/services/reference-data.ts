//import {logger} from "../utils/logger";
import { models, sequelize } from '../models/index';
import { BarrierAttributes, BarrierInstance } from '../models/interfaces/barrier';
import { BusinessUnitAttributes, BusinessUnitInstance } from "../models/interfaces/business-unit";
import { BarrierElementAttributes, BarrierElementInstance } from '../models/interfaces/barrier-element';
import { AssetInstance, AssetAttributes } from '../models/interfaces/asset';
import { FacilityAttributes, FacilityInstance } from '../models/interfaces/facility';
import { BarrierTypeAttributes, BarrierTypeInstance } from '../models/interfaces/barrier-type';
import { Sequelize, SequelizeStatic, Transaction } from 'sequelize';

export class ReferenceDataService {

    getAllBarriers(): Promise<Array<BarrierInstance>> {
        let promise = new Promise<Array<BarrierInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Barrier'].findAll(
                    {
                        where: { current_flag: 1 },
                        order: [
                            ['display_order', 'ASC']
                        ]
                    }
                ).then((barriers: Array<BarrierInstance>) => {
                    resolve(barriers);
                }).catch((error: Error) => {
                    reject(error);
                });
            });
        });

        return promise;
    }

    updateBarrier(code: string, barrierAttributes: BarrierAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Barrier'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: code }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['Barrier'].create(
                            {
                                version_no: Number(barrierAttributes['version_no']) + Number(1),
                                code: barrierAttributes['code'],
                                name: barrierAttributes['name'],
                                description: barrierAttributes['description'],
                                display_order: barrierAttributes['display_order']
                            }, { transaction: t });
                    });
            }).then(result => {
                resolve(null);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise;
    }


    createBarrier(barrierAttributes: BarrierAttributes): Promise<BarrierInstance> {
        let promise = new Promise<BarrierInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Barrier'].create(barrierAttributes).then((barrier: BarrierInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(barrier);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    updateAsset(code: string, assetAttributes: AssetAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Asset'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: code }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['Asset'].create({
                            version_no: Number(assetAttributes['version_no']) + Number(1),
                            code: assetAttributes['code'],
                            business_unit_id: assetAttributes['business_unit_id'],
                            name: assetAttributes['name']
                        }
                            , { transaction: t });
                    });
            }).then(result => {
                resolve(result);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise;
    }

    createAsset(assetAttributes: AssetAttributes): Promise<BarrierElementInstance> {
        let promise = new Promise<BarrierElementInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Asset'].create(assetAttributes).then((asset: AssetInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(asset);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    getAllAssets(): Promise<Array<AssetInstance>> {
        let promise = new Promise<Array<AssetInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Asset'].findAll(
                    {
                        where: {
                            current_flag: 1
                        },
                        include: [
                            {
                                model: sequelize.model('BusinessUnit'), required: false
                            }
                        ]
                    }
                ).then((assets: Array<AssetInstance>) => {
                    resolve(assets);
                }).catch((error: Error) => {
                    reject(error);
                });
            });
        });

        return promise;
    }

    updateFacility(code: string, facilityAttributes: FacilityAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: code }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['Facility'].create({
                            version_no: Number(facilityAttributes['version_no']) + Number(1),
                            code: facilityAttributes['code'],
                            asset_id: facilityAttributes['asset_id'],
                            name: facilityAttributes['name'],
                            category: facilityAttributes['category']
                        }
                            , { transaction: t });
                    });
            }).then(result => {
                resolve(result);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise;
    }

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

    getAllFacilities(): Promise<Array<FacilityInstance>> {
        let promise = new Promise<Array<FacilityInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['Facility'].findAll({
                    where: {
                        id: { $ne: -1 },
                        current_flag: 1
                    },
                    include: [
                        {
                            model: sequelize.model('Asset'), required: false
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

    updateBarrierElement(code: string, barrierElementAttributes: BarrierElementAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierElement'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: code }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['BarrierElement'].create({
                            version_no: Number(barrierElementAttributes['version_no']) + Number(1),
                            name: barrierElementAttributes['name'],
                            code: barrierElementAttributes['code']
                        }
                            , { transaction: t });
                    });
            }).then(result => {
                resolve(result);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise;
    }

    createBarrierElement(barrierElementAttributes: BarrierElementAttributes): Promise<BarrierElementInstance> {
        let promise = new Promise<BarrierElementInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierElement'].create(barrierElementAttributes).then((barrierElement: BarrierElementInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(barrierElement);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });

        return promise;
    }

    getAllBarrierElements(): Promise<Array<BarrierElementInstance>> {
        let promise = new Promise<Array<BarrierElementInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierElement'].findAll({ where: { current_flag: 1 } }
                ).then((barrierElements: Array<BarrierElementInstance>) => {
                    resolve(barrierElements);
                }).catch((error: Error) => {
                    reject(error);
                });
            });
        });
        return promise;
    }

    createBusinessUnit(BusinessUnitAttributes: BusinessUnitAttributes): Promise<BusinessUnitInstance> {
        let promise = new Promise<BusinessUnitInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BusinessUnit'].create(BusinessUnitAttributes).then((businessUnit: BusinessUnitInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(businessUnit);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });
        return promise;
    }


    retrieveBusinessUnits(): Promise<Array<BusinessUnitInstance>> {
        let promise = new Promise<Array<BusinessUnitInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BusinessUnit'].findAll({ where: { current_flag: 1 } }).then((businessUnits: Array<BusinessUnitInstance>) => {
                    resolve(businessUnits);
                }).catch((error: Error) => {
                    reject(error);
                });
            });
        });
        return promise;
    }

    updateBusinessUnit(id: string, businessUnitAttributes: BusinessUnitAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BusinessUnit'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: id }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['BusinessUnit'].create(
                            {
                                version_no: Number(businessUnitAttributes['version_no']) + Number(1),
                                name: businessUnitAttributes['name'],
                                description: businessUnitAttributes['description']
                            }, { transaction: t });
                    });
            }).then(result => {
                resolve(result);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise
    }

    createBarrierType(barrierTypeAttributes: BarrierTypeAttributes): Promise<BarrierTypeInstance> {
        let promise = new Promise<BarrierTypeInstance>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierType'].create(barrierTypeAttributes).then((barrierType: BarrierTypeInstance) => {
                    //logger.info(`Created product with name ${productAttributes.name}.`);
                    resolve(barrierType);
                }).catch((error: Error) => {
                    //logger.error(error.message);
                    reject(error);
                });
            });
        });
        return promise;
    }

    retrieveBarrierTypes(): Promise<Array<BarrierTypeInstance>> {
        let promise = new Promise<Array<BarrierTypeInstance>>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierType'].findAll(
                    {
                        where: { current_flag: 1 },
                        order: [
                            ['display_order', 'ASC']
                        ],
                        include: [
                            {
                                model: sequelize.model('Asset')
                            },
                            {
                                model: sequelize.model('Barrier')
                            }
                        ]
                    }
                ).then((barrierTypes: Array<BarrierTypeInstance>) => {
                    resolve(barrierTypes);
                }).catch((error: Error) => {
                    reject(error);
                });
            });
        });
        return promise;
    }

    updateBarrierType(id: string, barrierTypeAttributes: BarrierTypeAttributes): Promise<void> {
        let promise = new Promise<void>((resolve: Function, reject: Function) => {
            sequelize.transaction((t: Transaction) => {
                return models['BarrierType'].update({
                    current_flag: 0,
                    end_dt: Date.now()
                }, { where: { id: id }, transaction: t })
                    .then((results: [number, Array<BarrierInstance>]) => {
                        return models['BarrierType'].create(
                            {
                                version_no: Number(barrierTypeAttributes['version_no']) + Number(1),
                                asset_id: barrierTypeAttributes['asset_id'],
                                barrier_id: barrierTypeAttributes['barrier_id'],
                                name: barrierTypeAttributes['name'],
                                description: barrierTypeAttributes['description'],
                                display_order: barrierTypeAttributes['display_order']
                            }, { transaction: t });
                    });
            }).then(result => {
                resolve(result);
            }).catch((error: Error) => {
                reject(error);
            });
        });
        return promise
    }
}

export const referenceDataService = new ReferenceDataService();
