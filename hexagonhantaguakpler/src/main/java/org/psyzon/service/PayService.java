package org.psyzon.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.psyzon.domain.AddMemForPayVO;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.LoadExPayVO;
import org.psyzon.domain.MemForPayVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;
import org.psyzon.domain.ReadyForPayrollVO;

public interface PayService {

	public int insertPayroll(PayrollVO payroll, DeductionVO deduction);
	
	public int insertDeduction(DeductionVO deduction);
	
	public int deletePayroll(int payNo);
	
	public int deleteAllPay(List<Integer> payNoList);
	
	public int modifyPayroll(PayrollVO payroll);
	
	public List<PayrollVO> selectPayByDateOrder(PaySearchVO paySearch);
	
	public List<DeductionVO> selectDeduction(List<Integer> payNoList);
	
	public List<ReadyForPayrollVO> readyForPayroll(PaySearchVO paySearch) throws IOException;
	
	public List<AddMemForPayVO> addMemForPayList(String m_class, String m_condition);
	
	public List<MemForPayVO> memForPay(List<String> m_nuberList);
	
	public List<Map<String, String>> parsedEtc(String etcDeduction) throws IOException;
	
	public List<LoadExPayVO> loadExPay();
	
	public List<String> extractEtcKeys(List<DeductionVO> deductionList);
	
	public int sumTotalPay(PayrollVO payroll);
	
	public int sumTotalDeduction(DeductionVO deduction) throws NumberFormatException;
	
}
