package system.testproject.entity;

public class TestToQuestion {
    private String teaId;
    private String testId;
    private String queId;

    public TestToQuestion() {
    }

    public TestToQuestion(String teaId, String testId, String queId) {
        this.teaId = teaId;
        this.testId = testId;
        this.queId = queId;
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

    public String getQueId() {
        return queId;
    }

    public void setQueId(String queId) {
        this.queId = queId;
    }

    @Override
    public String toString() {
        return "TestToQuestion{" +
                "teaId='" + teaId + '\'' +
                ", testId='" + testId + '\'' +
                ", queId='" + queId + '\'' +
                '}';
    }
}
