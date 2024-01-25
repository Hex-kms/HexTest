package org.psyzon.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class PayrollVO {

	private int payNo;
	private String m_number;
	private LocalDate payDay;
	private int payOrder;
	private int basePay;
	private int mealPay;
	private int childPay;
	private int jobPay;
	private int carPay;
	private int tenurePay;
	private int dutyPay;
	private int bonusPay;
	private int holidayPay;
}
