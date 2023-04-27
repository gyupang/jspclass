package common; // 기본 패키지 이외의 패키지(규약 1번)

//Person DTO 만들기
public class Person {
	private String name; // private 멤버 변수(규약 2번)
	private int age; // private 멤버 변수(규약 2번)

	public Person() { // 기본 생성자(규약 3번)

	}

// 소스 - 필드를 사용하여 생성자 만들기 생성
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

// 소스 -게터 세터 만들기
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
