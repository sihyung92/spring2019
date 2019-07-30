package com.bit.day05;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.Controller;

@org.springframework.stereotype.Controller
public class Ex01Controller implements Controller{
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Override
	@RequestMapping(value="/ex01")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("ex01");
		mav.addObject("msg", "메세지메세지");
		return mav;
	}
	
	@RequestMapping(value="/ex06")
	public void ex06page(HttpServletRequest request) {
		log.debug("ex06 controller...");
		request.setAttribute("msg", "메세지전달");
	}

	@RequestMapping(value="/ex07")
	public View ex07() {
		return new View() {
			@Override
			public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
					throws Exception {
				log.debug("ex07cont, ren"); // view라는건 실은 render에서 집적 출력하는 방식임
				PrintWriter out = response.getWriter();
				out.print("test page");
			}
			
			@Override
			public String getContentType() {
				log.debug("ex07cont, type");
				return null;
			}
		};
	}
	
	@RequestMapping(value="ex08")
	public String ex08(Model model) {
		model.addAttribute("msg","난 ex08에서 넘어온 메세지얌");
		return "ex01";
	}
	
}
