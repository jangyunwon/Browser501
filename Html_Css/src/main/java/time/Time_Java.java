package time;

import java.util.Calendar;
//순수한 자바는 서버에서 실행
public class Time_Java {
	public static void main(String[] args) {
		
		//싱글톤:이 메소드를 실행하면 그 클래스의 모든 메소드 사용가능(객체생성)
		Calendar c =Calendar.getInstance();
		
		
		
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute = c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
		System.out.println("서버의 시간 : "+hour+"/"+minute+"/"+second);
	}
}
