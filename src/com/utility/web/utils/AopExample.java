package com.utility.web.utils;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Controller;

@Controller
@Aspect
public class AopExample {
	
	@Before("execution(* com.play.java.web.action.PlayWebAciton..*(..))")
	public void before(JoinPoint joinPoint){
		System.out.println("before advisor signature: " + joinPoint.getSignature().getName());
	}
	
//	@Around("execution(* com.play.java.web.action.PlayWebAciton.execute(..))")
//	public String around(ProceedingJoinPoint joinPoint) throws Throwable{
//		System.out.println("around advisor signature: " + joinPoint.getSignature().getName());
//		return "";
//	}
	
	@After("execution(* com.play.java.web.action.PlayWebAciton..*(..))")
	public void after(JoinPoint joinPoint){
		System.out.println("after advisor signature: " + joinPoint.getSignature().getName());
	}
	
	@AfterReturning(
		      pointcut = "execution(* com.play.java.web.action.PlayWebAciton..*(..))",
		      returning= "result")
	public void afterReturn(JoinPoint joinPoint, Object result){
		System.out.println("afterReturn advisor signature: " + joinPoint.getSignature().getName());
		System.out.println("Method returned value is : " + result);
	}
	
//	@AfterThrowing(
//		      pointcut = "execution(* com.play.java.web.action.PlayWebAciton.execute(..))",
//		      throwing = "error")
//	public void afterThrow(JoinPoint joinPoint, Throwable error){
//		System.out.println("afterThrow advisor signature: " + joinPoint.getSignature().getName());
//		System.out.println("Exception : " + error);
//	}
}
