package com.cpms.web.common;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;



public class SqlSessionFactoryManager {
	private static Logger log = Logger.getLogger(SqlSessionFactoryManager.class);
    private static final SqlSessionFactory manager;
   
    static{
           String resource = "com/cpms/web/common/mybatis-config.xml";
           Reader reader = null;
           try {
                   reader = Resources.getResourceAsReader(resource);
                   
           } catch (IOException e) {
                   log.debug("초기화 에러");
           }
           manager = new SqlSessionFactoryBuilder().build(reader);
    }
   
          
    /**
     *
     * @return SqlSessionFactory 인스턴스를 반환
     */
    public static SqlSessionFactory getSqlSessionFactory() {
           return manager;  
    }
}
