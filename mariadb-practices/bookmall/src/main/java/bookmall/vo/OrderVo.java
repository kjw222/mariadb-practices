package bookmall.vo;

public class OrderVo {
	private long no;
	private String name;
	private String email;
	private long price;
	private String address;
	private long memberNo;
	@Override
	public String toString() {
		return "OrderVo [no=" + no + ", name=" + name + ", price=" + price + ", address=" + address
				+"]";
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(long memberNo) {
		this.memberNo = memberNo;
	}

}
