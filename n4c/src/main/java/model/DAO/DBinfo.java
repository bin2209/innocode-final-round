package model.DAO;

// CHANGE databaseName 
public interface DBinfo {

    String dbURL = "jdbc:sqlserver://PT365SU-VMN90Q6:1433;databaseName=n4c;encrypt=true;trustServerCertificate=true;";
    String dbUser = "sa";
    String dbPass = "123";
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

}
