package sharedhouse;
import java.sql.*;

public class AdminManage {
		private Connection conn;
	   private ResultSet rs;
	   private PreparedStatement pstmt;
	   private DatabaseConn dbConn;
	   
	   public AdminManage(){
		   
	   }   
	   
	   //����Ա��¼
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
				   System.out.println("����Ա�Ѳ鵽");
				   //ʵ����һ���û�����
				   loginAdmin=new AdminInfo();
				   //���û��������Ը�ֵ
				   loginAdmin.setAdName(rs.getString("adName"));
				   loginAdmin.setAdPass(rs.getString("adPass"));
		   }
		   //�ͷŴ�ResultSet����
		   if(rs!=null)rs.close();
		   //�ͷŴ�PreparedStatement����
		   if(pstmt!=null)pstmt.close();
		   }
		   catch(SQLException e)
		   {
			   e.printStackTrace();
		   }finally{
			   //�ر����ݿ�����
					   if(conn!=null)DatabaseConn.closeConn(conn);
				   }
		   return loginAdmin;
	   }
	   //����Ա�˳���¼
}
