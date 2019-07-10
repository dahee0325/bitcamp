package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCExample_insert {

	public static void main(String[] args) {
		
		
		Connection conn = null;
		
		try {
			//1. �����ͺ��̽� ����̹� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2. �����ͺ��̽� ���� : DBurl , user name, user password
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
			System.out.println("����Ŭ �����ͺ��̽��� �����߽��ϴ�.\n");
			
			//3. Statement ��ü ����
			Statement stmt = conn.createStatement();
			
			//insert ����
			String sqlInsert = "insert into dept values(?, ?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sqlInsert);
			pstmt.setInt(1, 90);
			pstmt.setString(2, "MARKETING");
			pstmt.setString(3, "JEJU");
			int resultCnt = pstmt.executeUpdate();
			
			if(resultCnt > 0) {
				System.out.println(resultCnt + "���� ���ԵǾ����ϴ�.\n");
			}
			
			
			//4. SQL ���� : select / insert / update / delete
			String sql1 = "select * from dept order by deptno";
			
			// executeQuery : ResultSet ��ȯ����
			ResultSet rs = stmt.executeQuery(sql1);
			
			//5. ��� ���
			System.out.println("----------------------dept Table------------------------");
			
			//next() �о�ü��ִ� �����ִ��� Ȯ���Ͽ� ������
			while(rs.next()) {
				//colunm �̸����� ���
				System.out.println("�μ���ȣ : " + rs.getInt("deptno"));
				//colunm ������ �����ͼ� ���
				System.out.println("�μ��̸� : " + rs.getString(2));
				System.out.println("�μ���ġ : " + rs.getString(3));
				System.out.println("--------------------------------------------------------");
			}
			
			//6. ��� ��ü close : ResultSet , Statement, Connection ������ �������
			rs.close();
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
