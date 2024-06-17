package system.testproject.controller;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import system.testproject.entity.Report;
import system.testproject.services.impl.ReportServicesImpl;

import java.util.List;

@Controller
@RequestMapping("/test")
public class ReportController {
    @Autowired
    ReportServicesImpl reportServices;

    @GetMapping("/{stuId}")
    public List<Report> getAllReport(@PathVariable("stuId") String stuId){
        return reportServices.getAllReport(stuId);
    }

    @GetMapping("/{stuId}&{reportId}")
    public Report searchOneReport(@PathVariable("stuId") String stuId, @PathVariable("reportId") String reportId){
        return reportServices.searchOneReport(stuId, reportId);
    }

    @PostMapping
    public int addReport(Report report){
        return reportServices.addReport(report);
    }

    @PutMapping
    public int updateReport(Report report){
        return reportServices.updateReport(report);
    }

    @DeleteMapping
    public int deleteReport(String stuId, String reportId){
        return reportServices.removeReport(stuId, reportId);
    }
}
