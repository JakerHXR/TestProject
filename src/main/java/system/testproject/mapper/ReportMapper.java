package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import system.testproject.entity.Report;

import java.util.List;

@Mapper
public interface ReportMapper extends BaseMapper<Report> {
    @Select("select * from report where reportId = #{reportId} and stuId = #{stuId}")
    Report searchReport(@Param("reportId") String reportId, @Param("stuId") String stuId);

    @Select("select * from report where stuId = #{stuId}")
    List<Report> getAllReports(@Param("stuId") String stuId);

    int addReport(Report report);

    int updateReport(Report report);

    @Delete("delete from report where stuId = #{stuId} and reportId = #{reportId}")
    int deleteReport(@Param("stuId") String stuId,@Param("reportId") String reportId);
}
