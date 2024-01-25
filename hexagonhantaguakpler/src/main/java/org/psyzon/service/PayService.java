package org.psyzon.service;

import java.util.List;

import org.psyzon.domain.AddListForPayVO;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.MemberListVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;

public interface PayService {

	public int insertPayroll(PayrollVO payroll, DeductionVO deduction);
	
	public int deletePayroll(int payNo);
	
	public int modifyPayroll(int payNo);
	
	public List<MemberListVO> getMemList(PaySearchVO paySearch);
	
	public List<AddListForPayVO> getMemSearch(String m_class, String m_condition);
}
