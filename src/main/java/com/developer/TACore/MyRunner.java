package com.developer.TACore;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.developer.TACore.utils.FolderGenerator;
import com.developer.TACore.utils.PomfileGenerator;
import com.developer.TACore.utils.RunnerGenerator;
import com.developer.TACore.utils.SwaggerReaderUtil;

@Component
public class MyRunner implements CommandLineRunner {

	private static final Logger logger = LoggerFactory.getLogger(MyRunner.class);

	@Autowired
	private SwaggerReaderUtil swaggerReaderUtil;
	
	@Autowired
	FolderGenerator folderGenerator;
	
	@Autowired
	PomfileGenerator pomfileGenerator;
	
	@Autowired
	RunnerGenerator runnerGenerator;

	@Override
	public void run(String... args) {

		logger.info("swaggerReaderUtil: {}");
		folderGenerator.createmavenproject();
		swaggerReaderUtil.swaggerReader();
		pomfileGenerator.createpom();
		runnerGenerator.createrunner();
		
		//folderGenerator.createtestfolders();

	}
}
