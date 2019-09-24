package com.developer.TACore;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.developer.TACore.utils.FolderGenerator;
import com.developer.TACore.utils.PomfileGenerator;
import com.developer.TACore.utils.RunnerGenerator;
import com.developer.TACore.utils.StepDefGenerator;
import com.developer.TACore.utils.SwaggerReaderUtil;

public class MyTest {
	public static void main(String[] args) {  
		SwaggerReaderUtil swaggerReaderUtil = new SwaggerReaderUtil();
		FolderGenerator folderGenerator = new FolderGenerator();
		PomfileGenerator pomfileGenerator = new PomfileGenerator();
		RunnerGenerator runnerGenerator = new RunnerGenerator();
		StepDefGenerator stepDefGenerator = new StepDefGenerator();
		
		swaggerReaderUtil.swaggerReader();
		folderGenerator.createmavenproject();
		swaggerReaderUtil.swaggerReader();
		pomfileGenerator.createpom();
		runnerGenerator.createrunner();
		stepDefGenerator.createStepDef();
	}
}
