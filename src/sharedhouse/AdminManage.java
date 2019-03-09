package sharedhouse;
import java.sql.*;

public class AdminManage {
		private Connection conn;
	   private ResultSet rs;
	   private PreparedStatement pstmt;
	   private DatabaseConn dbConn;
	   
	   public AdminManage(){
		   
	   }   
	   
	   //管理员登录
	   public AdminInfo adminLogin(String name,String password){
		   AdminInfo loginAdmin=null;
		   dbConn=new DatabaseConn();
		   try{		   
			   conn=dbConn.getConnection();
			   String strSql="select *  from adminX  where adName=? and adPass=?";
			   pstmt=conn.prepareStatement(strSql);
			   pstmt.setString(1,name);
			   pstmt.setString(2,password);		   
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("管理员已查到");
				   //实例化一个用户对象
				   loginAdmin=new AdminInfo();
				   //对用户对象属性赋值
				   loginAdmin.setAdName(rs.getString("adName"));
				   loginAdmin.setAdPass(rs.getString("adPass"));
		   }
		   //释放此ResultSet对象
		   if(rs!=null)rs.close();
		   //释放此PreparedStatement对象
		   if(pstmt!=null)pstmt.close();
		   }
		   catch(SQLException e)
		   {
			   e.printStackTrace();
		   }finally{
			   //关闭数据库连接
					   if(conn!=null)DatabaseConn.closeConn(conn);
				   }
		   return loginAdmin;
	   }
	   //管理员退出登录
}
