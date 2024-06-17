package system.testproject.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import system.testproject.entity.Student;
import system.testproject.entity.User;

public interface StudentMapper {
    @Select("SELECT * FROM student WHERE userid = #{userid}")
    Student findByUserId(String userid);

    int addStudent(Student student);

    int updateStudent(Student student);

    int removeStudent(String userId);
}
