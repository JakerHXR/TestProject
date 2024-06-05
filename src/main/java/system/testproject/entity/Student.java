package system.testproject.entity;

/**
 * 学生表
 * @author Jaker
 */
public class Student {
    private String stuId;
    private String stuName;
    private String stuPhone;
    private String stuAddress;
    private String userId;

    public Student() {
    }

    public Student(String stuId, String stuName, String stuPhone, String stuAddress, String userId) {
        this.stuId = stuId;
        this.stuName = stuName;
        this.stuPhone = stuPhone;
        this.stuAddress = stuAddress;
        this.userId = userId;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(String stuPhone) {
        this.stuPhone = stuPhone;
    }

    public String getStuAddress() {
        return stuAddress;
    }

    public void setStuAddress(String stuAddress) {
        this.stuAddress = stuAddress;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuId='" + stuId + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuPhone='" + stuPhone + '\'' +
                ", stuAddress='" + stuAddress + '\'' +
                '}';
    }
}
