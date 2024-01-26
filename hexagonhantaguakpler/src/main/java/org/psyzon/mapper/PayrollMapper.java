package org.psyzon.mapper;

import java.util.List;

import org.psyzon.domain.AddMemForPayVO;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.LoadExPayVO;
import org.psyzon.domain.MemForPayVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;

public interface PayrollMapper {
	
	public int insertPay(PayrollVO payroll);
	
	public int insertDeduction(DeductionVO deduction);
	
	public int updatePay(PayrollVO payroll);
	
	public int updateDeduction(DeductionVO deduction);
	
	public int deletePay(int payNo);
	
	public int deleteAllPay(List<Integer> payNoList);
	
	public List<PayrollVO>selectPayByDateOrder(PaySearchVO paySearch);
	
	public List<DeductionVO> selectDeduction(List<Integer> payNoList);
	
	public List<AddMemForPayVO> addMemForPay(String m_class, String m_condition);
	
	public List<MemForPayVO> memForPay(List<String> m_numberList);
	
	public List<LoadExPayVO> loadExPay();
	

}
