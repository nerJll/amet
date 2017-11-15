package com.aixu.meeting.utils;

/**
 * @author RenBowen
 * @date 2017年11月14日-下午4:43:44
 * @since 1.0.0
 * @aixu-meet
 * 包装类
 */
public class MeetingVo {
	private String roomName;

	private String number;

	private String 	employeeName;

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public MeetingVo(String roomName, String number, String employeeName) {
		super();
		this.roomName = roomName;
		this.number = number;
		this.employeeName = employeeName;
	}

	public MeetingVo() {
		super();
	}

	
}
