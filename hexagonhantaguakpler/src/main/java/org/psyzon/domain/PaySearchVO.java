package org.psyzon.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class PaySearchVO {
	
	private String m_number;
	private LocalDate payDay;
	private int payOrder;

}
