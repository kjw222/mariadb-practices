package hr;

import java.util.List;
import java.util.Scanner;

public class HRMin02 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("salary[min max]>");
		int minSalary = scanner.nextInt();
		int maxSalary = scanner.nextInt();
		
		EmployeeDao dao = new EmployeeDao();
		List<EmployeeVo> result = dao.findBySalary(minSalary, maxSalary);
		
		for(EmployeeVo vo : result) {
			System.out.println(vo.getNo() + ":" + vo.getFirstName() + ":" + vo.getLastName() + ":" + vo.getSalary());
		}
		
		scanner.close();
	}
	
}
