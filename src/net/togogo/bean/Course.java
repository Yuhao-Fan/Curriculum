package net.togogo.bean;

import java.util.Date;

public class Course {
    private long id;
    private String courseCode;
    private String courseName;

    private String schoolName;
    private String courseCredits;

    private String courseCounts;
    private long createdBy;
    private Date creationDate;
    private long modifyBy;
    private Date modifyDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getCourseCredits() {
        return courseCredits;
    }

    public void setCourseCredits(String courseCredits) {
        this.courseCredits = courseCredits;
    }

    public String getCourseCounts() {
        return courseCounts;
    }

    public void setCourseCounts(String courseCounts) {
        this.courseCounts = courseCounts;
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

    public Course(long id, String courseCode, String courseName, String schoolName, String courseCredits, String courseCounts, long createdBy, Date creationDate, long modifyBy, Date modifyDate) {
        this.id = id;
        this.courseCode = courseCode;
        this.courseName = courseName;

        this.schoolName = schoolName;
        this.courseCredits = courseCredits;

        this.courseCounts = courseCounts;
        this.createdBy = createdBy;
        this.creationDate = creationDate;
        this.modifyBy = modifyBy;
        this.modifyDate = modifyDate;
    }

    public Course() {
    }
}
