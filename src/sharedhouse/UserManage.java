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
  
   //ָ���û���¼
   public UserInfo userLogin(String name,String password){
	   UserInfo loginUser=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="select �û�ID,�û���,����,Email,�û�����  from �û���  where �û���=? and ����=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   pstmt.setString(2,password);		   
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   //ʵ����һ���û�����
			   loginUser=new UserInfo();
			   //���û��������Ը�ֵ
			   loginUser.setId(rs.getInt("�û�ID"));
			   loginUser.setName(rs.getString("�û���"));
			   loginUser.setPassword(rs.getString("����"));
			   loginUser.setEmail(rs.getString("Email"));
			   loginUser.setPurview(rs.getString("�û�����"));
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
	   return loginUser;
   }
   
   //��ѯָ��ע���û��Ƿ����
   public boolean getUser(String name){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="select �û��� from �û���  where �û���=?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   result=true;
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
	   return result;
   }   
   //�޸��û���

   public UserInfo updateName(String name,int id){
	   UserInfo newUser1=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE �û��� SET �û��� = ?  WHERE �û�ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,name);
		   pstmt.setInt(2,id);	
		   /*pstmt.setString(1,newUser.getName());
		   pstmt.setInt(2,newUser.getId());*/
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   String strSql2="select * from �û���  where �û���=?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setString(1,name);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   newUser1=new UserInfo();
				   //���û��������Ը�ֵ
				   newUser1.setId(rs.getInt("�û�ID"));
				   newUser1.setName(rs.getString("�û���"));
				   newUser1.setPassword(rs.getString("����"));
				   newUser1.setEmail(rs.getString("Email"));
				   newUser1.setPurview(rs.getString("�û�����"));
			   }
		   }
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
	   return newUser1;
   }
   //�޸��û���

   public UserInfo updateEmail(String email,int id){
	   UserInfo newUser1=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE �û��� SET Email = ?  WHERE �û�ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,email);
		   pstmt.setInt(2,id);	
		   /*pstmt.setString(1,newUser.getName());
		   pstmt.setInt(2,newUser.getId());*/
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   System.out.println("email�޸ĳɹ�");
			   String strSql2="select * from �û���  where Email=?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setString(1,email);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("email�޸ļ�¼�鵽");
				   newUser1=new UserInfo();
				   //���û��������Ը�ֵ
				   newUser1.setId(rs.getInt("�û�ID"));
				   newUser1.setName(rs.getString("�û���"));
				   newUser1.setPassword(rs.getString("����"));
				   newUser1.setEmail(rs.getString("Email"));
				   newUser1.setPurview(rs.getString("�û�����"));
			   }
		   }
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
	   return newUser1;
   }
 //���û�������û���ע����Ϣ
   public boolean insertUser(UserInfo newUser){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="insert into �û���(�û���,����,Email) values(?,?,?)";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,newUser.getName());
		   pstmt.setString(2,newUser.getPassword());		
		   pstmt.setString(3,newUser.getEmail());	
		   int i=pstmt.executeUpdate();
		   if(i>0){
			   result=true;
		   }
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
	   return result;
   }
   
 //�޸��û�����
   public boolean updatePassword(UserInfo loginUser){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="update �û��� set ����=? where �û���=?";
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
   
   //��ȡ�����û���ע����Ϣ
   public String getAllUser(){
	   StringBuffer strUserInfo=new StringBuffer();
	   strUserInfo.append("<div id='info'>");
	   strUserInfo.append("  <div class='title'>�û�ע����Ϣ</div>");
	   strUserInfo.append("  <table cellpadding='0' cellspacing='0'>");
	   strUserInfo.append("    <tr>");
	   strUserInfo.append("      <td class='td1' width='10%'>���</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>�û���</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>����</td>");
	   strUserInfo.append("      <td class='td1' width='30%'>Email����</td>");
	   strUserInfo.append("      <td class='td1' width='15%'>������ť</td>");
	   strUserInfo.append("    </tr>");
	   try{	
		   int userId=0;
		   String userName="";
		   String userPassword="";
		   String userEmail="";
		   int i=0;
		   dbConn=new DatabaseConn();
		   conn=dbConn.getConnection();
		   String strSql="select �û�ID,�û���,����,Email from �û���";
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
	      	+ "onClick=\"function()\">�༭</a>"
	      	+ "<span>|</span>"+"<a href='task3-6.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"return confirm('��ȷ��Ҫɾ�����û���')\">ɾ��</a></td>");
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
   
   //ɾ��ָ��ע���û�
   public boolean deleteUserInfo(UserInfo user){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="delete from �û���  where �û�ID=?";
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
   //�༭�û���Ϣ
   public String getAllUse(){
	   StringBuffer strUserInfo=new StringBuffer();
	   strUserInfo.append("<div id='info'>");
	   strUserInfo.append("  <div class='title'>�û�ע����Ϣ</div>");
	   strUserInfo.append("  <table cellpadding='0' cellspacing='0'>");
	   strUserInfo.append("    <tr>");
	   strUserInfo.append("      <td class='td1' width='10%'>���</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>�û���</td>");
	   strUserInfo.append("      <td class='td1' width='20%'>����</td>");
	   strUserInfo.append("      <td class='td1' width='10%'>�Ա�</td>");
	   strUserInfo.append("      <td class='td1' width='30%'>Email����</td>");
	   strUserInfo.append("      <td class='td1' width='15%'>������ť</td>");
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
	      	+ "onClick=\"function()\">�༭</a>"
	      	+ "<span>|</span>"+"<a href='task3-6.jsp"
                        	+ "?para=deleteUser&id="+userId+"'"
	      	+ "onClick=\"return confirm('��ȷ��Ҫɾ�����û���')\">ɾ��</a></td>");
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
   
   //ɾ��ָ��ע���û�
   public boolean deleteUserInf(UserInfo user){
	   boolean result=false;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="delete from �û���  where �û�ID=?";
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
   
   //��̨�༭

   public UserInfo updateAdmain(UserInfo user){
	   UserInfo newUser=null;
	   dbConn=new DatabaseConn();
	   try{		   
		   conn=dbConn.getConnection();
		   String strSql="UPDATE �û��� SET �û��� = ?,���� = ?,Email = ?  WHERE �û�ID = ?";
		   pstmt=conn.prepareStatement(strSql);
		   pstmt.setString(1,user.getName());
		   pstmt.setString(2,user.getPassword());
		   pstmt.setString(3, user.getEmail());
		   pstmt.setInt(4, user.getId());
		   int i = pstmt.executeUpdate();
		   if(i>0){
			   System.out.println("����Ա�༭�û���Ϣ�ɹ�");
			   System.out.println("���룺"+user.getPassword());
			   String strSql2="select * from �û���  where �û�ID = ?";
			   pstmt=conn.prepareStatement(strSql2);
			   pstmt.setInt(1,user.getId());
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   System.out.println("��̨�޸��û���Ϣ��¼�Ѳ鵽");
				   System.out.println("����2��"+rs.getString("����"));
				   newUser=new UserInfo();
				   //���û��������Ը�ֵ
				   newUser.setId(rs.getInt("�û�ID"));
				   newUser.setName(rs.getString("�û���"));
				   newUser.setPassword(rs.getString("����"));
				   newUser.setEmail(rs.getString("Email"));
			   }
		   }
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
	   return newUser;
   }
   
}
