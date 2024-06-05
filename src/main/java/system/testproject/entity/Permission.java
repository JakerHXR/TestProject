package system.testproject.entity;

public class Permission {
    private String perId;
    private String perName;
    private String perAction;

    public Permission(String perId, String perName, String perAction) {
        this.perId = perId;
        this.perName = perName;
        this.perAction = perAction;
    }

    public Permission() {
    }

    public String getPerId() {
        return perId;
    }

    public void setPerId(String perId) {
        this.perId = perId;
    }

    public String getPerName() {
        return perName;
    }

    public void setPerName(String perName) {
        this.perName = perName;
    }

    public String getPerAction() {
        return perAction;
    }

    public void setPerAction(String perAction) {
        this.perAction = perAction;
    }

    @Override
    public String toString() {
        return "Permission{" +
                "perId='" + perId + '\'' +
                ", perName='" + perName + '\'' +
                ", perAction='" + perAction + '\'' +
                '}';
    }
}
