import { IDatabaseConfig } from './interfaces/database-config';
import { DatabaseConfig } from './database-config';

class Config {
    private databaseConfig: IDatabaseConfig;

    constructor() {
        this.databaseConfig = DatabaseConfig;
    }

    getDatabaseConfig() {
        return this.databaseConfig;
    }

}

export const configuration = new Config();