package system.testproject.services.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.testproject.entity.Questions;
import system.testproject.mapper.QuestionMapper;
import system.testproject.services.QuestionServices;

import java.util.List;

/**
 * 题目数据集持久层实现接口
 * @author Jaker
 */
@Service
public class QuestionServicesImpl extends ServiceImpl<QuestionMapper, Questions> implements QuestionServices {
    @Autowired
    QuestionMapper questionMapper;

    //get questions randomly
    @Override
    public List<Questions> getRandomQuestions() {
        return questionMapper.getRandomQuestions();
    }

    //get all questions in pages
    @Override
    public IPage<Questions> getAllQuestions(Page<Questions> page) {
        return questionMapper.selectPage(page,null);
    }

    //get all questions
    @Override
    public List<Questions> getAll() {
        return questionMapper.getAll();
    }

    //add a new question
    public int addQuestion(Questions questions){
        return questionMapper.addQuestion(questions);
    }

    //remove a question
    public int removeQuestion(String queId){
        return questionMapper.deleteById(queId);
    }

    //update a question
    public int updateQuestion(Questions questions){
        return questionMapper.updateQuestion(questions);
    }
}
