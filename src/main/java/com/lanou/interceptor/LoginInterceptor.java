package com.lanou.interceptor;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * 登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {

    //拦截请求
    private static final String[] IGNORE_URI = {"/admin/index.jsp"};
    /**
     * z在拦截点执行前拦截，如果返回true则不执行拦截点后的操作
     * 若返回false,则不执行拦截
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("拦截器pre");
//       //获取请求的URL
//        String url = request.getRequestURI();
//        //URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
//        if(url.indexOf("/getValidateCode")>=0 || url.indexOf("/goLogin")>=0 || url.indexOf("/admin/logout")>=0){
//            return true;
//        }
//        //获取Session
//        HttpSession session = request.getSession();
//            String password666 = (String)session.getAttribute("password666");
//
//        if(password666 != null){
//            return true;
//        }else {
//            //不符合条件的，跳转到登录界面
//           // request.getRequestDispatcher("/admin/logout").forward(request, response);
//            response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
//            return false;
//        }
        Object user = request.getSession().getAttribute("password666");
        String k = request.getServletPath();
        if (!k.equals("/getValidateCode") && !k.equals("/goLogin")){
            String type = request.getHeader("X-Requested-With");// XMLHttpRequest
            if (user == null) {
                // 重定向
                String path = request.getContextPath();
                String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
                //response.sendRedirect(contextPath+"/index.jsp");
                // System.err.println("sendRedirect");
                // 转发
                if (StringUtils.equals("XMLHttpRequest", type)) {
                    // ajax请求
                    response.setHeader("SESSIONSTATUS", "TIMEOUT");
                    response.setHeader("CONTEXTPATH", basePath+"admin/login.jsp");
                    response.setStatus(HttpServletResponse.SC_FORBIDDEN);//403 禁止
                    return false;
                } else {
                    response.sendRedirect(basePath+"/admin/login.jsp");
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /**
     * 在处理过程中执行拦截
     * @param request
     * @param response
     * @param handler
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    /**
     * 执行完毕返回拦截
     * @param request
     * @param response
     * @param handler
     * @param ex
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }

}

