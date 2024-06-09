package system.testproject.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * @author Jaker
 */
@TableName(value = "questions")
public class Questions {
    @TableId
    private String queId;
    private String queType;
    private String queMajor;
    private String queTitle;
    private String queAnswear;
    private String queLevel;

    public Questions() {
    }

    public Questions(String queId, String queType, String queMajor, String queTitle, String queAnswear, String queLevel) {
        this.queId = queId;
        this.queType = queType;
        this.queMajor = queMajor;
        this.queTitle = queTitle;
        this.queAnswear = queAnswear;
        this.queLevel = queLevel;
    }

    public String getQueId() {
        return queId;
    }

    public void setQueId(String queId) {
        this.queId = queId;
    }

    public String getQueType() {
        return queType;
    }

    public void setQueType(String queType) {
        this.queType = queType;
    }

    public String getQueMajor() {
        return queMajor;
    }

    public void setQueMajor(String queMajor) {
        this.queMajor = queMajor;
    }

    public String getQueTitle() {
        return queTitle;
    }

    public void setQueTitle(String queTitle) {
        this.queTitle = queTitle;
    }

    public String getQueAnswear() {
        return queAnswear;
    }

    public void setQueAnswear(String queAnswear) {
        this.queAnswear = queAnswear;
    }

    public String getQueLevel() {
        return queLevel;
    }

    public void setQueLevel(String queLevel) {
        this.queLevel = queLevel;
    }

    @Override
    public String toString() {
        return "Questions{" +
                "queId='" + queId + '\'' +
                ", queType='" + queType + '\'' +
                ", queMajor='" + queMajor + '\'' +
                ", queTitle='" + queTitle + '\'' +
                ", queAnswear='" + queAnswear + '\'' +
                ", queLevel='" + queLevel + '\'' +
                '}';
    }
}
