package org.psyzon.domain;

import java.util.List;

import lombok.Data;

@Data
public class ReadyForPayrollVO {
	
	private MemForPayVO member;
	private PayrollVO payroll;
	private DeductionVO deduction;
	private List<String> keyList;
	private int totalPay;
	private int totalDeduction;
	private int actualPay;
}
