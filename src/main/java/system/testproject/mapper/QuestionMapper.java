package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import system.testproject.entity.Questions;

import java.util.List;

/**
 *
 * @author Jaker
 */
@Mapper
public interface QuestionMapper extends BaseMapper<Questions> {
    //add a new question
    int addQuestion(Questions questions);

    //update the question
    int  updateQuestion(Questions questions);

    //output 20 questions randomly
    List<Questions> getRandomQuestions();

    //get all questions
    @Select("select * from questions")
    List<Questions> getAll();

}
