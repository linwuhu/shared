package sharedhouse;
import java.sql.*;

public class DatabaseConn {
        
	public DatabaseConn(){
		
	}
	//定义获取数据库连接的方法
	public Connection getConnection(){	
                Connection conn=null;	
		//驱动程序
	        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	        //数据库连接URL
	        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=share";
	        //数据库登录用户名
	        String user = "sa";
	        //数据库登录密码
	        String password = "123456";
		try 
		{
			//加载驱动
			Class.forName(driverClass);
			//获取数据连接
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}

	//定义关闭数据库连接的静态方法
	public static void closeConn(Connection conn){
		//判断conn是否为空
		if(conn!=null){
			try{
				conn.close();  //关闭数据库连接
			}catch(SQLException ex){
				ex.printStackTrace();
			}
		}
	}
}
