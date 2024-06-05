package system.testproject.entity;

public class Report {
    private  String stuId;
    private String teaId;
    private String testId;
    private String reportId;
    private String reportGrade;
    private String reportContent;
    private String reportErrors;

    public Report() {
    }

    public Report(String stuId, String teaId, String testId, String reportId, String reportGrade, String reportContent, String reportErrors) {
        this.stuId = stuId;
        this.teaId = teaId;
        this.testId = testId;
        this.reportId = reportId;
        this.reportGrade = reportGrade;
        this.reportContent = reportContent;
        this.reportErrors = reportErrors;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
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

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId;
    }

    public String getReportGrade() {
        return reportGrade;
    }

    public void setReportGrade(String reportGrade) {
        this.reportGrade = reportGrade;
    }

    public String getReportContent() {
        return reportContent;
    }

    public void setReportContent(String reportContent) {
        this.reportContent = reportContent;
    }

    public String getReportErrors() {
        return reportErrors;
    }

    public void setReportErrors(String reportErrors) {
        this.reportErrors = reportErrors;
    }

    @Override
    public String toString() {
        return "Report{" +
                "stuId='" + stuId + '\'' +
                ", teaId='" + teaId + '\'' +
                ", testId='" + testId + '\'' +
                ", reportId='" + reportId + '\'' +
                ", reportGrade='" + reportGrade + '\'' +
                ", reportContent='" + reportContent + '\'' +
                ", reportErrors='" + reportErrors + '\'' +
                '}';
    }
}
