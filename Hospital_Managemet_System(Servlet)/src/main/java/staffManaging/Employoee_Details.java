package staffManaging;

public class Employoee_Details {
    private int id;
    private String full_name;
    private String role;
    private String department;
    private String contact;
    private String shift;
    private String payement_status;
    private String date_of_joining;
 
    
	public Employoee_Details() {}
    
    public Employoee_Details(int id, String full_name, String role, String department, String contact, String shift,
			String payement_status, String date_of_joining) {
		super();
		this.id = id;
		this.full_name = full_name;
		this.role = role;
		this.department = department;
		this.contact = contact;
		this.shift = shift;
		this.payement_status = payement_status;
		this.date_of_joining = date_of_joining;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getShift() {
		return shift;
	}

	public void setShift(String shift) {
		this.shift = shift;
	}

	public String getPayement_status() {
		return payement_status;
	}

	public void setPayement_status(String payement_status) {
		this.payement_status = payement_status;
	}

	public String getDate_of_joining() {
		return date_of_joining;
	}

	public void setDate_of_joining(String date_of_joining) {
		this.date_of_joining = date_of_joining;
	}

   
}
