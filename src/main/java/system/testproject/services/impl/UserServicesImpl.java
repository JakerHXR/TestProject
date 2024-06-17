package system.testproject.services.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import system.testproject.entity.User;
import system.testproject.mapper.UserMapper;
import system.testproject.services.UserServices;

@Service
public class UserServicesImpl extends ServiceImpl<UserMapper, User> implements UserServices {

    UserMapper userMapper;
    @Override
    public String getRoleName(String userName, String userPwd) {
        return userMapper.getRoleName(userName, userPwd);
    }

}
