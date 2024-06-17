package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import system.testproject.entity.User;
import system.testproject.entity.UserNRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper extends BaseMapper<User> {
    @Select("SELECT * FROM user WHERE userid = #{userid}")
    User findByUserId(@Param("userid") String userid);

    String getRoleName(String userName, String userPwd);
}
