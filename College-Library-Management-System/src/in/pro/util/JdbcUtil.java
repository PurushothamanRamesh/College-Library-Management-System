package in.pro.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class JdbcUtil {

	private JdbcUtil() {
	}

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException ce) {
			ce.printStackTrace();
		}
	}

	public static Connection getJdbcConnection() throws SQLException, IOException {

		String fileLoc = "F:\\Full stack Developer\\CrudApp\\Library_Management_System\\src\\in\\pro\\properties\\application.properties";
		HikariConfig config = new HikariConfig(fileLoc);
		HikariDataSource dataSource = new HikariDataSource(config);
		return dataSource.getConnection();
	}
}
