package org.psyzon.aop;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Aspect
@Log4j
@Component
public class ExceptionLog {
	
	@AfterThrowing(pointcut = "execution(* org.psyzon.service.PayService*.*(..))", throwing="exception")
public void logServiceException(Exception exception) {
	logException("Service", exception);
}
	
	@AfterThrowing(pointcut = "execution(* org.psyzon.controller.PayController*.*(..))",throwing="exception")
	public void logControllerException(Exception exception) {
		
		logException("Controlloer", exception);
		
	}
	
	/*
	 * @AfterThrowing(pointcut =
	 * "execution(*org.psyzon.mapper.PayrollMapper.*(..))", throwing="exception")
	 * public void logMapperException(Exception exception) { logException("Mapper",
	 * exception); }
	 */
	
	private void logException(String layer, Exception exception) {
		log.error("♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨♨");
		log.error("........Exception in " + layer + " Layer........!!!!!!");
		log.error("Exception: " + exception);
	}

}
