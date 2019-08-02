package com.bit.day09.aop;

import java.lang.reflect.Method;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AspectJRun {
	
	@Before("execution(* com.bit.day09.model.Day09DaoImpl.*(..))")	
	public void before(JoinPoint joinPoint) {
		System.out.println("before run...");
	}
	
	@AfterReturning(value = "execution(* com.bit.day09.model.Day09DaoImpl.*(..))",returning="obj")
	public void after(JoinPoint joinPoint, Object obj) {
		System.out.println("after run..." + obj);
	}
	
	public void around(ProceedingJoinPoint joinPoint) {
		System.out.println("around before run...");
		try {
			joinPoint.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		System.out.println("around after run...");
	}
}
