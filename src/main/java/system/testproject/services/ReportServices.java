package system.testproject.services;

import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.Report;

import java.util.List;

public interface ReportServices extends IService<Report> {
    Report searchOneReport(String reportId, String stuId);

    List<Report> getAllReport(String stuId);

    //add a new report
    int addReport(Report report);

    //update a report
    int updateReport(Report report);

    int removeReport(String stuId, String reportId);
}
