package system.testproject.entity;

public class AdminToStu {
    private String adminId;
    private String stuId;

    public AdminToStu() {
    }

    public AdminToStu(String adminId, String stuId) {
        this.adminId = adminId;
        this.stuId = stuId;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    @Override
    public String toString() {
        return "AdminToStu{" +
                "adminId='" + adminId + '\'' +
                ", stuId='" + stuId + '\'' +
                '}';
    }
}
