package system.testproject.entity;

public class Teacher {
    private String teaId;
    private String teaName;
    private String teaPhone;
    private String teaAddress;

    public Teacher() {
    }

    public Teacher(String teaId, String teaName, String teaPhone, String teaAddress) {
        this.teaId = teaId;
        this.teaName = teaName;
        this.teaPhone = teaPhone;
        this.teaAddress = teaAddress;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTeaPhone() {
        return teaPhone;
    }

    public void setTeaPhone(String teaPhone) {
        this.teaPhone = teaPhone;
    }

    public String getTeaAddress() {
        return teaAddress;
    }

    public void setTeaAddress(String teaAddress) {
        this.teaAddress = teaAddress;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teaId='" + teaId + '\'' +
                ", teaName='" + teaName + '\'' +
                ", teaPhone='" + teaPhone + '\'' +
                ", teaAddress='" + teaAddress + '\'' +
                '}';
    }
}
