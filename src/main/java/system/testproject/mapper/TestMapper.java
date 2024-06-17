package system.testproject.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fasterxml.jackson.databind.JsonSerializable;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import system.testproject.entity.Test;

import java.util.List;

/**
 * manager the test in the database via mapper
 * @author Jaker
 */
@Mapper
public interface TestMapper extends BaseMapper<Test> {
    //search for a test
    @Select("select * from test where testId = #{testId}")
    Test getOneTestById(@Param("testId") String testId);

    //search for all tests
    @Select("select * from test;")
    List<Test> getAllTests();

    //create a new test
    int addTest(Test test);

    //delete a test by id
    @Delete("delete from test where testId = #{testId}")
    int deleteTestById(@Param("testId") String testId);

    //update a test
    int updateTest(Test test);
}
