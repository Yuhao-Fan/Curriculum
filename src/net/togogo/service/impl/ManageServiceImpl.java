package net.togogo.service.impl;

import net.togogo.bean.Grade;
import net.togogo.bean.Course;
import net.togogo.bean.User;
import net.togogo.dao.ManageDao;
import net.togogo.dao.impl.ManageDaoImpl;
import net.togogo.service.ManageService;

import java.util.List;

public class ManageServiceImpl implements ManageService {

    ManageDao manageDao = new ManageDaoImpl();

    @Override
    public List<User> getUserAll() throws Exception {
        return manageDao.getUserAll();
    }

    @Override
    public int getPwdUpdate(String[] param) throws Exception {
        return manageDao.getPwdUpdate(param);
    }

    @Override
    public List<Grade> getGradeAll() throws Exception {
        return manageDao.getGradeAll();
    }

    @Override
    public List<Course> getCourseAll() throws Exception {
        return manageDao.getCourseAll();
    }

    @Override
    public Course getCourseById(String proId) throws Exception {
        return manageDao.getCourseById(proId);
    }

    @Override
    public List<User> getUserByName(String Name) throws Exception {
        return manageDao.getUserByName(Name);
    }

    @Override
    public List<Course> getCourseByName(String ProName) throws Exception {
        return manageDao.getCourseByName(ProName);
    }

    @Override
    public User getUserById(String userId) throws Exception {
        return manageDao.getUserById(userId);
    }

    @Override
    public Grade getGradeById(String courseId) throws Exception {
        return manageDao.getGradeById(courseId);
    }

    @Override
    public int getCourseAdd(String[] param) throws Exception {
        return manageDao.getCourseAdd(param);
    }

    @Override
    public int getUserAdd(String[] param) throws Exception {
        return manageDao.getUserAdd(param);
    }

    @Override
    public int getGradeDelete(String courseId) throws Exception {
        return manageDao.getGradeDelete(courseId);
    }

    @Override
    public int getCourseDelete(String proId) throws Exception {
        return manageDao.getCourseDelete(proId);
    }

    @Override
    public int getUserDelete(String userId) throws Exception {
        return manageDao.getUserDelete(userId);
    }

    @Override
    public int getUserUpdate(String[] param) throws Exception {
        return manageDao.getUserUpdate(param);
    }

    @Override
    public int getGradeAdd(String[] param) throws Exception {
        return manageDao.getGradeAdd(param);
    }

    @Override
    public int getGradeUpdate(String[] param) throws Exception {
        return manageDao.getGradeUpdate(param);
    }


    @Override
    public int getCourseUpdate(String[] param) throws Exception {
        return manageDao.getCourseUpdate(param);
    }

    @Override
    public List<Grade> getGradeByCondition(String studentName, String courseID, String isPass) {
        return manageDao.getGradeByCondition(studentName, courseID, isPass);
    }
}
