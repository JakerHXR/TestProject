package system.testproject.services;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import system.testproject.entity.Questions;

import java.util.List;

/**
 * 题目数据库持久层逻辑接口
 * @author Jaker
 */
public interface QuestionServices extends IService<Questions> {
    //get questions randomly
    public List<Questions> getRandomQuestions();

    //get all questions in pages
    IPage<Questions> getAllQuestions(Page<Questions> page);

    //get all questions
    public List<Questions> getAll();
}
