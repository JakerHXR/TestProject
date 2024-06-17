package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.*;
import system.testproject.entity.Admin;

import java.util.List;

@Mapper
public interface AdminMapper extends BaseMapper<Admin> {
    //add
    int addAdmin(Admin admin);

    //delete
    @Delete("delete from admin where adminId = #{adminId}")
    int deleteAdminById(@Param("adminId") String adminId);

    //update
    int updateAdmin(Admin admin);

    //search
    @Select("select * from admin where userId = #{userId}")
    Admin getAdminByUserId(@Param("userId") String userId);

    //search for all
    @Select("select * from admin;")
    List<Admin> getAllAdmin();
}
