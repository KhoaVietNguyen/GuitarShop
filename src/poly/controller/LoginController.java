package poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import poly.entity.AdminLogin;
import poly.entity.GuitarAcc;
import poly.entity.OrderInfo;

@Transactional
@Controller
@RequestMapping("/main/")
public class LoginController {
	@Autowired
	SessionFactory factory;

	public boolean flag;

	@RequestMapping("logout")
	public String show() {
		flag = false;
		return "main/Login";
	}

	@RequestMapping("itemslist{number}")
	public String showList(ModelMap model, @PathVariable("number") int number) {
		if (flag == true) {
			formItems(model, number);
			model.addAttribute("num", number);
			return "main/manage";
		}
		return "main/Login";
	}

	public List<AdminLogin> get() {
		Session session = factory.getCurrentSession();
		String hql = "FROM AdminLogin";
		Query query = session.createQuery(hql);
		List<AdminLogin> list = query.list();
		return list;
	}

	public void formItems(ModelMap model, int number) {
		Session session = factory.getCurrentSession();
		float pageSize = 4;
		String countQ = "Select count (g.ID) from GuitarAcc g";
		Query countQuery = session.createQuery(countQ);
		float countResults = (long) countQuery.uniqueResult();
		int lastPageNumber = (int) (Math.ceil(countResults / pageSize));
		model.addAttribute("numberpage", lastPageNumber);
		Query selectQuery = session.createQuery("FROM GuitarAcc");
		selectQuery.setFirstResult((int) ((number - 1) * pageSize));
		selectQuery.setMaxResults((int) pageSize);
		List<GuitarAcc> lastPage = selectQuery.list();
		model.addAttribute("gtr", lastPage);
	}

	@RequestMapping(value = "Login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		if (flag == true) {
			formItems(model, 1);
			return "main/manage";
		}
		return "main/Login";
	}

	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(ModelMap model, @RequestParam("name") String username, @RequestParam("pass") String password) {
		Session session = factory.getCurrentSession();
		String hql = "FROM AdminLogin ad where ad.Username='" + username + "' and ad.Password='" + password + "'";
		Query query = session.createQuery(hql);
		List<AdminLogin> list = query.list();
		if (list.isEmpty()) {
			model.addAttribute("message", "Kiểm tra lại thông tin đăng nhập!");
		} else {
			flag = true;
			formItems(model, 1);
			return "main/manage";
		}
		return "main/Login";
	}

	@RequestMapping("ListBill")
	public String list(ModelMap model) {
		if (flag == true) {
			Session session = factory.getCurrentSession();
			String hql = "FROM OrderInfo";
			Query query = session.createQuery(hql);
			List<OrderInfo> list = query.list();
			model.addAttribute("bill", list);
			return "main/OrderList";
		}
		return "main/Login";
	}

	@RequestMapping("delete/{ID}")
	public String delete(ModelMap model, @PathVariable("ID") int id) {
		if (flag == true) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			GuitarAcc gt = (GuitarAcc) session.get(GuitarAcc.class, id);
			try {
				session.delete(gt);
				t.commit();
				model.addAttribute("message", "Xóa thành công!");
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
				formItems(model, 1);
			}
			return "main/manage";
		}
		return "main/Login";
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		if (flag == true) {
			model.addAttribute("gtr", new GuitarAcc());
			return "main/insert";
		}
		return "main/Login";
	}

	@Autowired
	ServletContext context;

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @Validated @ModelAttribute("gtr") GuitarAcc gtr, BindingResult error,
			@RequestParam("img") MultipartFile photo) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		System.out.println(photo);
		model.addAttribute("n",photo);
		if (photo.isEmpty() == false && error.hasErrors() == false) {
			try {
				byte[] img = photo.getBytes();
				gtr.setImage(img);
				session.save(gtr);
				t.commit();
				model.addAttribute("message", "Thêm thành công!");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", e);
			} finally {
				formItems(model, 1);
				session.close();
			}
			return "main/manage";
		} else {
			model.addAttribute("message", "Vui lòng chọn ảnh!");
		}
		return "main/insert";
	}

	byte[] imgbk;

	@RequestMapping("edit/{ID}")
	public String edit(ModelMap model, @PathVariable("ID") int id) {
		if (flag == true) {
			Session session = factory.getCurrentSession();
			GuitarAcc gtr = (GuitarAcc) session.get(GuitarAcc.class, id);
			imgbk = gtr.getImage();
			model.addAttribute("gtr", gtr);
			return "main/update";
		}
		return "main/Login";
	}

	@RequestMapping(value = "update")
	public String edit(ModelMap model, @Validated @ModelAttribute("gtr") GuitarAcc gtr, BindingResult error,
			@RequestParam("img") MultipartFile photo) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if (photo.isEmpty()) {
				gtr.setImage(imgbk);
			} else {
				byte[] img = photo.getBytes();
				gtr.setImage(img);
			}

			System.out.println(gtr.getPrice());

			session.update(gtr);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công!");
			formItems(model, 1);
			return "main/manage";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", e);
		}
		return "main/update";
	}

	@RequestMapping("deleteBill{ID}")
	public String deleteBill(ModelMap model, @PathVariable("ID") int id) {
		if (flag == true) {
			Session session = factory.openSession();
			OrderInfo gt = (OrderInfo) session.get(OrderInfo.class, id);
			Transaction t = session.beginTransaction();
			try {
				session.delete(gt);
				t.commit();
				model.addAttribute("message", "Xóa thành công!");
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", e);
			} finally {
				session.close();
				list(model);
			}
			return "main/OrderList";
		}
		return "main/Login";
	}
}
