package sharedhouse;
import java.sql.*;

public class DatabaseConn {
        
	public DatabaseConn(){
		
	}
	//�����ȡ���ݿ����ӵķ���
	public Connection getConnection(){	
                Connection conn=null;	
		//��������
	        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	        //���ݿ�����URL
	        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=share";
	        //���ݿ��¼�û���
	        String user = "sa";
	        //���ݿ��¼����
	        String password = "123456";
		try 
		{
			//��������
			Class.forName(driverClass);
			//��ȡ��������
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}

	//����ر����ݿ����ӵľ�̬����
	public static void closeConn(Connection conn){
		//�ж�conn�Ƿ�Ϊ��
		if(conn!=null){
			try{
				conn.close();  //�ر����ݿ�����
			}catch(SQLException ex){
				ex.printStackTrace();
			}
		}
	}
}
