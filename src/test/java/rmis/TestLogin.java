package rmis;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.lanou.entity.User;
import com.lanou.mapper.UserMapper;
import com.lanou.services.login.UserLoginServices;
import com.lanou.services.login.impl.UserLoginServicesImpl;


public class TestLogin {
	@Test
	public void testname() throws Exception {
		ApplicationContext applicationContext =  new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		 
	}
}
