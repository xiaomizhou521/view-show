package cn.com.enorth.plugin.init;

import cn.com.enorth.plugin.consts.DBProgNameConst;
import cn.com.enorth.plugin.consts.StartupConst;
import cn.com.enorth.plugin.consts.SysParamConst;
import cn.com.enorth.utility.AppBeans;
import cn.com.enorth.utility.app.globalparam.SysInitHelper;
import cn.com.enorth.utility.app.syslog.SysLogger;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServlet;

import java.sql.SQLException;
import java.util.Enumeration;
import java.util.ResourceBundle;


public class StartUp extends HttpServlet implements ServletContextListener {
    private static SysLogger logger = SysLogger.getLogger(StartUp.class);
    private String DEFAULT_PROGNAME = "redis_monitor";

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("redis_monitor start");

        try {
            sysinit();
        } catch (Exception e) {
            e.printStackTrace();
            new SysInitHelper().error(e);
        }

        System.out.println("redis_monitor start ok");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("redis_monitor shut down ok");
    }

    public void sysinit() throws Exception {
        // 1 系统调试日志
        System.out.println("init syslog");
        initSyslog();
        // 2 cms.properties用来覆盖系统参数
        System.out.println("load monitor.properties");
        initProp();
        System.out.println("start up over");
    }

    public void initSyslog() {
        try {
            AppBeans.getSysLogCenter().loadConfig();
        } catch (Exception e) {
            System.out.println("日志初始化失败。");
            e.printStackTrace();
        }
    }


    public void initProp() throws SQLException {
        // 读取tag.properties里的参数，并把所有参数存入global参数中
        try {
            ResourceBundle PB = ResourceBundle.getBundle("monitor");
            Enumeration<String> keys = PB.getKeys();
//            if (!PB.containsKey(StartupConst.SYS_PROG_ROOT)) {
//            	new SysInitHelper().exit("!!! monitor.properties中必须有[" + StartupConst.SYS_PROG_ROOT + "]参数 !!!", -1);
//            } else {
//            	SysParamConst.PROG_ROOT = PB.getString(StartupConst.SYS_PROG_ROOT);
//            }
//            if (!PB.containsKey(StartupConst.SYS_UCENTER_LOGIN_API)) {
//            	new SysInitHelper().exit("!!! monitor.properties中必须有[" + StartupConst.SYS_UCENTER_LOGIN_API + "]参数 !!!", -1);
//            } else {
//            	SysParamConst.UCENTER_LOGIN_API = PB.getString(StartupConst.SYS_UCENTER_LOGIN_API);
//            }
            DEFAULT_PROGNAME = DBProgNameConst.getPROGNAME();

        } catch (Throwable ex) {
            new SysInitHelper().exit(ex, ex.getMessage(), -1);
        }
    }


}
