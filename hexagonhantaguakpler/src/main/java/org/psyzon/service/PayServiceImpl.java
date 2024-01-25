package org.psyzon.service;

import java.util.List;

import org.psyzon.domain.AddListForPayVO;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.MemberListVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;
import org.psyzon.mapper.PayrollMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class PayServiceImpl implements PayService {

	@Setter(onMethod_ = @Autowired)
	private PayrollMapper mapper;
	
	@Transactional
	@Override
	public int insertPayroll(PayrollVO payroll, DeductionVO deduction) {
		
		log.info("Take this!........" + payroll);
		
		mapper.insertPay(payroll);
		
		deduction.setPayNo(payroll.getPayNo());
		
		log.info("Except these......." + deduction);
		
		return mapper.insertDeduction(deduction);
	}

	@Override
	public int deletePayroll(int payNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyPayroll(int payNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public List<MemberListVO> getMemList(PaySearchVO paySearch) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AddListForPayVO> getMemSearch(String m_class, String m_condition) {
		// TODO Auto-generated method stub
		return null;
	}
}
