package pr.user.model;

public class UserDto {
	
	//멤버변수
	private String userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userPhone;
	
	//생성자
	public UserDto() {
		
	}
	
	public UserDto(String userId, String userPassword, String userName, String userEmail, String userPhone) {
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail  = userEmail;
		this.userPhone = userPhone;
	}
	
	//getter , setter
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	
}
