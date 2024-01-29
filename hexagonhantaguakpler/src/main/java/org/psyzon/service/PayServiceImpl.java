package org.psyzon.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.psyzon.domain.AddMemForPayVO;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.LoadExPayVO;
import org.psyzon.domain.MemForPayVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;
import org.psyzon.domain.ReadyForPayrollVO;
import org.psyzon.mapper.PayrollMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.Setter;

@Service
public class PayServiceImpl implements PayService {
	
	// 사용할 mapper
	@Setter(onMethod_ = @Autowired)
	private PayrollMapper mapper;
	
	
	// 급여 테이블에 insert하는 메서드로, 해당 급여의 공제내용도 같이 insert 함
	@Transactional
	@Override
	public int insertPayroll(PayrollVO payroll, DeductionVO deduction) {
		
		mapper.insertPay(payroll);
		
		deduction.setPayNo(payroll.getPayNo());
		
		return insertDeduction(deduction);
	}
	
	@Override
	public int insertDeduction(DeductionVO deduction) {
		
		return mapper.insertDeduction(deduction);
	}

	@Override
	public int deletePayroll(int payNo) {
		
		return mapper.deletePay(payNo);
	}
	
	@Override
	public int deleteAllPay(List<Integer> payNoList) {
		
		return mapper.deleteAllPay(payNoList);
	}


	@Override
	public int modifyPayroll(PayrollVO payroll) {
		
		return mapper.updatePay(payroll);
	}

	
	/*급여입력관리 페이지 접속시 귀속연월과 급여차수에 따른 급여내역을 select 하고,
	 * 해당 급여와 연관된 사원정보와 공제내역까지 가져온다 */
	@Override
	public List<ReadyForPayrollVO> readyForPayroll(PaySearchVO paySearch) throws IOException {
		List<PayrollVO> payrollList = selectPayByDateOrder(paySearch);
		
		if(payrollList.isEmpty()) {
			return Collections.emptyList();
		}
		
		//연관 Deduction을 찾기 위해 payroll_no 추출
		List<Integer> payNoList = payrollList.stream().map(PayrollVO::getPayNo).collect(Collectors.toList());
		
		List<DeductionVO> deductionList = selectDeduction(payNoList);
		//기타 공제 내역을 파싱하는 과정
		for (DeductionVO deduction : deductionList) {
			if (deduction.getEtcDeduction() != null && !deduction.getEtcDeduction().isEmpty()) {
				List<Map<String, String>> parsedEtc = parsedEtc(deduction.getEtcDeduction());
				deduction.setParsedEtc(parsedEtc);
			} else {
				deduction.setParsedEtc(new ArrayList<>());
			}
		}
	

		//사원번호를 추출하여 연관된 사원정보 검색
		List<String> m_numberList = payrollList.stream().map(PayrollVO::getM_number).collect(Collectors.toList());
		List<MemForPayVO> memberList = memForPay(m_numberList);
		
		List<ReadyForPayrollVO> readyForPayList = new ArrayList<>();
		
		// 찾아낸 결과물들을 관련된 행끼리 모으는 작업
		for (PayrollVO payroll : payrollList) {
			ReadyForPayrollVO readyForPay = new ReadyForPayrollVO();
			readyForPay.setPayroll(payroll);
			
			DeductionVO deduction = deductionList.stream().filter(d -> d.getPayNo() == payroll.getPayNo()).findFirst().orElse(null);
			readyForPay.setDeduction(deduction);
			
			MemForPayVO member = memberList.stream().filter(m -> m.getM_number().equals(payroll.getM_number())).findFirst().orElse(null);
			readyForPay.setMember(member);
			
			int totalPay = sumTotalPay(payroll);
			int totalDeduction = sumTotalDeduction(deduction);
			int actualPay = totalPay - totalDeduction;
			readyForPay.setTotalPay(totalPay);
			readyForPay.setTotalDeduction(totalDeduction);
			readyForPay.setActualPay(actualPay);
			
			readyForPayList.add(readyForPay);
			
		}
		
		return readyForPayList;
	}

	// 신규 급여지급을 위한 사원검색
	@Override
	public List<AddMemForPayVO> addMemForPayList(String m_class, String m_condition) {
		
		return mapper.addMemForPay(m_class, m_condition);
	}

	@Override
	public List<PayrollVO> selectPayByDateOrder(PaySearchVO paySearch) {
		
		return mapper.selectPayByDateOrder(paySearch);
	}

	@Override
	public List<DeductionVO> selectDeduction(List<Integer> payNoList) {
		
		return mapper.selectDeduction(payNoList);
	}

	@Override
	public List<MemForPayVO> memForPay(List<String> m_numberList) {
		
		return mapper.memForPay(m_numberList);
	}

	
	private final ObjectMapper objectMapper = new ObjectMapper();
	/*Deduction 테이블의 ETC_DEDUCTION 열을 JSON 형식으로 다루기 위한 메서드로,
	ETC_DEDUCTION의 데이터를 Map<이름, 값>형태로 파싱하여 배열에 담는다*/
	@Override
	public List<Map<String, String>> parsedEtc(String etcDeduction) throws IOException {
		List<Map<String, String>> parsedList = new ArrayList<>();
		
		String [] rows = etcDeduction.split(",");
		
		for(String row : rows) {
			Map<String, String> map = objectMapper.readValue(row, new TypeReference<Map<String, String>>(){});
			parsedList.add(map);
		}
		
	    
	    return parsedList;
	}
	/*위의 파싱을 위해 pom.xml에 추가해야하는 내용:
	<dependency>
	<groupId>org.json</groupId>
	<artifactId>json</artifactId>
	<version>20210307</version>
	</dependency>*/
	
	@Override
	public List<LoadExPayVO> loadExPay() {
		
		return mapper.loadExPay();
	}
	//String.format("%02d", loadExPay.getImputedMonth()) + "월 ") 이런식으로 01월 같은 문자열 형태로 표현가능
	
	

	//기타공제항목의 키값들을 추출하는 메서드
	@Override
	public List<String> extractEtcKeys(List<DeductionVO> deductionList) {
		Set<String> uniqueKeys = new HashSet<>();
		for (DeductionVO deduction : deductionList) {
			if (deduction.getParsedEtc() != null) {
				for (Map<String, String> etcMap : deduction.getParsedEtc()) {
					uniqueKeys.addAll(etcMap.keySet());
				}
			}
		}
		return new ArrayList<>(uniqueKeys);
	}

	@Override
	public int sumTotalPay(PayrollVO payroll) {
		int totalPay = 0;
		
		totalPay += payroll.getBasePay();
		totalPay += payroll.getMealPay();
		totalPay += payroll.getChildPay();
		totalPay += payroll.getJobPay();
		totalPay += payroll.getCarPay();
		totalPay += payroll.getTenurePay();
		totalPay += payroll.getDutyPay();
		totalPay += payroll.getBonusPay();
		totalPay += payroll.getHolidayPay();
		return totalPay;
	}

	@Override
	public int sumTotalDeduction(DeductionVO deduction) throws NumberFormatException {
		
		int totalDeduction = 0;
		totalDeduction += deduction.getNationalPension();
		totalDeduction += deduction.getHealthInsurance();
		totalDeduction += deduction.getLongInsurance();
		totalDeduction += deduction.getEmpInsurance();
		totalDeduction += deduction.getIncomeTax();
		totalDeduction += deduction.getResidentTax();
		
	    // parsedEtc의 값들을 숫자로 변환하여 합산
	    if (deduction.getParsedEtc() != null) {
	        for (Map<String, String> etc : deduction.getParsedEtc()) {
	            for (String value : etc.values()) {
	             
	                    totalDeduction += Integer.parseInt(value);
	               
	            }
	        }
	    }
	    
		return totalDeduction;
		
	}
	
	
	
	
	

}
