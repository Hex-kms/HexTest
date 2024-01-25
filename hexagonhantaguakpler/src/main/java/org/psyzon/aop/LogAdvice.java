package org.psyzon.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.psyzon.domain.DeductionVO;
import org.psyzon.domain.PayrollVO;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Aspect
@Log4j
@Component
public class LogAdvice {
	
	@Before( "execution(* org.psyzon.service.SampleService*.*(..))")
	public void logBeforee() {
		log.info("==============");
	}


	  @Before("execution(* org.psyzon.service.PayService*.*(..))")
	  public void logBefore() {
	  
	  log.info("======================"); 
	  }
	
	@Before("execution(* org.psyzon.service.PayService*.insertPayroll(PayrollVO,DeductionVO)) && args(payroll, payroll)")
	public void logBeforeWithParam(PayrollVO payroll, DeductionVO deduction) {
		log.info("payment: " + payroll);
		log.info("deduction: " + deduction);
	}
	
	@AfterThrowing(pointcut = "execution(* org.psyzon.service.PayService*.*(..))", throwing="exception")
public void logException(Exception exception) {
	
	log.info("Exception....!!!!");
	log.info("exception: "+ exception);
}
	
	@Around("execution(* org.psyzon.service.PayService*.*(..))")
	public Object logTime( ProceedingJoinPoint pjp) {
		long start = System.currentTimeMillis();
				
				log.info("Target: " + pjp.getTarget());
				log.info("Param: " + Arrays.deepToString(pjp.getArgs()));
				
				//invoke method
				Object result = null;
				
				try {
					result = pjp.proceed();
				} catch (Throwable e) {
					e.printStackTrace();
				}
				
				long end = System.currentTimeMillis();
				
				log.info("TIME: " + (end - start));
				
				return result;
	}
}
