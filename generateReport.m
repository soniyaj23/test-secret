% generateReport.m script

conn = duckdb("sales_data.db", EncryptionKeyID=secretID("salesDbKey"));

results = fetch(conn,"SELECT * FROM transactions");

generateReport(results);

disp('Report generated successfully!');

% generateDatabaseReport.m script

% dbPassword = getSecret("SQLSERVER_PASSWORD");

% conn = database("SQLServerDB", "dbuser", dbPassword);

% results = fetch(conn,"SELECT * FROM customers");

% generateReport(results);
