package sharedhouse;

public class FyInfo {
	private int hId;
	  private String city;
	  private String hName ;
	  private String address;
	  private int price;
	  private String harea;
	  private int hsize;
	  private String hired;
	  
	  public FyInfo(){
		  //定义一个不带参数构造方法
	  }  
	  
  public int gethId() {
		return hId;
	}

	public void sethId(int hId) {
		this.hId = hId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getHarea() {
		return harea;
	}

	public void setHarea(String harea) {
		this.harea = harea;
	}

	public int getHsize() {
		return hsize;
	}

	public void setHsize(int hsize) {
		this.hsize = hsize;
	}

	public String getHired() {
		return hired;
	}

	public void setHired(String hired) {
		this.hired = hired;
	}


}
