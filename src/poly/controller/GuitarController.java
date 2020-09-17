package poly.controller;

import java.util.List;
import java.sql.SQLException;
import java.time.LocalDateTime; // Import the LocalDateTime class
import java.time.format.DateTimeFormatter; // Import the DateTimeFormatter class

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.javafx.scene.traversal.Hueristic2D;

import poly.entity.GuitarAcc;
import poly.entity.OrderInfo;

@Transactional
@Controller
@RequestMapping("/main/")
public class GuitarController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("Home")
	public String showForm() {		
		return "main/HomePage";
	}

	@RequestMapping("items")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM GuitarAcc";
		Query query = session.createQuery(hql);
		List<GuitarAcc> list = query.list();
		model.addAttribute("items", list);
		return "main/items";
	}
	
	@RequestMapping(value = "Detail/{ID}", method = RequestMethod.GET)
	public String detail(ModelMap model, @PathVariable("ID") int id) {
		Session session = factory.getCurrentSession();
		GuitarAcc gt = (GuitarAcc) session.get(GuitarAcc.class, id);
		model.addAttribute("gtr", gt);
		return "main/Detail";
	}

	@RequestMapping(value = "cart/{ID}", method = RequestMethod.POST)
	public String cart(ModelMap model, @PathVariable("ID") int id, HttpServletRequest request) {	
		String quantity = request.getParameter("quantity");
		request.setAttribute("quantity", quantity);
		Session session = factory.getCurrentSession();
		GuitarAcc gt = (GuitarAcc) session.get(GuitarAcc.class, id);
		float sum = Float.valueOf(quantity) * gt.getPrice();
		model.addAttribute("gtr", gt);
		request.setAttribute("sum", String.valueOf(sum));
		return "main/cart";
	}

	@RequestMapping(value = "order{ID}/{quantity}", method = RequestMethod.GET)
	public String showFormOrder(ModelMap model, @PathVariable("ID") int id, @PathVariable("quantity") int quantity) {
		Session session = factory.getCurrentSession();
		GuitarAcc gt = (GuitarAcc) session.get(GuitarAcc.class, id);
		model.addAttribute("gtr", gt);
		model.addAttribute("quantity", quantity);
		model.addAttribute("or", new OrderInfo());
		return "main/order";
	}

	@RequestMapping(value = "order{ID}/{quantity}", method = RequestMethod.POST)
	public String showFormOrder(ModelMap model, @PathVariable("ID") int id, @PathVariable("quantity") int quantity,@Validated @ModelAttribute("or") OrderInfo or, BindingResult error) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		GuitarAcc gt = (GuitarAcc) session.get(GuitarAcc.class, id);
		model.addAttribute("gtr", gt);
		model.addAttribute("quantity", quantity);
		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		String formattedDate = myDateObj.format(myFormatObj);
		or.setDateTime(formattedDate);
		try {
			session.save(or);
			t.commit();
			return "main/Bill";
		} catch (Exception e) {		
			t.rollback();
		} finally {			
			session.close();
		}
		return "main/order";
	}

}
