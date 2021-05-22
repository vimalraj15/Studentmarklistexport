package com.example.demo;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.MainTable;
import com.example.demo.model.Ticket;
import com.example.demo.service.TicketService;

@RestController
public class Restcontroller {
	@Autowired
	private TicketService ticketservice;
	@Autowired
	JdbcTemplate jdbcTemplate;

	@RequestMapping(value = { "/login-user" }, method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String uname, @RequestParam String psw) throws SQLException {

		try {

			String sql = "SELECT name FROM up WHERE name=?";

			String username = (String) jdbcTemplate.queryForObject(sql, new Object[] { uname }, String.class);

			String sqll = "SELECT password FROM up WHERE password=?";

			String password = (String) jdbcTemplate.queryForObject(sqll, new Object[] { psw }, String.class);

			if (username.equals(uname) && password.equals(psw))
			{
				String recovered=   "select count(status) from patient where status='recoverd'";
				String death = "select count(status) from patient where status='death'";
				String treatment ="select count(status) from patient where status='treatment'";
				
				Integer recovered1	 = jdbcTemplate.queryForObject(recovered, Integer.class);
				Integer death1 = jdbcTemplate.queryForObject(death,Integer.class);
				Integer treatment1 = jdbcTemplate.queryForObject(treatment, Integer.class);
				
				int total = recovered1+ death1+treatment1;
				

				  ModelAndView m = new ModelAndView();
		           m.addObject("one",total);
		           m.addObject("two",death1);
		           m.addObject("three",recovered1);
		           m.addObject("four",treatment1);
		           m.setViewName("Change");
		   		   return m;
			} else {
				ModelAndView message = new ModelAndView();
				String g = "Invalid User name or password...Please check";

				message.addObject("vimal", g);

				message.setViewName("hi");
				return message;
			}
		} catch (Exception e) {
			ModelAndView message = new ModelAndView();
			String g = "Invalid Username or Password...please check";
			message.addObject("vimal", g);
			message.setViewName("hi");
			return message;
		}

	}

	@RequestMapping(value = "/action", method = RequestMethod.POST)
	public ModelAndView saveUser(@RequestParam String name, @RequestParam String registration,
			@RequestParam String english, @RequestParam String tamil, @RequestParam String science,
			@RequestParam String social,@RequestParam String maths)
	{
		int en = Integer.parseInt(english);
		int ta = Integer.parseInt(tamil);
		int sc = Integer.parseInt(science);
		int so = Integer.parseInt(social);
		int ma = Integer.parseInt(maths);
		
		int to = en + ta + sc + so + ma; 
		int av = to /5;
		
		String total  = String.valueOf(to);
		String average  = String.valueOf(av);
		ModelAndView s = new ModelAndView("sucess2");
		Ticket user = new Ticket(registration,name,english,tamil,science,social,maths,total,average);
		ticketservice.save(user);
		return s;
		
		
		
	}

	@RequestMapping("/a")
	public ModelAndView Table() throws IOException, SQLException {
		
		List<Ticket> h = ticketservice.getall();

		ModelAndView m = new ModelAndView();
		m.addObject("vimal", h);
		m.setViewName("Change2");
		return m;
	}
	
	@RequestMapping("/b")
	public ModelAndView Export() throws SQLException, IOException {
		List<Ticket> h = ticketservice.getall();
		FileOutputStream fout = new FileOutputStream("src/main/java/Students.csv");
		
		
		for (int i = 0; i < h.size(); i++) {
			
			
			
			String s = h.get(i).getRegistration() + "," + h.get(i).getName()+ "," + h.get(i).getEnglish() + ","
					+ h.get(i).getTamil()+ "," + h.get(i).getScience() + "," + h.get(i).getSocial() + ","
					+ h.get(i).getMaths()+ "," + h.get(i).getTotal() +","+h.get(i).getAverage();
			String q = s.toString() + "\n";
			byte[] first = q.getBytes();
			fout.write(first);
		}
		fout.close();
		ModelAndView message = new ModelAndView();
		String z = "Exported Sucessfully";
		message.addObject("message", z);
		message.setViewName("display");
		return message;
		
	}	
}
