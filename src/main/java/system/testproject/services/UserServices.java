package system.testproject.services;

import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.User;

public interface UserServices extends IService<User> {
    String getRoleName(String userName,String userPwd);
}
