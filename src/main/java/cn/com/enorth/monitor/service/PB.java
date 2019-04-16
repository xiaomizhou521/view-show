package cn.com.enorth.plugin.service;

import cn.com.enorth.plugin.util.RandomUtil;

public class PB {
	
	private static RandomUtil randomUtil;
	
	public synchronized static RandomUtil randomUtil() {
		if (randomUtil == null) {
			randomUtil = new RandomUtil();
		}
		return randomUtil;
	}

}
