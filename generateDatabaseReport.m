% generateDatabaseReport.m script

dbPassword = getSecret("SQLSERVER_PASSWORD");

conn = database("SQLServerDB", "dbuser", dbPassword);

results = fetch(conn,"SELECT * FROM customers");

generateReport(results);
