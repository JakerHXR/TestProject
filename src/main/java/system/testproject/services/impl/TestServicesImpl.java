package system.testproject.services.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.testproject.entity.Test;
import system.testproject.mapper.TestMapper;
import system.testproject.services.TestServices;

import java.util.List;

@Service
public class TestServicesImpl extends ServiceImpl<TestMapper, Test> implements TestServices {
    @Autowired
    TestMapper testMapper;

    //get all tests
    public List<Test> getAll() {
        return testMapper.getAllTests();
    }

    //get one test
    public Test getOneTest(String testId,String teaId){
        return testMapper.getOneTestById(testId,teaId);
    }

    //add a new test
    @Override
    public int AddTest(Test test) {
        return testMapper.addTest(test);
    }

    //update a test
    @Override
    public int UpdateTest(Test test) {
        return testMapper.updateTest(test);
    }

    //remove a test
    public int removeTest(String testId, String teaId) {
        return testMapper.deleteTestById(testId, teaId);
    }
}
