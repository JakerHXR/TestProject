package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import system.testproject.entity.Questions;

public interface QuestionMapper extends BaseMapper<Questions> {
    //add a new question
    int addQuestion(Questions questions);

    //update the question
    int  updateQuestion(Questions questions);
}
