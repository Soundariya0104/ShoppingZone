   package com.niit.model;

	import java.io.Serializable;

	import javax.persistence.Column;
	import javax.persistence.Entity;
    import javax.persistence.GeneratedValue;
    import javax.persistence.GenerationType;
    import javax.persistence.Id;
	import javax.persistence.Table;
    import javax.validation.constraints.Max;
    import javax.validation.constraints.Min;
    import javax.validation.constraints.Size;

	import org.hibernate.validator.constraints.NotEmpty;
	@Entity
	@Table(name = "USER")
	public class User implements Serializable {

		@Id
		@Column(name = "username")
		private String username;

		@NotEmpty
		@Column(name = "emailid")
		private String emailId;
		
		@NotEmpty
		@Column(name = "password")
		private String password;
		
		@Column(name = "dob")
		private String dob;
		
		@Column(name = "mobile")
		private String mobile;
		
		@Column(name = "streetname")
		private String streetname;
		
		@Column(name = "cityname")
		private String cityname;
		
		@Column(name = "pincode")
		private String pinCode;
		
		@Column(name="role")
		private String role="ROLE_USER";

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getEmailId() {
			return emailId;
		}

		public void setEmailId(String emailid) {
			this.emailId = emailid;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getDob() {
			return dob;
		}

		public void setDob(String dob) {
			this.dob = dob;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getStreetname() {
			return streetname;
		}

		public void setStreetname(String streetname) {
			this.streetname = streetname;
		}

		public String getCityname() {
			return cityname;
		}

		public void setCityname(String cityname) {
			this.cityname = cityname;
		}

		public String getPinCode() {
			return pinCode;
		}

		public void setPinCode(String pinCode) {
			this.pinCode = pinCode;
		
	    }
		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}
	}
		
	