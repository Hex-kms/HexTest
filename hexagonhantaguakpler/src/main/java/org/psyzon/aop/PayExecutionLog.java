package org.psyzon.aop;

import java.util.Arrays;
import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.PaySearchVO;
import org.psyzon.domain.PayrollVO;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Aspect
@Log4j
@Component
public class PayExecutionLog {


	  @Before("execution(* org.psyzon.service.PayService*.*(..))")
	  public void logBefore() {
	  
	  log.info("=========METHOD============="); 
	  }
	  
	  @Before("execution(* org.psyzon.service.PayService*.*(..))")
	  public void logBeforeMethod(JoinPoint joinPoint) {
		  log.info("Before method: " + joinPoint.getSignature().getName());
	  }
	  
	  

	@Before("execution(* org.psyzon.service.PayService*.insertPayroll(org.psyzon.domain.PayrollVO,org.psyzon.domain.DeductionVO)) && args(payroll, deduction)")
	public void logBeforeWithParam(PayrollVO payroll, DeductionVO deduction) {
		log.info("payment: " + payroll);
		log.info("deduction: " + deduction);
	}

	@Before("execution(* org.psyzon.service.PayService.selectDeduction(..)) && args(payNoList)")
	public void logPayNoList(List<Integer> payNoList) {
	    log.info("PayNoList values before calling selectDeduction: " + payNoList);
	}
	
	
	
	@Around("execution(* org.psyzon.service.PayService*.*(..)) || execution(* org.psyzon.mapper..*.*(..))")
	public Object logTime( ProceedingJoinPoint pjp) throws Throwable {
		long start = System.currentTimeMillis();
				
				String className = pjp.getSignature().getDeclaringTypeName();
				String methodName = pjp.getSignature().getName();
				log.info("Target: " + className + "." + methodName);
				log.info("Param: " + Arrays.deepToString(pjp.getArgs()));
				
				//invoke method
				Object result = pjp.proceed();
				
				log.info("Result: " + result);

				
				long end = System.currentTimeMillis();
				
				log.info("TIME: " + (end - start));
				
				return result;
	}
}
