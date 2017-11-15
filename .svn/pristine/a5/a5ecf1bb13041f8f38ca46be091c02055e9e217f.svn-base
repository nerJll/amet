package com.aixu.meeting.domain;

/**
 * @author RenBowen
 * @date 2017年11月10日-上午11:21:03
 * @since 1.0.0
 * @aixu-meet
 */
public class AikoUser implements java.io.Serializable{

	private static final long serialVersionUID = -1112729080953619425L;

	private String id;

    private String name;

    private String userid;

    private String password;

    private String deptid;

    private Integer status;

    private String scn;
    
    private String deptName;

    public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid == null ? null : deptid.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getScn() {
        return scn;
    }

    public void setScn(String scn) {
        this.scn = scn == null ? null : scn.trim();
    }

	

	@Override
	public String toString() {
		return "{\"id\":\"" + id + "\",\"name\":\"" + name + "\",\"userid\":\"" + userid + "\",\"password\":\""
				+ password + "\",\"deptid\":\"" + deptid + "\",\"status\":\"" + status + "\",\"scn\":\"" + scn
				+ "\",\"deptName\":\"" + deptName + "\"}";
	}

	

	public AikoUser(String id, String name, String userid, String password, String deptid, Integer status, String scn,
			String deptName) {
		this.id = id;
		this.name = name;
		this.userid = userid;
		this.password = password;
		this.deptid = deptid;
		this.status = status;
		this.scn = scn;
		this.deptName = deptName;
	}

	public AikoUser() {}
	
}