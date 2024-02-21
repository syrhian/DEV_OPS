// Uncomment this block to use sqlite
module.exports = {
    dialect: "sqlite",
    storage: "./my-db.sqlite",
}

// Uncomment this block to use mysql
module.exports = {
    hostname: "localhost",
    username: "root",
    password: "Passw0rd",
    database: "",
    port: 3306
}

// TODO : adapt this file to load parameters from environment variables (process.env.VARIABLE_NAME)