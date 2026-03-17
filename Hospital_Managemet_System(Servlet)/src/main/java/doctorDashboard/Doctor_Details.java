package doctorDashboard;

public class Doctor_Details {
    private int id;
    private String name;
    private String status;
    private String specialization;
    private String phone_number;
    
    public Doctor_Details() {}

    public Doctor_Details(int id, String name, String status, String specialization, String phone_number) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.specialization = specialization;
        this.phone_number = phone_number;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }
}
