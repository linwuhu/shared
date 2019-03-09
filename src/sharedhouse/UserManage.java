package sharedhouse;
import java.sql.*;

import org.apache.jasper.tagplugins.jstl.core.Out;


public class UserManage {
   private Connection conn;
   private ResultSet rs;
   private PreparedStatement pstmt;
   private DatabaseConn dbConn;

   public UserManage(){
	   
   }   
  
   //指定用户登录
   public UserInfo userLogin(String name,String password){
	   UserInfo loginUser=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="select 用户ID,用户名,密码,Email,用户类型  from 用户表  where 用户名=? and 密码=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   pstmt.setString(2,password);		   
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   //实例化一个用户对象
			   loginUser=new UserInfo();
			   //对用户对象属性赋值
			   loginUser.setId(rs.getInt("用户ID"));
			   loginUser.setName(rs.getString("用户名"));
			   loginUser.setPassword(rs.getString("密码"));
			   loginUser.setEmail(rs.getString("Email"));
			   loginUser.setPurview(rs.getString("用户类型"));
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
	   return loginUser;
   }
   
   //查询指定注册用户是否存在
   public boolean getUser(String name){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="select 用户名 from 用户表  where 用户名=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   result=true;
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
	   return result;
   }   
   //修改用户名

   public UserInfo updateName(String name,int id){
	   UserInfo newUser1=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE 用户表 SET 用户名 = ?  WHERE 用户ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   pstmt.setInt(2,id);	
		   /*pstmt.setString(1,newUser.getName());
		   pstmt.setInt(2,newUser.getId());*/
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   String strSql2="select * from 用户表  where 用户名=?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setString(1,name);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   newUser1=new UserInfo();
				   //对用户对象属性赋值
				   newUser1.setId(rs.getInt("用户ID"));
				   newUser1.setName(rs.getString("用户名"));
				   newUser1.setPassword(rs.getString("密码"));
				   newUser1.setEmail(rs.getString("Email"));
				   newUser1.setPurview(rs.getString("用户类型"));
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
	   return newUser1;
   }
   //修改用户名

   public UserInfo updateEmail(String email,int id){
	   UserInfo newUser1=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE 用户表 SET Email = ?  WHERE 用户ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,email);
		   pstmt.setInt(2,id);	
		   /*pstmt.setString(1,newUser.getName());
		   pstmt.setInt(2,newUser.getId());*/
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   System.out.println("email修改成功");
			   String strSql2="select * from 用户表  where Email=?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setString(1,email);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("email修改记录查到");
				   newUser1=new UserInfo();
				   //对用户对象属性赋值
				   newUser1.setId(rs.getInt("用户ID"));
				   newUser1.setName(rs.getString("用户名"));
				   newUser1.setPassword(rs.getString("密码"));
				   newUser1.setEmail(rs.getString("Email"));
				   newUser1.setPurview(rs.getString("用户类型"));
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
	   return newUser1;
   }
 //在用户表添加用户的注册信息
   public boolean insertUser(UserInfo newUser){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="insert into 用户表(用户名,密码,Email) values(?,?,?)";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,newUser.getName());
		   pstmt.setString(2,newUser.getPassword());		
		   pstmt.setString(3,newUser.getEmail());	
		   int i=pstmt.executeUpdate();
		   if(i>0){
			   result=true;
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
	   return result;
   }
   
 //修改用户密码
   public boolean updatePassword(UserInfo loginUser){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="update 用户表 set 密码=? where 用户名=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,loginUser.getPassword());			   
		   pstmt.setString(2,loginUser.getName());	   
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
   
   //获取所有用户的注册信息
   public String getAllUser(){
	   StringBuffer strUserInfo=new StringBuffer();
	   strUserInfo.append("<div id='info'>");
	   strUserInfo.append("  <div class='title'>用户注册信息</div>");
	   strUserInfo.append("  <table cellpadding='0' cellspacing='0'>");
	   strUserInfo.append("    <tr>");
	   strUserInfo.append("      <td class='td1' width='10%'>序号</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>用户名</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>密码</td>");
	   strUserInfo.append("      <td class='td1' width='30%'>Email邮箱</td>");
	   strUserInfo.append("      <td class='td1' width='15%'>操作按钮</td>");
	   strUserInfo.append("    </tr>");
	   try{	
		   int userId=0;
		   String userName="";
		   String userPassword="";
		   String userEmail="";
		   int i=0;
		   dbConn=new DatabaseConn();
		   conn=dbConn.getConnection();
		   String strSql="select 用户ID,用户名,密码,Email from 用户表";
		   pstmt=conn.prepareStatement(strSql);
		   rs=pstmt.executeQuery();
		   while(rs.next()){
			   i++;
			   userId=rs.getInt(1);;
			   userName=rs.getString(2).trim();
			   userPassword=rs.getString(3).trim();
			   userEmail=rs.getString(4).trim();
			   strUserInfo.append("    <tr>");
			   strUserInfo.append("      <td class='td1'>"+i+"</td>");
			   strUserInfo.append("      <td class='td1'>"+userName+"</td>");
			   strUserInfo.append("      <td class='td1'>"+userPassword+"</td>");
			   strUserInfo.append("      <td class='td2'>"+userEmail+"</td>");
			   strUserInfo.append("      <td class='td1'><a href='xx.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"function()\">编辑</a>"
	      	+ "<span>|</span>"+"<a href='task3-6.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"return confirm('你确定要删除该用户吗？')\">删除</a></td>");
			   strUserInfo.append("    </tr>");
		   }
		   strUserInfo.append("  </table>");
		   strUserInfo.append("</div>");
		   if(rs!=null)rs.close();
		   if(pstmt!=null)pstmt.close();
		   if(conn!=null)conn.close();
	   }
		   catch(SQLException e)
		   {
			   e.printStackTrace();
		   }
	   return strUserInfo.toString();
   }
   
   //删除指定注册用户
   public boolean deleteUserInfo(UserInfo user){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="delete from 用户表  where 用户ID=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setInt(1,user.getId());
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
   //编辑用户信息
   public String getAllUse(){
	   StringBuffer strUserInfo=new StringBuffer();
	   strUserInfo.append("<div id='info'>");
	   strUserInfo.append("  <div class='title'>用户注册信息</div>");
	   strUserInfo.append("  <table cellpadding='0' cellspacing='0'>");
	   strUserInfo.append("    <tr>");
	   strUserInfo.append("      <td class='td1' width='10%'>序号</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>用户名</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>密码</td>");
	   strUserInfo.append("      <td class='td1' width='10%'>性别</td>");
	   strUserInfo.append("      <td class='td1' width='30%'>Email邮箱</td>");
	   strUserInfo.append("      <td class='td1' width='15%'>操作按钮</td>");
	   strUserInfo.append("    </tr>");
	   try{	
		   int userId=0;
		   String userName="";
		   String userPassword="";
		   String userEmail="";
		   String userSex="";
		   int i=0;
		   dbConn=new DatabaseConn();
		   conn=dbConn.getConnection();
		   String strSql="select UserNo,UserName,UserPassword,sex,UserEmail from UserInfo";
		   pstmt=conn.prepareStatement(strSql);
		   rs=pstmt.executeQuery();
		   while(rs.next()){
			   i++;
			   userId=rs.getInt(1);;
			   userName=rs.getString(2).trim();
			   userPassword=rs.getString(3).trim();
			   userSex=rs.getString(4).trim();
			   userEmail=rs.getString(5).trim();
			   strUserInfo.append("    <tr>");
			   strUserInfo.append("      <td class='td1'>"+i+"</td>");
			   strUserInfo.append("      <td class='td1'>"+userName+"</td>");
			   strUserInfo.append("      <td class='td1'>"+userPassword+"</td>");
			   strUserInfo.append("      <td class='td1'>"+userSex+"</td>");
			   strUserInfo.append("      <td class='td2'>"+userEmail+"</td>");
			   strUserInfo.append("      <td class='td1'><a href='xx.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"function()\">编辑</a>"
	      	+ "<span>|</span>"+"<a href='task3-6.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"return confirm('你确定要删除该用户吗？')\">删除</a></td>");
			   strUserInfo.append("    </tr>");
		   }
		   strUserInfo.append("  </table>");
		   strUserInfo.append("</div>");
		   if(rs!=null)rs.close();
		   if(pstmt!=null)pstmt.close();
		   if(conn!=null)conn.close();
	   }
		   catch(SQLException e)
		   {
			   e.printStackTrace();
		   }
	   return strUserInfo.toString();
   }
   
   //删除指定注册用户
   public boolean deleteUserInf(UserInfo user){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="delete from 用户表  where 用户ID=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setInt(1,user.getId());
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
   
   //后台编辑

   public UserInfo updateAdmain(UserInfo user){
	   UserInfo newUser=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE 用户表 SET 用户名 = ?,密码 = ?,Email = ?  WHERE 用户ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,user.getName());
		   pstmt.setString(2,user.getPassword());
		   pstmt.setString(3, user.getEmail());
		   pstmt.setInt(4, user.getId());
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   System.out.println("管理员编辑用户信息成功");
			   System.out.println("密码："+user.getPassword());
			   String strSql2="select * from 用户表  where 用户ID = ?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setInt(1,user.getId());
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("后台修改用户信息记录已查到");
				   System.out.println("密码2："+rs.getString("密码"));
				   newUser=new UserInfo();
				   //对用户对象属性赋值
				   newUser.setId(rs.getInt("用户ID"));
				   newUser.setName(rs.getString("用户名"));
				   newUser.setPassword(rs.getString("密码"));
				   newUser.setEmail(rs.getString("Email"));
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
	   return newUser;
   }
   
}
