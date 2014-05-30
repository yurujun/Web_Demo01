package com.web.test;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		boolean flag = false,flag1 = false;
		for(int i=0;i<101;i++){
			if(i%3 == 0){
				flag = true;
				System.out.println(i+"*");
			}
			if(i%5 == 0){
				flag1 = true;
				System.out.println(i+"#");
			}
			if(flag && flag1){
				System.out.println(i+"*#");
			}
			flag = false;
			flag1 = false;
		}
	}

}
