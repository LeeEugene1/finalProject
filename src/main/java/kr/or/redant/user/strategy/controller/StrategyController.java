package kr.or.redant.user.strategy.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/strategy/")
public class StrategyController {
	
	@RequestMapping("investmentStrategy")
	public void investmentStrategyList(){}
	
	@RequestMapping("strategySimulator")
	public void strategySimulator(){}
	
}
