package com.hit.utility;

import java.text.SimpleDateFormat;
import java.util.Date;

public class IDUtil {
	public static String generateTenderId(){
		String tid = null;
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddhhmmss");
		tid=sdf.format(new Date());
		tid = "T"+tid;
		
		return tid;
	}
	
	
	public static String generateVendorId(){
		String vid = null;
		
		SimpleDateFormat sdf=new SimpleDateFormat("hhmmss");
		vid=sdf.format(new Date());
		vid = "C"+vid;
		
		return vid;
	}
	
	public static String generateApplicationId(){
		return generateBidderId();
	}
	
	public static String generateBidderId(){
		String bidderId = null;
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddhhmmss");
		bidderId =sdf.format(new Date());
		bidderId = "B"+bidderId;
		
		return bidderId;
	}
}
