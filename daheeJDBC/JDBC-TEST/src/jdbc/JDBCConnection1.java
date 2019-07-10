package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection1 {

	public static void main(String[] args) {
		
		//1. ������ ���̽��� ����̹��� �ε��Ѵ�. 
		//2. �����ͺ��̽� ����
		
		Connection conn = null;
		//JDBC_URL : mysql
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC";
		//USER
		String user = "bit";
		//Password
		String pw = "bit";
		
		try {
			//1. ����̹� �ε� : mysql ����̹� �ε�
			Class.forName("com.mysql.jdbc.Driver");
			
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
