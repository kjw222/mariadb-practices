package bookmall.vo;

public class CategoryVo {
	private long no;
	private String title;
	@Override
	public String toString() {
		return "CategoryVo [no=" + no + ", title=" + title + "]";
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

}
