package bookmall.vo;

public class BookVo {
	private long bookNo;
	private String name;
	private long price;
	private long categoryNo;
	private String categoryTitle;
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	@Override
	public String toString() {
		return "BookVo [bookNo=" + bookNo + ", name=" + name + ", price=" + price + ", categoryNo=" + categoryNo
				+ ", categoryTitle=" + categoryTitle + "]";
	}
	public long getBookNo() {
		return bookNo;
	}
	public void setBookNo(long bookNo) {
		this.bookNo = bookNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public long getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(long categoryNo) {
		this.categoryNo = categoryNo;
	}

}
