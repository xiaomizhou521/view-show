package cn.com.enorth.plugin.tagx;

import org.springframework.context.ApplicationContext;

import cn.com.enorth.utility.app.syslog.SysLogger;
import cn.com.enorth.utility.spring.SpringContextUtil;

public class PFunction {
    private static ApplicationContext ac = SpringContextUtil.getApplicationContext();
    private static SysLogger logger = SysLogger.getLogger(PFunction.class);
    
//    public static Boolean isHasTag(String tagIds, Integer tagId) {
//    	if (tagIds.indexOf("," + tagId + ",") >= 0) {
//    		return true;
//    	}
//    	return false;
//    }
    
}
