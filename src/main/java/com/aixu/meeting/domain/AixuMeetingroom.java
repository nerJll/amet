package com.aixu.meeting.domain;

public class AixuMeetingroom implements java.io.Serializable{

	private static final long serialVersionUID = 8139356081943462095L;

	private String meetRoomId; // id

    private String meetRoomName; // 会议室名称

    private Integer meetRoomNum; //可容纳人数

    private String meetRoomState;//使用状态

    private String location;//会议室所属

    private String isVideoRoom;//是否支持视频会议

    private String resOne;

    private String resTwo;

    private String resThree;

    private String resFour;

    private String resFive;

    public String getMeetRoomId() {
        return meetRoomId;
    }

    public void setMeetRoomId(String meetRoomId) {
        this.meetRoomId = meetRoomId == null ? null : meetRoomId.trim();
    }

    public String getMeetRoomName() {
        return meetRoomName;
    }

    public void setMeetRoomName(String meetRoomName) {
        this.meetRoomName = meetRoomName == null ? null : meetRoomName.trim();
    }

    public Integer getMeetRoomNum() {
        return meetRoomNum;
    }

    public void setMeetRoomNum(Integer meetRoomNum) {
        this.meetRoomNum = meetRoomNum;
    }

    public String getMeetRoomState() {
        return meetRoomState;
    }

    public void setMeetRoomState(String meetRoomState) {
        this.meetRoomState = meetRoomState == null ? null : meetRoomState.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getIsVideoRoom() {
        return isVideoRoom;
    }

    public void setIsVideoRoom(String isVideoRoom) {
        this.isVideoRoom = isVideoRoom == null ? null : isVideoRoom.trim();
    }

    public String getResOne() {
        return resOne;
    }

    public void setResOne(String resOne) {
        this.resOne = resOne == null ? null : resOne.trim();
    }

    public String getResTwo() {
        return resTwo;
    }

    public void setResTwo(String resTwo) {
        this.resTwo = resTwo == null ? null : resTwo.trim();
    }

    public String getResThree() {
        return resThree;
    }

    public void setResThree(String resThree) {
        this.resThree = resThree == null ? null : resThree.trim();
    }

    public String getResFour() {
        return resFour;
    }

    public void setResFour(String resFour) {
        this.resFour = resFour == null ? null : resFour.trim();
    }

    public String getResFive() {
        return resFive;
    }

    public void setResFive(String resFive) {
        this.resFive = resFive == null ? null : resFive.trim();
    }

	@Override
	public String toString() {
		return "{\"meetRoomId\":\"" + meetRoomId + "\",\"meetRoomName\":\"" + meetRoomName + "\",\"meetRoomNum\":\""
				+ meetRoomNum + "\",\"meetRoomState\":\"" + meetRoomState + "\",\"location\":\"" + location
				+ "\",\"isVideoRoom\":\"" + isVideoRoom + "\",\"resOne\":\"" + resOne + "\",\"resTwo\":\"" + resTwo
				+ "\",\"resThree\":\"" + resThree + "\",\"resFour\":\"" + resFour + "\",\"resFive\":\"" + resFive
				+ "\"}";
	}

	public AixuMeetingroom(String meetRoomId, String meetRoomName, Integer meetRoomNum, String meetRoomState,
			String location, String isVideoRoom, String resOne, String resTwo, String resThree, String resFour,
			String resFive) {
		this.meetRoomId = meetRoomId;
		this.meetRoomName = meetRoomName;
		this.meetRoomNum = meetRoomNum;
		this.meetRoomState = meetRoomState;
		this.location = location;
		this.isVideoRoom = isVideoRoom;
		this.resOne = resOne;
		this.resTwo = resTwo;
		this.resThree = resThree;
		this.resFour = resFour;
		this.resFive = resFive;
	}

	public AixuMeetingroom() {}
	
}