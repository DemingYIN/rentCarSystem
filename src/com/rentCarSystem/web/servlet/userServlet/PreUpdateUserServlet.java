package com.rentCarSystem.web.servlet.userServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.rentCarSystem.commons.Constants;
import com.rentCarSystem.domain.Role;
import com.rentCarSystem.domain.User;
import com.rentCarSystem.service.RoleManagerImpl;
import com.rentCarSystem.service.UserManager;
import com.rentCarSystem.service.UserManagerImpl;

public class PreUpdateUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Log log = LogFactory.getLog(PreUpdateUserServlet.class);
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String identity=request.getParameter("identityTemp");
		UserManager um=new UserManagerImpl();
		User user=null;
		List<Role> list=new ArrayList<Role>();
		try{
			user=um.findUser(identity);
			list=RoleManagerImpl.getInstance().findRole();
			
		}catch (Exception e) {
			if (e.toString().indexOf("SystemError") != -1) {
				log.fatal(e);
				request.setAttribute(Constants.MESSAGE_KEY, e.getMessage());
				request.getRequestDispatcher("systemError.jsp").forward(
						request, response);
			} else {
				log.error(e);
				request.setAttribute(Constants.MESSAGE_KEY, e.getMessage());
				request.getRequestDispatcher("failure.jsp").forward(
						request, response);
			}

		}
		
		if(user!=null){
			request.setAttribute("role",list);
			request.setAttribute("updateUser",user );
			request.getRequestDispatcher("userManager/updateUser.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
