package system.testproject.services.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.testproject.entity.Report;
import system.testproject.mapper.ReportMapper;
import system.testproject.services.ReportServices;

import java.util.List;

@Service
public class ReportServicesImpl extends ServiceImpl<ReportMapper,Report> implements ReportServices {
    @Autowired
    ReportMapper reportMapper;

    //search one report
    @Override
    public Report searchOneReport(String reportId, String stuId) {
        return reportMapper.searchReport(reportId, stuId);
    }

    //get all reports
    @Override
    public List<Report> getAllReport(String stuId) {
        return reportMapper.getAllReports(stuId);
    }

    //add a new report
    @Override
    public int addReport(Report report) {
        return reportMapper.addReport(report);
    }

    //update a report
    @Override
    public int updateReport(Report report) {
        return reportMapper.updateReport(report);
    }

    @Override
    public int removeReport(String stuId, String reportId) {
        return reportMapper.deleteReport(stuId,reportId);
    }
}
