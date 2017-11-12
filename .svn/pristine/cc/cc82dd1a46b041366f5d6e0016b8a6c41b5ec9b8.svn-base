package com.aixu.meeting.utils;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import com.aiko.config.wxcp.WxcpApi;
import com.google.gson.Gson;

import me.chanjar.weixin.cp.bean.WxCpMessage;

/**
 * @author RenBowen
 * @date 2017年11月6日-上午10:03:36
 * @since 1.0.0
 */
public class WeChatUtil {
	/**
	 * 企业号常量
	 */
	private static final Integer cId = 74;  
	/**
	 * 微信推送TEXT
	 * @param uId
	 */
	public static String weChatPush(String uId, String content) {
		WxCpMessage msg=new WxCpMessage();
		MultiValueMap<String, Object> requestEntity = new LinkedMultiValueMap<String, Object>();
		msg.setAgentId(cId);
		msg.setContent(content);
		msg.setToUser(uId);
		requestEntity.add("requestJson", new Gson().toJson(msg));
		requestEntity.add("redirectUri","");
		String result = WxcpApi.send(WxcpApi.TEXT,requestEntity);
		return result;
	}
}
