package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoryController {
	
	@GetMapping("/writerStory.wdo")
	public String writerStory() {
		return "writerStory";
	}
	
	@GetMapping("/insertStory.wdo")
	public String insertStory() {
		return "insertStory";
	}
	
	@GetMapping("/storyModify.wdo")
	public String storyModify() {
		return "storyModify";
	}

}
