package jspbook.ch12;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class TestContextListener
 *
 */
@WebListener
public class TestContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public TestContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	ServletContext ctx = sce.getServletContext();
    	Book mybook = new Book("한글 이야기", "세종", 20000, "길동출판사");
    	ctx.setAttribute("book", mybook);
    	System.out.println("TestContextListener 초기화 되었습니다.");
    }
	
}
