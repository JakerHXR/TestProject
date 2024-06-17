package system.testproject.services;

import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.User;

public interface UserService extends IService<User> {
    String getRoleName(String userName,String userPwd);
}
