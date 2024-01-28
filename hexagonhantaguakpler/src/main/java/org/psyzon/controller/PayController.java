package org.psyzon.controller;

import java.time.LocalDate;
import java.util.List;

import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.ReadyForPayrollVO;
import org.psyzon.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pay")
public class PayController {

	@Autowired
	private PayService payService;

	@RequestMapping(value= "/access", method = RequestMethod.GET)
	public String openPayManage(Model model) {

		LocalDate now = LocalDate.now();
		LocalDate previousMonth = now.minusMonths(1);
		int imputedYear = previousMonth.getYear();
		int imputedMonth = previousMonth.getMonthValue();

		PaySearchVO paySearch = new PaySearchVO();
		paySearch.setImputedYear(imputedYear);
		paySearch.setImputedMonth(imputedMonth);
		paySearch.setPayOrder(1);
		paySearch.setM_number("ALL");

		List<ReadyForPayrollVO> readyList = payService.readyForPayroll(paySearch);

		model.addAttribute("readyList", readyList);

		return "payManage";

	}
}