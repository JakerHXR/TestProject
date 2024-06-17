package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import system.testproject.entity.Admin;
import system.testproject.entity.Teacher;

import java.util.List;

@Mapper
public interface TeacherMapper extends BaseMapper<Teacher> {
    //add
    int addTeacher(Teacher teacher);

    //delete
    @Delete("delete from teacher where teaId = #{teaId}")
    int deleteTeacherById(@Param("teaId") String teaId);

    //update
    int  updateTeacher(Teacher teacher);

    //search
    @Select("select * from teacher where teaId = #{teaId}")
    Admin getTeacherById(@Param("teaId") String teaId);

    //search for all
    @Select("select * from teacher;")
    List<Teacher> getAllTeacher();
}
