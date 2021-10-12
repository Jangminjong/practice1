package com.idwith.mpweb.writer.service;

import java.sql.Time;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassOpenDAO;
import com.idwith.mpweb.writer.WriterClassOpenVO;

@Service("classOpenService")
public class ClassOpenServiceImpl implements ClassOpenService {
	
	@Autowired
	WriterClassOpenDAO writerClassOpenDAO;
	
	@Override
	public String classTimeCheck(WriterClassOpenVO writerClassOpenVO) {
		if (writerClassOpenVO.getClassOpenInputTime().length() == 5) {
			writerClassOpenVO.setClassOpenTime(Time.valueOf(writerClassOpenVO.getClassOpenInputTime()+":00"));
		}
		if (writerClassOpenVO.getClassCloseInputTime().length() == 5) {
			writerClassOpenVO.setClassCloseTime(Time.valueOf(writerClassOpenVO.getClassCloseInputTime()+":00"));
		}
		List<WriterClassOpenVO> crossTimeList = writerClassOpenDAO.classTimeCheck(writerClassOpenVO);
		String result = "0";
		if (crossTimeList.size() >= 1) {
			result = "1";
			for(WriterClassOpenVO crossTime : crossTimeList) {
				System.out.println("겹친 클래스명" +crossTime.getClassOpenName());
				System.out.println("겹친 시작시간 " + crossTime.getClassOpenTime());
				System.out.println("겹친 종료시간 " + crossTime.getClassCloseTime());			
			}
		}	
		return result;
	}

	@Override
	public void classOpenInsert(WriterClassOpenVO writerClassOpenVO) {
		writerClassOpenVO.setClassOpenTime(Time.valueOf(writerClassOpenVO.getClassOpenInputTime()+":00"));
		writerClassOpenVO.setClassCloseTime(Time.valueOf(writerClassOpenVO.getClassCloseInputTime()+":00"));
		writerClassOpenDAO.insertClassOpen(writerClassOpenVO);
		
	}

	@Override
	public int countClassOpen(int classOpenSeller) {
		return writerClassOpenDAO.getClassOpenCount(classOpenSeller);
	}

	@Override
	public List<WriterClassOpenVO> getWriterClassOpenList(PagingVO pagingVO) {
		return writerClassOpenDAO.getClassOpenList(pagingVO);
	}

	@Override
	public WriterClassOpenVO getWriterClassOpen(int classOpenSeq) {
		WriterClassOpenVO classOpen = writerClassOpenDAO.getClassOpen(classOpenSeq);
		return classOpen;
	}

	@Override
	public void classOpenUpdate(WriterClassOpenVO writerClassOpenVO) {
		if (writerClassOpenVO.getClassOpenInputTime().length() == 5) {
			writerClassOpenVO.setClassOpenTime(Time.valueOf(writerClassOpenVO.getClassOpenInputTime()+":00"));
		}
		if (writerClassOpenVO.getClassCloseInputTime().length() == 5) {
			writerClassOpenVO.setClassCloseTime(Time.valueOf(writerClassOpenVO.getClassCloseInputTime()+":00"));
		}
		writerClassOpenDAO.updateClassOpen(writerClassOpenVO);
		
	}

	@Override
	public void classOpenDelete(WriterClassOpenVO classOpenVO) {
		writerClassOpenDAO.deleteClassOpen(classOpenVO);
		
	}
 
}
 