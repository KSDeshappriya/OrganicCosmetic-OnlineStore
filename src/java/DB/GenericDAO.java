package DB;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GenericDAO {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/OrganicCosmeticStore";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    public List<Object[]> getAll(String tableName) throws SQLException {
        String query = "SELECT * FROM " + tableName;
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {
            List<Object[]> resultList = new ArrayList<>();
            while (rs.next()) {
                Object[] row = new Object[rs.getMetaData().getColumnCount()];
                for (int i = 0; i < row.length; i++) {
                    row[i] = rs.getObject(i + 1);
                }
                resultList.add(row);
            }
            return resultList;
        }
    }

    /***  AddRecord - _/  ***/
    public void addRecord(String tableName, String[] columns, Object[] values) throws SQLException {
        StringBuilder queryBuilder = new StringBuilder("INSERT INTO ");
        queryBuilder.append(tableName).append(" (");

        // Append column names
        for (String column : columns) {
            queryBuilder.append(column).append(", ");
        }
        queryBuilder.deleteCharAt(queryBuilder.length() - 2); // Remove the last comma and space
        queryBuilder.append(") VALUES (");

        // Append placeholders for values
        for (int i = 0; i < values.length; i++) {
            queryBuilder.append("?, ");
        }
        queryBuilder.deleteCharAt(queryBuilder.length() - 2); // Remove the last comma and space
        queryBuilder.append(")");

        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(queryBuilder.toString())) {
            // Set values for parameters
            for (int i = 0; i < values.length; i++) {
                stmt.setObject(i + 1, values[i]);
            }
            stmt.executeUpdate();
        }
    }

    public void updateRecord(String tableName, Object[] values, String condition) throws SQLException {
        StringBuilder queryBuilder = new StringBuilder("UPDATE ");
        queryBuilder.append(tableName).append(" SET ");
        for (int i = 0; i < values.length; i++) {
            queryBuilder.append(tableName).append(".").append(i + 1).append(" = ?, ");
        }
        queryBuilder.deleteCharAt(queryBuilder.length() - 2); // Remove the last comma and space
        queryBuilder.append(" WHERE ").append(condition);

        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(queryBuilder.toString())) {
            for (int i = 0; i < values.length; i++) {
                stmt.setObject(i + 1, values[i]);
            }
            stmt.executeUpdate();
        }
    }

    public void deleteRecord(String tableName, String condition) throws SQLException {
        String query = "DELETE FROM " + tableName + " WHERE " + condition;
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.executeUpdate();
        }
    }
}
