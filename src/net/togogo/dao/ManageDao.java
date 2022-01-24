package net.togogo.dao;

import net.togogo.bean.Grade;
import net.togogo.bean.Course;
import net.togogo.bean.User;

import java.util.List;

public interface ManageDao {

    public List<User> getUserAll() throws Exception;
    public int getPwdUpdate(String []param) throws Exception;
    public List<Grade> getGradeAll() throws Exception;
    public List<Course> getCourseAll() throws Exception;
    public Course getCourseById(String proId) throws Exception;
    public List<User> getUserByName(String Name) throws Exception;
    public List<Course> getCourseByName(String ProName) throws Exception;
    public User getUserById(String userId) throws Exception;
    public Grade getGradeById(String courseId) throws Exception;
    public int getCourseAdd(String []param) throws Exception;
    public int getUserAdd(String []param) throws Exception;
    public int getGradeDelete(String courseId) throws Exception;
    public int getCourseDelete(String proId) throws Exception;
    public int getCourseUpdate(String []param) throws Exception;
    public int getUserDelete(String userId) throws Exception;
    public int getUserUpdate(String []param) throws Exception;
    public List<Grade> getGradeByCondition(String studentName, String courseID, String isPass);
    public int getGradeAdd(String[] param) throws Exception;

    public int getGradeUpdate(String[] param) throws Exception;
}
