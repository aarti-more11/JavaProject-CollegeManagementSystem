package com.mains.Controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.Faculty;
import com.db.HibernateDatabaseConnection;

@Controller
public class FacultyController
{
	//as soon as we click on add,it should redirect me to add_faculty form
	@RequestMapping("/add_Faculty")
	public String getaddFacultyForm()
	{
		return "add_Faculty_Form";	
	}
	
	//after filling faculty, if i will click on submit, detailes shld be added in database & it should redirect me to dashboard
	@RequestMapping(value="/add_Facutly_action", method=RequestMethod.POST)
	public void addFacultyDetails(HttpServletResponse res,@ModelAttribute("Faculty") Faculty Faculty) throws IOException
	{
		Session session = null;
		session = HibernateDatabaseConnection.getSessionFactory().openSession();
		
		Transaction tx = session.beginTransaction();
		session.save(Faculty);
		tx.commit();
		
		res.sendRedirect("dashboard");
	}
	
	@RequestMapping("/delete")
	public String deleteUser(HttpServletResponse res,@RequestParam("id") int id ) throws IOException
	{
		Session session = null;
		session = HibernateDatabaseConnection.getSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		Faculty f1=new Faculty();
		f1.setId(id);
		session.delete(f1);
		tx.commit();
		session.close();
		return "dashboard";
	}
	
	@RequestMapping("/edit")
	public String getEditForm(HttpServletResponse res, Model m,@RequestParam("id") int id) throws IOException
	{
		Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Query query2 = session.createQuery("FROM com.dao.Faculty WHERE id = :id");		
        query2.setParameter("id", id);
	
        Faculty faculty_obj = new Faculty();
		m.addAttribute("Faculty", faculty_obj);
		return "faculty_edit_form";	
	}
	

	@RequestMapping(value="edit_faculty_action", method = RequestMethod.POST)
	public void editFaculty(HttpServletResponse res, @ModelAttribute("Faculty") Faculty Faculty) throws IOException
	{
		Session session = HibernateDatabaseConnection.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery("update com.dao.Faculty set facultyName= :facultyName, email= :email, mobileNo= :mobileNo, Designation= :Designation, Department= :Department, course= :course where id= :id");
		
		query.setParameter("facultyName", Faculty.getFacultyName());
		query.setParameter("email", Faculty.getEmail());
		query.setParameter("mobileNo", Faculty.getMobileNo());
		query.setParameter("Designation", Faculty.getDesignation());
		query.setParameter("Department", Faculty.getDepartment());
		query.setParameter("course", Faculty.getCourse());
		query.setParameter("id", Faculty.getId());
		
		int result=query.executeUpdate();
		
		tx.commit();
		res.sendRedirect("dashboard");
	}
	
}
	


