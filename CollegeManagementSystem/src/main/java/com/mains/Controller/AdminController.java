package com.mains.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	 @RequestMapping("/admin")
	    public String showAdminPage() {
	        return "admin_dashboard";
	    }
	  
	    
//	    @GetMapping("/login")
//	    public String processLogin(@RequestParam("username") String username, 
//	                               @RequestParam("password") String password, Model model) {
//	       
//	        return "login";  
//	    }
	    
	    @RequestMapping("/login")
		public String getLoginForm()
		{
			return "login";	
		}
	/*
	    @RequestMapping("/login")
	    public String showLoginPage() {
	        return "login"; 
	    }
	*/
	    @RequestMapping("/manage_users")
	    public String manageUsers() {
	        return "manage_users"; 
	    }

	    @RequestMapping("/settings")
	    public String settings() {
	        return "settings"; 
	    }

	    @RequestMapping("/reports")
	    public String reports() {
	        return "reports";
	    }
}
