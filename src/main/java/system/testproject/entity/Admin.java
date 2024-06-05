package system.testproject.entity;

import jakarta.persistence.Entity;

/**
 * 管理员
 * @author Jaker
 */
public class Admin {
    private String adminId;
    private String adminName;
    private String userId;

    public Admin() {
    }

    public Admin(String adminId, String adminName, String userId) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.userId = userId;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId='" + adminId + '\'' +
                ", adminName='" + adminName + '\'' +
                '}';
    }
}
