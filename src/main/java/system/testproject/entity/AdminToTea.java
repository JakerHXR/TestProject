package system.testproject.entity;

public class AdminToTea {
    private String adminId;
    private String teaId;

    public AdminToTea(String adminId, String teaId) {
        this.adminId = adminId;
        this.teaId = teaId;
    }

    public AdminToTea() {
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId;
    }

    @Override
    public String toString() {
        return "AdminToTea{" +
                "adminId='" + adminId + '\'' +
                ", teaId='" + teaId + '\'' +
                '}';
    }
}
