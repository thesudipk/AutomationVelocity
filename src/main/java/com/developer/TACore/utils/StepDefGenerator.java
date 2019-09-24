package com.developer.TACore.utils;

 
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URISyntaxException;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.stereotype.Component;

@Component
public class StepDefGenerator {
	 
	public void createStepDef() {
		String result = createDeffromtemplate();
		try {
			writeStepDef(result);
		} catch (FileNotFoundException | URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void writeStepDef(String result) throws FileNotFoundException, URISyntaxException {
		java.net.URL url = SwaggerReaderUtil.class.getResource("/");
		File fullPathToSubfolder = new File(url.toURI()).getAbsoluteFile();
		System.out.println(fullPathToSubfolder.getAbsolutePath());
		String projectFolder = "C:\\AutomationProject\\automation\\src\\test\\java\\com\\test\\automation\\steps";
		File newFile = new File(projectFolder + "/" + "StepDefinition.java");
		try {
			boolean success = newFile.createNewFile();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		// Use try-with-resource to get auto-closeable writer instance
		try (FileWriter writer = new FileWriter(
				// projectFolder + "src/main/resources/features/" + featureFilename + "/" +
				// featureFilename + ".feature");
				projectFolder + "/" + "StepDefinition.java"); BufferedWriter bw = new BufferedWriter(writer)) {
			bw.write(result);
		} catch (IOException e) {
			System.err.format("IOException: %s%n", e);
		}
	}

	private String createDeffromtemplate() {
		String result = null;
		VelocityEngine velocity = new VelocityEngine();
		velocity.init();
		Template template = velocity.getTemplate("src/main/resources/templates/stepdefinitiontemplate.vm");
		VelocityContext context = new VelocityContext();
		StringWriter writer = new StringWriter();
		template.merge(context, writer);
		result = writer.toString();
		return result;
	}
}
