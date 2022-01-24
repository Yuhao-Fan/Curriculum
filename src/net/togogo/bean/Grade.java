package net.togogo.bean;

import java.math.BigDecimal;
import java.util.Date;

public class Grade {
    private long id;
    private String gradeCode;
    private String studentName;

    private BigDecimal courseGrade;
    private int isPass;
    private long createdBy;
    private Date creationDate;
    private long modifyBy;
    private Date modifyDate;
    private int courseID;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGradeCode() {
        return gradeCode;
    }

    public void setGradeCode(String gradeCode) {
        this.gradeCode = gradeCode;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public BigDecimal getCourseGrade() {
        return courseGrade;
    }

    public void setCourseGrade(BigDecimal courseGrade) {
        this.courseGrade = courseGrade;
    }

    public int getIsPass() {
        return isPass;
    }

    public void setIsPass(int isPass) {
        this.isPass = isPass;
    }

    public long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(long createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public long getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(long modifyBy) {
        this.modifyBy = modifyBy;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public Grade(long id, String gradeCode, String studentName, BigDecimal courseGrade, int isPass, long createdBy, Date creationDate, long modifyBy, Date modifyDate, int courseID) {
        this.id = id;
        this.gradeCode = gradeCode;
        this.studentName = studentName;

        this.courseGrade = courseGrade;
        this.isPass = isPass;
        this.createdBy = createdBy;
        this.creationDate = creationDate;
        this.modifyBy = modifyBy;
        this.modifyDate = modifyDate;
        this.courseID = courseID;
    }

    public Grade() {
    }
}
