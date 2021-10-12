package com.idwith.mpweb.writer.service;


public interface WriterService {

	int follower(int sellerCode);
	
	int todayOrder(int sellerCode);

	void enrollmentCancle(int sellerCode);
	
}
