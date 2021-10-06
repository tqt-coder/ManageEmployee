package controller;

public class Employee {
	private String nameEmployee;
	private String gender;
	private String dateOfBirthday;
	private String department;
	
	
	public String getNameEmployee() {
		return nameEmployee;
	}
	public void setNameEmployee(String nameEmployee) {
		this.nameEmployee = nameEmployee;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateOfBirthday() {
		return dateOfBirthday;
	}
	public void setDateOfBirthday(String dateOfBirthday) {
		this.dateOfBirthday = dateOfBirthday;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public Employee( String nameEmployee, String gender, String dateOfBirthday, String department) {

		this.nameEmployee = nameEmployee;
		this.gender = gender;
		this.dateOfBirthday = dateOfBirthday;
		this.department = department;
	}
	public Employee() {
		super();
		
	}
	
	
}
