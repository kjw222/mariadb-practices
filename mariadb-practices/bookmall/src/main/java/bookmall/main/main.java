package bookmall.main;

import java.util.List;
import java.util.Scanner;

import bookmall.dao.BookDao;
import bookmall.dao.CartDao;
import bookmall.dao.CategoryDao;
import bookmall.dao.MemberDao;
import bookmall.dao.OrderDao;
import bookmall.dao.OrderbookDao;
import bookmall.vo.BookVo;
import bookmall.vo.CartVo;
import bookmall.vo.CategoryVo;
import bookmall.vo.MemberVo;
import bookmall.vo.OrderVo;
import bookmall.vo.OrderbookVo;

public class main {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);

		BookVo bookvo = new BookVo();

		
		
		
		

		CategoryInsert();
		List<CategoryVo> categorylist = new CategoryDao().select();

		System.out.println("**도서 카테고리**");
		for (CategoryVo vo : categorylist) {
			System.out.println(vo);
		}

		MemberInsert("aa", "111-1111-1111", "aa@gmail.com", "1234");
		MemberInsert("bb", "222-2222-2222", "bb@gmail.com", "1234");
	

		List<MemberVo> memberlist = new MemberDao().select();
		System.out.println("**멤버 리스트**");
		for (MemberVo vo : memberlist) {
			System.out.println(vo);
		}

		BookInsert("지구 끝의 온실", 13500, 2);
		BookInsert("밝은 밤", 13050, 2);
		BookInsert("달러구트 꿈 백화점", 12420, 1);
		
		List<BookVo> booklist = new BookDao().select();
		System.out.println("**도서 리스트**");
		for (BookVo vo : booklist) {
			System.out.println(vo);
		}
		
		OrderInsert("aa", "aa@gmail.com", 43920, "aa시 aa구", 1);
		OrderInsert("bb", "bb@gmail.com", 31320, "bb시 bb구", 2);
		List<OrderVo> orderlist = new OrderDao().select();
		System.out.println("**주문 리스트**");
		for (OrderVo vo : orderlist) {
			System.out.println(vo);
		}
		CartInsert("밝은 밤", 2, 13050, 1, 2);
		CartInsert("지구 끝의 온실", 3, 13500, 1, 1);
		
		List<CartVo> cartlist = new CartDao().select();
		System.out.println("**장바구니 리스트**");
		for (CartVo vo : cartlist) {
			System.out.println(vo);
		}
		
		OrderBookInsert(1, 1 ,3);
		OrderBookInsert(2, 2 ,2);
		List<OrderbookVo> orderbooklist = new OrderbookDao().select();
		System.out.println("**주문도서 리스트**");
		for (OrderbookVo vo : orderbooklist) {
			System.out.println(vo);
		}



	}

	private static void OrderBookInsert(long bookNo, long orderNo, long amount) {
		OrderbookVo vo = new OrderbookVo();
		vo.setBookNo(bookNo);
		vo.setOrderNo(orderNo);
		vo.setAmount(amount);
		new OrderbookDao().insert(vo);
		
	}

	private static void CartInsert(String title, long amount, long price, long memberNo, long bookNo) {
		CartVo vo = new CartVo();
		vo.setTitle(title);
		vo.setAmount(amount);
		vo.setPrice(price);
		vo.setMemberNo(memberNo);
		vo.setBookNo(bookNo);
		new CartDao().insert(vo);
		
	}

	private static void OrderInsert(String name, String email, long price, String address, long memberNo) {
		OrderVo vo = new OrderVo();
		vo.setName(name);
		vo.setEmail(email);
		vo.setPrice(price);
		vo.setAddress(address);
		vo.setMemberNo(memberNo);
		new OrderDao().insert(vo);
		
	}

	private static void BookInsert(String name, long price, long categoryNo) {
		BookVo vo = new BookVo();
		vo.setName(name);
		vo.setPrice(price);
		vo.setCategoryNo(categoryNo);
		new BookDao().insert(vo);
		
	}

	private static void MemberInsert(String name, String phone, String email, String password) {
		MemberVo addVo = new MemberVo();
		addVo.setName(name);
		addVo.setPhone(phone);
		addVo.setEmail(email);
		addVo.setPassword(password);
		new MemberDao().insert(addVo);
		
	}

	private static void CategoryInsert() {
		CategoryVo addVo = new CategoryVo();
		addVo.setTitle("수필");
		new CategoryDao().insert(addVo);
		addVo.setTitle("소설");
		new CategoryDao().insert(addVo);
		addVo.setTitle("경제");
		new CategoryDao().insert(addVo);
		
	}

	
}
