package system.testproject.services;

import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.Test;

public interface TestServices extends IService<Test> {
    //create a new test
    int AddTest(Test test);

    //update the test information
    int UpdateTest(Test test);
}
