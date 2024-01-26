package org.psyzon.domain;

import lombok.Data;

@Data
public class ReadyForPayrollVO {
	
	private MemForPayVO member;
	private PayrollVO payroll;
	private DeductionVO deduction;

}
