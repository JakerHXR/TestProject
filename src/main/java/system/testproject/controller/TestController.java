package system.testproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import system.testproject.entity.Test;
import system.testproject.services.impl.TestServicesImpl;

import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {
    @Autowired
    TestServicesImpl testServices;

    //show all tests
    //TODO:short for the teaID,we want to show the user of teacher's all tests
    @GetMapping
    public List<Test> getTestList() {
        return testServices.getAll();
    }

    //show one test
    //TODO: use the loginde user's id
    @GetMapping("/{testId}")
    public Test getOneTest(@PathVariable String testId, String teaId){
        return testServices.getOneTest(testId, teaId);
    }

    //add a new test
    @PostMapping
    public int addTest(Test test){
        return testServices.AddTest(test);
    }

    //remove a test
    @DeleteMapping("/{testId}")
    public int removeTest(@PathVariable String testId, String teaId){
        return testServices.removeTest(testId, teaId);
    }

    //update a test
    @PutMapping
    public int updateTest(Test test){
        return  testServices.UpdateTest(test);
    }
}
