package system.testproject.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import system.testproject.entity.Questions;
import system.testproject.services.impl.QuestionServicesImpl;

import java.util.List;


/**
 * 题目业务层实现接口
 * TO DO:补充模板页面，实现页面跳转
 * @author Jaker
 */
@Controller
@RequestMapping("/questions")
public class QuestionController {
    @Autowired
    QuestionServicesImpl questionServices;

    //分页处理
    @GetMapping
    public String listQuestions(Model model,
                                @RequestParam(defaultValue = "0") int page,
                                @RequestParam(defaultValue = "10") int size) {
        Page<Questions> pages = new Page<>(page, size);
        IPage<Questions> questionsIPage = questionServices.getAllQuestions(pages);
        model.addAttribute("questionsPage", questionsIPage);
        return "questions";
    }

    //get questions randomly
    @GetMapping("/random")
    public List<Questions> getRandomQuestions(){
        return questionServices.getRandomQuestions();
    }

    //add a new question
    @PostMapping
    public int addQuestion(@RequestBody Questions questions){
        return questionServices.addQuestion(questions);
    }

    //remove a question
    @DeleteMapping("/{queId}")
    public int removeQuestion(@PathVariable String queId){
        return questionServices.removeQuestion(queId);
    }

    //update a question by id
    @PutMapping("/update")
    public int updateQuestion(@RequestBody Questions questions){
        return  questionServices.updateQuestion(questions);
    }
}
