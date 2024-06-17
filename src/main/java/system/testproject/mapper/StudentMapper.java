package system.testproject.mapper;

import org.apache.ibatis.annotations.Select;
import system.testproject.entity.User;

public interface StudentMapper {
    @Select("SELECT * FROM student WHERE userid = #{userid}")
    User findByUserId(String userid);
}
