package system.testproject.entity;

/**
 * 用户表
 * @author Jaker
 */
public class User {
    private String userId;
    private String userName;
    private String userPwd;
    private String userStatus;

    public User() {
    }

    public User(String userId, String userName, String userPwd, String userStatus) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userStatus = userStatus;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userStatus='" + userStatus + '\'' +
                '}';
    }
}
