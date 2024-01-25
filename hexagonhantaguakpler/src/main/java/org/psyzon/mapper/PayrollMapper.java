package org.psyzon.mapper;

import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.PayrollVO;

public interface PayrollMapper {
	
	public int insertPay(PayrollVO payroll);
	
	public int insertDeduction(DeductionVO deduction);
	
	public int updatePay(PayrollVO payroll);
	
	public int updateDeduction(DeductionVO deduction);
	
	public int deletePay(String m_number);
	
	public int selectPayByDateOrder();
	
	public int selectDudection();

}
