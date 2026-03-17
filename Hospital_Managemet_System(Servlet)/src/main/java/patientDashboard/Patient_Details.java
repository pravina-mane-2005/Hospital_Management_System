package patientDashboard;

public class Patient_Details {
    private int id;
    private String fullName;
    private String dateOfBirth;
    private String address;
    private String disease;
    private int totalBill;

    public Patient_Details() {}

    public Patient_Details(int id, String fullName, String dateOfBirth, String address, String disease, int totalBill) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.disease = disease;
        this.totalBill = totalBill;
    }

    public int getId() {
    	return id; 
    }
    
    public void setId(int id) { 
    	this.id = id;
    }

    public String getFullName() {
    	return fullName; 
    }
    
    public void setFullName(String fullName) {
    	this.fullName = fullName;
    }

    public String getDateOfBirth() {
    	return dateOfBirth; 
    }
    
    public void setDateOfBirth(String dateOfBirth) {
    	this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
    	return address; 
    }
    
    public void setAddress(String address) {
    	this.address = address;
    }

    public String getDisease() {
    	return disease; 
    }
    
    public void setDisease(String disease) {
    	this.disease = disease; 
    }

    public int getTotalBill() { 
    	return totalBill; 
    }
    
    public void setTotalBill(int totalBill) {
    	this.totalBill = totalBill; 
    }
}
