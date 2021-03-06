package cn.com.gps169.db.model;

import java.util.Date;

public class Suggestion {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.telephone
     *
     * @mbggenerated
     */
    private String telephone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.email
     *
     * @mbggenerated
     */
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.content
     *
     * @mbggenerated
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.status
     *
     * @mbggenerated
     */
    private Byte status;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.process_remark
     *
     * @mbggenerated
     */
    private String processRemark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.processer_id
     *
     * @mbggenerated
     */
    private Integer processerId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.created_time
     *
     * @mbggenerated
     */
    private Date createdTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column suggestion.process_time
     *
     * @mbggenerated
     */
    private Date processTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.id
     *
     * @return the value of suggestion.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.id
     *
     * @param id the value for suggestion.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.telephone
     *
     * @return the value of suggestion.telephone
     *
     * @mbggenerated
     */
    public String getTelephone() {
        return telephone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.telephone
     *
     * @param telephone the value for suggestion.telephone
     *
     * @mbggenerated
     */
    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.email
     *
     * @return the value of suggestion.email
     *
     * @mbggenerated
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.email
     *
     * @param email the value for suggestion.email
     *
     * @mbggenerated
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.content
     *
     * @return the value of suggestion.content
     *
     * @mbggenerated
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.content
     *
     * @param content the value for suggestion.content
     *
     * @mbggenerated
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.status
     *
     * @return the value of suggestion.status
     *
     * @mbggenerated
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.status
     *
     * @param status the value for suggestion.status
     *
     * @mbggenerated
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.process_remark
     *
     * @return the value of suggestion.process_remark
     *
     * @mbggenerated
     */
    public String getProcessRemark() {
        return processRemark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.process_remark
     *
     * @param processRemark the value for suggestion.process_remark
     *
     * @mbggenerated
     */
    public void setProcessRemark(String processRemark) {
        this.processRemark = processRemark == null ? null : processRemark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.processer_id
     *
     * @return the value of suggestion.processer_id
     *
     * @mbggenerated
     */
    public Integer getProcesserId() {
        return processerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.processer_id
     *
     * @param processerId the value for suggestion.processer_id
     *
     * @mbggenerated
     */
    public void setProcesserId(Integer processerId) {
        this.processerId = processerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.created_time
     *
     * @return the value of suggestion.created_time
     *
     * @mbggenerated
     */
    public Date getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.created_time
     *
     * @param createdTime the value for suggestion.created_time
     *
     * @mbggenerated
     */
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column suggestion.process_time
     *
     * @return the value of suggestion.process_time
     *
     * @mbggenerated
     */
    public Date getProcessTime() {
        return processTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column suggestion.process_time
     *
     * @param processTime the value for suggestion.process_time
     *
     * @mbggenerated
     */
    public void setProcessTime(Date processTime) {
        this.processTime = processTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table suggestion
     *
     * @mbggenerated
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Suggestion other = (Suggestion) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTelephone() == null ? other.getTelephone() == null : this.getTelephone().equals(other.getTelephone()))
            && (this.getEmail() == null ? other.getEmail() == null : this.getEmail().equals(other.getEmail()))
            && (this.getContent() == null ? other.getContent() == null : this.getContent().equals(other.getContent()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getProcessRemark() == null ? other.getProcessRemark() == null : this.getProcessRemark().equals(other.getProcessRemark()))
            && (this.getProcesserId() == null ? other.getProcesserId() == null : this.getProcesserId().equals(other.getProcesserId()))
            && (this.getCreatedTime() == null ? other.getCreatedTime() == null : this.getCreatedTime().equals(other.getCreatedTime()))
            && (this.getProcessTime() == null ? other.getProcessTime() == null : this.getProcessTime().equals(other.getProcessTime()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table suggestion
     *
     * @mbggenerated
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTelephone() == null) ? 0 : getTelephone().hashCode());
        result = prime * result + ((getEmail() == null) ? 0 : getEmail().hashCode());
        result = prime * result + ((getContent() == null) ? 0 : getContent().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getProcessRemark() == null) ? 0 : getProcessRemark().hashCode());
        result = prime * result + ((getProcesserId() == null) ? 0 : getProcesserId().hashCode());
        result = prime * result + ((getCreatedTime() == null) ? 0 : getCreatedTime().hashCode());
        result = prime * result + ((getProcessTime() == null) ? 0 : getProcessTime().hashCode());
        return result;
    }
}