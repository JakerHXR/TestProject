package system.testproject.services;

import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.Admin;

import java.util.List;

public interface AdminServices extends IService<Admin> {
    List<Admin> getAdmin();

    Admin getAdminByUserId(String userId);

    int deleteAdmin(String adminId);

    int updateAdmin(Admin admin);

    int addAdmin(Admin admin);
}
