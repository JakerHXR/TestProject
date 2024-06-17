package system.testproject.mapper;

import org.apache.ibatis.annotations.Select;
import system.testproject.entity.UserNRole;

public interface UserNRoleMapper {
    @Select("SELECT * FROM usernrole WHERE userid = #{userid}")
    UserNRole findRoleByUserId(String userid);
}
