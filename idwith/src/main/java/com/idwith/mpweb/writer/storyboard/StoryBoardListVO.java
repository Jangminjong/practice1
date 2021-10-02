package com.idwith.mpweb.writer.storyboard;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "writerStoryList")
@XmlAccessorType(XmlAccessType.FIELD)
public class StoryBoardListVO {
	
	@XmlElement(name = "writerStory")
	private List<StoryBoardVO> writerStoryList;

	public List<StoryBoardVO> getWriterStoryList() {
		return writerStoryList;
	}

	public void setWriterStoryList(List<StoryBoardVO> writerStoryList) {
		this.writerStoryList = writerStoryList;
	}
	
	
}
