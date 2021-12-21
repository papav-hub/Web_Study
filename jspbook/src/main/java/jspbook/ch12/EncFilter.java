package jspbook.ch12;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncFilter
 */
/* @WebFilter("/EncFilter") */
@WebFilter("*.jsp")
public class EncFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		if(request.getCharacterEncoding() == null) {
			request.setCharacterEncoding(encoding);
			// pass the request along the filter chain
			chain.doFilter(request, response);
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	private String encoding = null;
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.encoding = fConfig.getServletContext().getInitParameter("encoding");
	}

}
