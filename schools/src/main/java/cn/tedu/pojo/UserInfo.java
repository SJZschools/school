package cn.tedu.pojo;

import java.util.Date;

public class UserInfo {
	private String id;//和User表id关联
	private String name;
	private String sex;
	private String email;
	private String address;
	private Date timeofEnrollment;//入学时间
	private Date birthday;
	private String classes;//年级
	private String tel;
	private Integer age;
	private Integer sf;//权限：0代表超管，1代表老师，2代表学生
	private String headAddress;//头像地址
	private String personalRemarks;//个人描述
	private String qq;//qq号
	private String blood;//血型
	private String job;
	private String homeplace;//出生地
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getTimeofEnrollment() {
		return timeofEnrollment;
	}
	public void setTimeofEnrollment(Date timeofEnrollment) {
		this.timeofEnrollment = timeofEnrollment;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getSf() {
		return sf;
	}
	public void setSf(Integer sf) {
		this.sf = sf;
	}
	public String getHeadAddress() {
		return headAddress;
	}
	public void setHeadAddress(String headAddress) {
		this.headAddress = headAddress;
	}
	public String getPersonalRemarks() {
		return personalRemarks;
	}
	public void setPersonalRemarks(String personalRemarks) {
		this.personalRemarks = personalRemarks;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getHomeplace() {
		return homeplace;
	}
	public void setHomeplace(String homeplace) {
		this.homeplace = homeplace;
	}
	
}
