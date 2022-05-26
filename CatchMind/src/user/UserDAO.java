package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; // connection:db�������ϰ� ���ִ� ��ü
	private PreparedStatement pstmt;
	private ResultSet rs;
	// mysql�� ������ �ִ� �κ�
	public UserDAO() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����
		try {
			System.out.println("1");
			// localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�/��Ű��
			String dbURL = "jdbc:mysql://localhost:3306/web_programing?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
			String dbID = "root";
			String dbPassword = "necr0dancer!";		// ��й�ȣ�� ���� ������ ���� �����ϴ� ���� ����
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println("2");
			e.printStackTrace(); // ������ �������� ���
		}
	}
	// �α����� �õ��ϴ� �Լ�****
	public int login(String uID, String uPassword) {
		String SQL = "SELECT uPassword FROM user WHERE uID = ?";
		try {
			// pstmt : prepared statement ������ sql������ db�� �����ϴ� �������� �ν��Ͻ�������
			pstmt = conn.prepareStatement(SQL);
			// sql������ ���� ��ŷ����� ����ϴ°�... pstmt�� �̿��� �ϳ��� ������ �̸� �غ��ؼ�(����ǥ���)
			// ����ǥ�ش��ϴ� ������ �������̵��, �Ű������� �̿�.. 1)�����ϴ��� 2)��й�ȣ��������
			pstmt.setString(1, uID);
			// rs:result set �� �������
			rs = pstmt.executeQuery();
			// ����� �����Ѵٸ� ����
			if(rs.next()) {
				// �н����� ��ġ�Ѵٸ� ����
				if (rs.getString(1).equals(uPassword)) {
					return 1; // ��� ����
				}else
					return 0; // ��й�ȣ ����ġ
			}
			return -1; // ���̵� ���� ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // �����ͺ��̽� ������ �ǹ�
	}
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?)";
		try {
			System.out.println("3");
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserNickName());
			pstmt.setString(2, user.getUserID());
			pstmt.setString(3, user.getUserPassword());
			pstmt.setString(4, user.getUserTel());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("4");
			e.printStackTrace();
		}
		return -1; // DB ����
	}
}