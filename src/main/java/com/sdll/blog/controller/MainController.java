package com.sdll.blog.controller;

import com.sdll.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sdll.blog.vo.ExecResult;
import com.sdll.blog.pojo.BlogUser;
import com.sdll.blog.service.IUserService;

@Controller
public class MainController {

	@Autowired
	private IUserService userService;

	@RequestMapping(value={"","/"})
	public ModelAndView toIndex(){
		ModelAndView view = new ModelAndView("../../index");
//		List<Menu> menuList = menuService.listMenu();
//		InformationTool.getInformation(view, menuList);
		return view;
	}

	@RequestMapping("/blog")
	public ModelAndView blog(){
		ModelAndView view = new ModelAndView("plugins/note");
		BlogUser user = userService.userLogin("sdll");
		System.out.print("------------------"+user.toString());
		return view;
	}

//
//	@RequestMapping("/validate")
//	public void validate(HttpSession session , HttpServletRequest request , HttpServletResponse response) throws IOException{
//		String key = RandomValidateCodeGenerator.randKey(4);
//		try {
//			Map.Entry<String, BufferedImage> randCode = new RandomValidateCodeGenerator().getRandCode(key);
//			session.setAttribute(Conts.VALIDATE_CODE_KEY, randCode.getKey());
//			ImageIO.write(randCode.getValue(), "JPEG", response.getOutputStream());
//		} catch (Exception e) {
//			System.out.println("生成验证码图片失败了!");
//			e.printStackTrace();
//		}
//	}
//
//	@RequestMapping("/userLogin")
//	@ResponseBody
//	public ExecResult userLogin(User user , HttpSession session){
//		ExecResult er = new ExecResult();
//		User usertemp = null;
//		String validateCode = (String) session.getAttribute(Conts.VALIDATE_CODE_KEY);
//		if (!user.getValidateCode().equalsIgnoreCase(validateCode)) {
//			er.setMsg("验证码错误！");
//			return er;
//		}
//		if (!StringUtils.isNotBlank(user.getUserPhone())) {
//			er.setMsg("登陆失败，请刷新页面试试");
//			return er;
//		}
//		usertemp = userService.userLogin(user.getUserPhone());
//		if (usertemp == null) {
//			er.setMsg("账户不存在！");
//			return er;
//		}
//		if (!user.getUserPassword().equals(usertemp.getUserPassword())) {
//			er.setMsg("账号或者密码错误！");
//			return er;
//		}
//		session.setAttribute(Conts.USER_SESSION_KEY, usertemp);
//		er.setSuccess(true);
//		er.setMsg("登陆成功");
//		return er;
//	}
//
//	@RequestMapping("/logOut")
//	public ModelAndView logOut(HttpSession session){
//		session.invalidate();
//		ModelAndView view = new ModelAndView("/index");
//		List<Menu> menuList = menuService.listMenu();
//		InformationTool.getInformation(view, menuList);
//		return view;
//	}
//
//
//
	
	

}
