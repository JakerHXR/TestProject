package system.testproject.services.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.testproject.entity.Admin;
import system.testproject.mapper.AdminMapper;
import system.testproject.services.AdminServices;

import java.util.List;

@Service
public class AdminServicesImpl extends ServiceImpl<AdminMapper, Admin> implements AdminServices {
    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin getAdminByUserId(String userId) {
        return adminMapper.getAdminByUserId(userId);
    }

    @Override
    public List<Admin> getAdmin() {
        return adminMapper.getAllAdmin();
    }

    @Override
    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    @Override
    public int deleteAdmin(String adminId) {
        return adminMapper.deleteAdminById(adminId);
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }
}
