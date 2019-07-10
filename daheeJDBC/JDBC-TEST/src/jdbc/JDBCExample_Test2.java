package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCExample_Test2 {

	public static void main(String[] args) {
		
		
		Connection conn = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
			System.out.println("����Ŭ �����ͺ��̽��� �����߽��ϴ�.\n");
			
			Statement stmt = conn.createStatement();
			
			//1. emp ���̺� ���ο� ��������� �Է��ϴ� ���α׷�
			String sqlInsert = "insert into emp values(?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sqlInsert);
			pstmt.setInt(1, 7777);
			pstmt.setString(2, "DAHEE");
			pstmt.setString(3, "MANAGER");
			pstmt.setInt(4, 7839);
			pstmt.setString(5, "97/03/25");
			pstmt.setInt(6, 5000);
			pstmt.setInt(7, 2000);
			pstmt.setInt(8, 10);
			int resultCnt = pstmt.executeUpdate();
			
			if(resultCnt > 0) {
				System.out.println(resultCnt + "���� ���ԵǾ����ϴ�.\n");
			}
			
			stmt.close();
			pstmt.close();
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
