package mvc.model;

public class User {
	private Integer id;
	private String username;
	private String password;
	private String passwordCheck;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordCheck() {
		return this.passwordCheck;
	}

	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}

	public boolean isUserValidLogin() {
		if (!this.password.isEmpty() && !this.username.isEmpty()) {
			return true;
		}
		return false;
	}

	public boolean isUserValidAdd() {
		if (!this.password.isEmpty() && !this.username.isEmpty() && this.password.equals(this.passwordCheck)) {
			return true;

		}
		return false;
	}

	public boolean samePassword() {
		if (this.password.equals(this.passwordCheck)) {
			return true;
		}
		return false;
	}
}
