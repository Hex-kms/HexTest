package org.psyzon.domain;

import lombok.Data;

@Data
public class DeductionVO {

	private int payNo;
	private int nationalPension;
	private int healthInsurance;
	private int longInsurance;
	private int empInsurance;
	private int incomeTax;
	private int residentTax;
	private String etcDeduction;
}
