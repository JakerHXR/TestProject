package system.testproject.entity;

public class UserNRole {
    private String userId;
    private String roleId;
    private String UserNRoleId;

    public UserNRole() {
    }

    public UserNRole(String userId, String roleId, String userNRoleId) {
        this.userId = userId;
        this.roleId = roleId;
        UserNRoleId = userNRoleId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getUserNRoleId() {
        return UserNRoleId;
    }

    public void setUserNRoleId(String userNRoleId) {
        UserNRoleId = userNRoleId;
    }

    @Override
    public String toString() {
        return "UserNRole{" +
                "userId='" + userId + '\'' +
                ", roleId='" + roleId + '\'' +
                ", UserNRoleId='" + UserNRoleId + '\'' +
                '}';
    }
}
