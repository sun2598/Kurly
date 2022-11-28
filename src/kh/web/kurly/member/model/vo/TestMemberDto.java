package kh.web.kurly.member.model.vo;

public class TestMemberDto {
	
//	ID     NOT NULL VARCHAR2(100) 
//	PASSWD          VARCHAR2(100) 
//	NAME            VARCHAR2(100) 
//	EMAIL           VARCHAR2(200) 

	// 필드선언
	private String id;
	private String passwd;
	private String name;
	private String email;
	
	// 생성자
	public TestMemberDto() {
		super();
	}
	public TestMemberDto(String id, String passwd, String name, String email) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
	}


	// toString
	@Override
	public String toString() {
		return "TestMemberDto [id=" + id + ", passwd=" + passwd + ", name=" + name + ", email=" + email + "]";
	}
	
	// 게터세터
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
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

}
