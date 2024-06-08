package system.testproject.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

/**
 * 测评实体
 * @author Jaker
 */
@Data
public class Test {
    private String teaId;
    @TableId
    private String testId;
    private String testName;
    private String testStarttime;
    private String testEndtime;
    private String testScope;
    private String testContent;
    private String testExtra;

    public Test() {
    }

    public Test(String teaId, String testId, String testName, String testStarttime, String testEndtime, String testScope, String testContent, String testExtra) {
        this.teaId = teaId;
        this.testId = testId;
        this.testName = testName;
        this.testStarttime = testStarttime;
        this.testEndtime = testEndtime;
        this.testScope = testScope;
        this.testContent = testContent;
        this.testExtra = testExtra;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId;
    }

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestStarttime() {
        return testStarttime;
    }

    public void setTestStarttime(String testStarttime) {
        this.testStarttime = testStarttime;
    }

    public String getTestEndtime() {
        return testEndtime;
    }

    public void setTestEndtime(String testEndtime) {
        this.testEndtime = testEndtime;
    }

    public String getTestScope() {
        return testScope;
    }

    public void setTestScope(String testScope) {
        this.testScope = testScope;
    }

    public String getTestContent() {
        return testContent;
    }

    public void setTestContent(String testContent) {
        this.testContent = testContent;
    }

    public String getTestExtra() {
        return testExtra;
    }

    public void setTestExtra(String testExtra) {
        this.testExtra = testExtra;
    }

    @Override
    public String toString() {
        return "Test{" +
                "teaId='" + teaId + '\'' +
                ", testId='" + testId + '\'' +
                ", testName='" + testName + '\'' +
                ", testStarttime='" + testStarttime + '\'' +
                ", testEndtime='" + testEndtime + '\'' +
                ", testScope='" + testScope + '\'' +
                ", testContent='" + testContent + '\'' +
                ", testExtra='" + testExtra + '\'' +
                '}';
    }
}
