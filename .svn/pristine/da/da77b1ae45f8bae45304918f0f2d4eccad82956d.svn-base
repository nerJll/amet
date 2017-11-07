package com.aixu.meeting.utils;

import java.util.UUID;

/**
 * @author RenBowen
 * @date 2017年10月12日-上午9:08:10
 * @since 1.0.0
 * @aiko-crm
 */
public class IDUtils {
	public static String getUuid(boolean is32bit) {
		String uuid = UUID.randomUUID().toString();
		return is32bit ? uuid.toString().replace("-", "") : uuid;
	}
}
