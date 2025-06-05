package org.scoula.forwardredirect;

import java.io.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "hello", value = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    /*
    * MVC 구조
    * Model : 데이터를 처리하는 로직 (Java클래스, 비즈니스 처리 담당)
    * View : 화면을 담당 (JSP)
    * Controller : 요청을 받아 처리하고 결과를 View에 전달 (Servlet)
    * */

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String name = req.getParameter("name");

        // 비즈니스 로직


        // 결과값 전달
//        req.setAttribute("username", name);

        // 어플리케이션
        ServletContext application = getServletContext();
        application.setAttribute("username", "어플리케이션");

        // session
        HttpSession session = req.getSession();
        session.setAttribute("username", "세션");

        // request
        req.setAttribute("username", "요청");

        /*
        * Forward
        * - 클라이언트가 요청한 정보를 서버 내 다른 자원(Servlet)로 전달하여 처리하게함.
        * - 요청객체(request, response)가 유지됨
        * - URL이 바뀌지 않음
        * -> 서버 내부에서만 이동되며, 클라이언트는 이동을 모름
        * Redirect
        * - 서버가 클라이언트에게 다른 URL로 다시 요청하라고 응답
        * - 요청객체(request, response)가 초기화
        * - URL이 변경됨
        * */

        if(name != null && !name.isEmpty()) {
            // name 값이 있을때
            req.getRequestDispatcher("helloView.jsp").forward(req, resp);
        } else {
            // name 값이 없을때
            resp.sendRedirect("/");
        }
    }

    public void destroy() {
    }
}