package sharedhouse;
import java.sql.*;


public class FyManage {
   private Connection conn;
   private ResultSet rs;
   private PreparedStatement pstmt;
   private DatabaseConn dbConn;

   public FyManage(){
	   
   }   
  
   //房源信息编辑
   public FyInfo updateAdmain(FyInfo house){
	   FyInfo newhouse = null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE fy SET city = ?,hName = ?,address = ?, price= ?, harea= ?,hsize= ?, hired=?  WHERE houseID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,house.getCity());
		   pstmt.setString(2,house.gethName());
		   pstmt.setString(3, house.getAddress());
		   pstmt.setInt(4, house.getPrice());
		   pstmt.setString(5, house.getHarea());
		   pstmt.setInt(6, house.getHsize());
		   pstmt.setString(7,house.getHired());
		   pstmt.setInt(8, house.gethId());
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   System.out.println("管理员编辑房源信息成功");
			   String strSql2="select * from fy  where houseID = ?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setInt(1,house.gethId());
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("后台修改房源信息记录已查到");
				   newhouse=new FyInfo();
				   //对房源对象属性赋值
				   newhouse.sethId(rs.getInt("houseID"));
				   newhouse.setCity(rs.getString("city"));
				   newhouse.sethName(rs.getString("hName"));
				   newhouse.setAddress(rs.getString("address"));
				   newhouse.setPrice(rs.getInt("price"));
				   newhouse.setHarea(rs.getString("harea"));
				   newhouse.setHsize(rs.getInt("hsize"));
				   newhouse.setHired(rs.getString("hired"));
			   }
		   }
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
	   return newhouse;
   }
   
   //删除房源信息
   public boolean deleteFy(FyInfo house){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="delete from fy  where houseID=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setInt(1,house.gethId());
		   int i=pstmt.executeUpdate();
		   if(i>0){
			   result=true;
		   }
		   if(rs!=null)rs.close();
		   if(pstmt!=null)pstmt.close();
		   if(conn!=null)conn.close();
	   }
		   catch(SQLException e)
		   {
			   e.printStackTrace();
		   }
	   return result;
   }
   
   
}
