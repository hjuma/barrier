import { IDatabaseConfig } from './interfaces/database-config';

export const DatabaseConfig: IDatabaseConfig = {
    username: "root",
    password: "akeep7n1",
    database: "barrier",
    host: "127.0.0.1",
    port: 3306,
    dialect: "mysql",
    logging: true,
    force: true,
    timezone: "+00:00"
};