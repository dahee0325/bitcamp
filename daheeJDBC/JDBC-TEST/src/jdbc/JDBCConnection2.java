package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection2 {

	public static void main(String[] args) {
		
		//1. ������ ���̽��� ����̹��� �ε��Ѵ�. 
		//2. �����ͺ��̽� ����
		
		Connection conn = null;
		//JDBC_URL : oracle
		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		//USER
		String user = "scott";
		//Password
		String pw = "tiger";
		
		try {
			//1. ����̹� �ε� : oracle ����̹� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2. �����ͺ��̽� ����
			conn = DriverManager.getConnection(jdbcUrl, user, pw);
			
			System.out.println("�����ͺ��̽� ���� ����.");
			
			//�����ͺ��̽� �۾�
			
			//3. �����ͺ��̽� ���� ����(�����ͺ��̽� �۾����� ��)
			conn.close();
			
		} catch (ClassNotFoundException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
