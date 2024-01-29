package org.psyzon.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.ReadyForPayrollVO;
import org.psyzon.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/pay")
public class PayController {

	@Autowired
	private PayService payService;

	@RequestMapping(value = "/access", method = {RequestMethod.GET, RequestMethod.POST})
	public String openPayManage(@RequestParam(name = "imputedYear", required = false) Integer imputedYear,
	        @RequestParam(name = "imputedMonth", required = false) Integer imputedMonth,
	        @RequestParam(name = "payOrder", required = false) Integer payOrder,
	        Model model) throws IOException {
		
		PaySearchVO paySearch = new PaySearchVO();

        // 클라이언트로부터 전달받은 파라미터 값이 null인 경우, 지난달을 기본값으로 설정
        if (imputedYear == null || imputedMonth == null || payOrder == null) {
            LocalDate previousMonth = LocalDate.now().minusMonths(1);
            imputedYear = (imputedYear != null) ? imputedYear : previousMonth.getYear();
            imputedMonth = (imputedMonth != null) ? imputedMonth : previousMonth.getMonthValue();
            payOrder = (payOrder != null) ? payOrder : 1;
        }

		paySearch.setImputedYear(imputedYear);
		paySearch.setImputedMonth(imputedMonth);
		paySearch.setPayOrder(payOrder);
		paySearch.setM_number("ALL");

		List<ReadyForPayrollVO> readyList = payService.readyForPayroll(paySearch);
		List<DeductionVO> deductionList = readyList.stream().map(ReadyForPayrollVO::getDeduction).collect(Collectors.toList());
		List<String> etcList = payService.extractEtcKeys(deductionList);

		model.addAttribute("readyList", readyList);
		model.addAttribute("etcList", etcList);

		return "payManage";

	}
}