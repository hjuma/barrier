export interface IDatabaseConfig {
    username: string;
    password: string;
    database: string;
    host: string;
    port: number;
    dialect: string;
    logging: boolean | Function;
    force: boolean;
    timezone: string;
}