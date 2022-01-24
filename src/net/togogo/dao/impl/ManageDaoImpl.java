package net.togogo.dao.impl;

import net.togogo.bean.Grade;
import net.togogo.bean.Course;
import net.togogo.bean.User;
import net.togogo.dao.ManageDao;
import net.togogo.utils.C3p0Utils;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.ArrayList;
import java.util.List;
//Dao的作用是封装对数据库的访问：增删改查，不涉及业务逻辑，只是达到按某个条件获得指定数据的要求；
//而Service，则是专注业务逻辑，对于其中需要的数据库操作，都通过Dao去实现；
public class ManageDaoImpl implements ManageDao {
    @Override
    //抛异常
    public int getPwdUpdate(String[] param) throws Exception {

        String sql = "UPDATE user SET userPassword= ? WHERE userCode= ? ";

        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public List<Grade> getGradeAll() throws Exception {

        String sql = "select * from grade";

        BeanListHandler<Grade> beanListHandler = new BeanListHandler<>(Grade.class);
        List<Grade> gradesList = C3p0Utils.BeanListHandlers(sql,beanListHandler);
        return gradesList;
    }

    @Override
    public List<User> getUserAll() throws Exception {

        String sql = "select * from user";

        BeanListHandler<User> beanListHandler = new BeanListHandler<>(User.class);
        List<User> userList = C3p0Utils.BeanListHandlers(sql,beanListHandler);
        return userList;
    }

    @Override
    public List<Course> getCourseAll() throws Exception {

        String sql = "select * from course";

        BeanListHandler<Course> beanListHandler = new BeanListHandler<>(Course.class);
        List<Course> subjectList = C3p0Utils.BeanListHandlers(sql,beanListHandler);
        return subjectList;
    }

    @Override
    public Course getCourseById(String proId) throws Exception {

        String sql = "select * from course where id = ?";
        Object []param = {proId};
        BeanHandler<Course> beanHandler = new BeanHandler<>(Course.class);
        Course course = (Course)C3p0Utils.getBeanHandlers(sql,beanHandler, param);
        return course;
    }

    @Override
    public List<User> getUserByName(String Name) throws Exception {

        String sql = "SELECT * FROM `user` WHERE userName LIKE '%"+ Name +"%'";
        BeanListHandler<User> beanListHandler = new BeanListHandler<>(User.class);
        List<User> userList = C3p0Utils.BeanListHandlers(sql,beanListHandler);
        return userList;
    }

    @Override
    public List<Course> getCourseByName(String ProName) throws Exception {

        String sql = "SELECT * FROM `course` WHERE courseName LIKE '%"+ ProName +"%'";
        BeanListHandler<Course> beanListHandler = new BeanListHandler<>(Course.class);
        List<Course> subjectList = C3p0Utils.BeanListHandlers(sql,beanListHandler);
        return subjectList;
    }

    @Override
    public User getUserById(String userId) throws Exception {

        String sql = "select * from user where id = ?";
        Object []param = {userId};
        BeanHandler<User> beanHandler = new BeanHandler<>(User.class);
        User user = (User)C3p0Utils.getBeanHandlers(sql,beanHandler, param);
        return user;
    }

    @Override
    public Grade getGradeById(String courseId) throws Exception {

        String sql = "select * from grade where id = ?";
        Object []param = {courseId};
        BeanHandler<Grade> beanHandler = new BeanHandler<>(Grade.class);
        Grade grade = (Grade)C3p0Utils.getBeanHandlers(sql,beanHandler, param);
        return grade;
    }

    @Override
    public int getCourseAdd(String[] param) throws Exception {

        String sql = "INSERT INTO " +
                     "course (courseCode,courseName,schoolName,courseCredits,courseCounts,createdBy,creationDate) " +
                     "VALUES (?,?,?,?,?,?,?)";
        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public int getUserAdd(String[] param) throws Exception {

        String sql = "INSERT INTO " +
                "user (userCode,userName,userPassword,gender,birthday,userphone,address,userRole,createdBy,creationDate) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?)";
        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public int getGradeDelete(String courseId) throws Exception {
        String sql = "delete from grade where id = ?";
        int count = C3p0Utils.ProUpdate(sql,courseId);
        return count;
    }

    @Override
    public int getCourseDelete(String proId) throws Exception {
        String sql = "delete from course where id = ?";
        int count = C3p0Utils.ProUpdate(sql,proId);
        return count;
    }

    @Override
    public int getUserDelete(String userId) throws Exception {
        String sql = "delete from user where id = ?";
        int count = C3p0Utils.ProUpdate(sql,userId);
        return count;
    }

    @Override
    public int getUserUpdate(String[] param) throws Exception {

        String sql = "UPDATE user SET userCode= ?,userName = ?,userPassword = ?," +
                     "gender = ?,birthday = ?,userphone = ?,address = ?,userRole = ?,modifyBy = ?," +
                     "modifyDate = ? WHERE id= ? ";

        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public int getGradeAdd(String[] param) throws Exception {
        String sql = "insert into grade " +
                     "(gradeCode,studentName,courseGrade,courseID,isPass,createdBy,creationDate)" +
                     " value(?,?,?,?,?,?,?)";
        int count = C3p0Utils.ProUpdate(sql,param);

        return count;
    }

    @Override
    public int getGradeUpdate(String[] param) throws Exception {
        String sql = "UPDATE grade SET gradeCode = ?,studentName = ?," +
                     "courseGrade = ?,courseID = ?,isPass = ?,modifyBy = ?,modifyDate = ?" +
                     " WHERE id= ? ";
        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public int getCourseUpdate(String[] param) throws Exception {

        String sql = "UPDATE course SET courseCode = ?,courseName = ?,schoolName = ?," +
                     "courseCredits = ?,courseCounts = ?,modifyBy = ?,modifyDate = ? " +
                     "WHERE id= ? ";

        int count = C3p0Utils.ProUpdate(sql,param);
        return count;
    }

    @Override
    public List<Grade> getGradeByCondition(String studentName, String courseID, String isPass) {

        String sql = "select * from grade where 1=1";
        List<String>list = new ArrayList<>();

        if (studentName != null && !studentName.equals("")) {
            sql = sql + " and studentName like ?";
            list.add("%"+studentName+"%");
        }

        if (courseID != null && !courseID.equals("")){
            sql = sql + " and courseID = ?";
            list.add(courseID);
        }

        if (isPass != null && !isPass.equals("")){
            sql = sql + " and isPass = ?";
            list.add(isPass);
        }

        BeanListHandler<Grade> beanListHandler = new BeanListHandler<>(Grade.class);
        List<Grade> grades = C3p0Utils.BeanListHandlers(sql,beanListHandler,list.toArray());

        return grades;
    }
}
