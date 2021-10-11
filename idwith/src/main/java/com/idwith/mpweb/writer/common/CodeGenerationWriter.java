package com.idwith.mpweb.writer.common;

import java.util.Random;

public class CodeGenerationWriter {
	
	private int certNumLength = 6;
	   
	   public int excuteGenerate() {
	      Random random = new Random(System.currentTimeMillis());
	      
	      int range = (int)Math.pow(10, certNumLength);
	      int trim = (int)Math.pow(10, certNumLength-1);
	      int result = random.nextInt(range) + trim;
	      
	      if(result > range) {
	         result = result - trim;
	      }
	      
	      int resultNumber = Integer.parseInt(String.valueOf(result));
	      
	      return resultNumber;
	   }

	   public int getCertNumLength() {
	      return certNumLength;
	   }

	   public void setCertNumLength(int certNumLength) {
	      this.certNumLength = certNumLength;
	   }


}
