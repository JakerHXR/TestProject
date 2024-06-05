package system.testproject.entity;

public class RoleNPermission {
    private String roleNPermissionId;
    private String roleId;
    private String perId;

    public RoleNPermission() {
    }

    public RoleNPermission(String roleNPermissionId, String roleId, String perId) {
        this.roleNPermissionId = roleNPermissionId;
        this.roleId = roleId;
        this.perId = perId;
    }

    public String getRoleNPermissionId() {
        return roleNPermissionId;
    }

    public void setRoleNPermissionId(String roleNPermissionId) {
        this.roleNPermissionId = roleNPermissionId;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getPerId() {
        return perId;
    }

    public void setPerId(String perId) {
        this.perId = perId;
    }

    @Override
    public String toString() {
        return "RoleNPermission{" +
                "roleNPermissionId='" + roleNPermissionId + '\'' +
                ", roleId='" + roleId + '\'' +
                ", perId='" + perId + '\'' +
                '}';
    }
}
