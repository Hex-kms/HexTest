package org.psyzon.domain;

import lombok.Data;

@Data
public class PaySearchVO {
	
	private String m_number;
	private int imputedYear;
	private int imputedMonth;
	private int payOrder;

}
