package bookmall.vo;

public class OrderbookVo {
	private long bookNo;
	private long orderNo;
	private long amount;
	@Override
	public String toString() {
		return "OrderbookVo [bookNo=" + bookNo + ", oderNo=" + orderNo + ", amount=" + amount + "]";
	}
	public long getBookNo() {
		return bookNo;
	}
	public void setBookNo(long bookNo) {
		this.bookNo = bookNo;
	}
	public long getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(long oderNo) {
		this.orderNo = oderNo;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}

}
