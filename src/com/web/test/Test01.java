package com.web.test;

import java.util.ArrayList;
import java.util.List;

public class Test01 {

	public static void main(String[] args) {
		List<Integer> temp = new ArrayList<Integer>();
		for(int i=1;i<=4;i++){
			temp.add(i);
		}
		showArr(temp);          //输入展示
		showArr(getFn(temp));   //输出展示
	}
	
	public static void showArr(List<Integer> param){
		for(int i=0;i<param.size();i++){
			System.out.println(param.get(i));
		}
	}
	
	public static List<Integer> getFn(List<Integer> param){
		List<Integer> fn = new ArrayList<Integer>();
		int count = 0;
		for(int i=0;i<param.size();i++){
			for(int a=1;a<=param.get(i);a++){
				for(int b=1;b<=param.get(i);b++){
					if(param.get(i) % (a*b) == 0){
						count++;
					}
				}
			}
			fn.add(count);
			count = 0;
		}
		return fn;
	}
}
