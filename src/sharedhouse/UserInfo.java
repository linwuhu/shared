package sharedhouse;

public class UserInfo {
  private int userId;
  private String userName;
  private String userPassword ;
  private String userEmail;
  private String userPurview;
  
  public UserInfo(){
	  //����һ�������������췽��
  }
  
  public int getId(){
	  return userId;
  }
  public void setId(int id){
	  this.userId=id;
  }
  
  public String getName(){
	  return userName;
  }
  public void setName(String name){
	  this.userName=name;
  } 
  
  public String getPassword(){
	  return userPassword;
  }
  public void setPassword(String password){
	  this.userPassword=password;
  }  
  
  public String getEmail(){
	  return userEmail;
  }
  public void setEmail(String email){
	  this.userEmail=email;
  }  
  
  public String getPurview(){
	  return userPurview;
  }
  public void setPurview(String purview){
	  this.userPurview=purview;
  }   
}
