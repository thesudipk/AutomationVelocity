package com.developer.TACore.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

//import org.junit.Assert;
import org.junit.Test;
import org.springframework.stereotype.Component;

@Component
public class FolderGenerator {

	private String basefolder = "C:\\Featurefile";
	private String src = "src";
	private String main = "main";
	private String java = "java";
	private String resources = "resources";
	private String test = "test";

	private String stepdeffolder = "";
	private String featurefilefolder = "";
	private String pomfile = "pom.xml";

	private static final boolean IS_WINDOWS = System.getProperty("os.name").toLowerCase().startsWith("windows");

	public static void main (String ...arg) {
		FolderGenerator FolderGenerator = new FolderGenerator();
		FolderGenerator.createmavenproject();
	}
	public void createmavenproject() {

		boolean isWindows = System.getProperty("os.name").toLowerCase().startsWith("windows");

		System.out.println("isWindows >" + isWindows);

		createfolder("C:\\AutomationProject");
		
		
		
		String mvncmd = "cd \"C:\\AutomationProject\" &&mvn archetype:generate -DgroupId=com.test.automation -DartifactId=automation -DinteractiveMode=false";
		String cmd = "cd \"C:\\AutomationProject\" && dir";
		try {
			ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", mvncmd);
			builder.redirectErrorStream(true);
			Process p = builder.start();
			BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line;
			while (true) {
				line = r.readLine();
				if (line == null) {
					break;
				}
				System.out.println(line);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		createfolder("C:\\AutomationProject\\automation\\src\\main\\resources");
		createfolder("C:\\AutomationProject\\automation\\src\\test\\resources\\features");
		createfolder("C:\\AutomationProject\\automation\\src\\test\\java\\com\\test\\automation\\steps");
		
		
	}

	public void createfolder(String foldername) {

		File files = new File(foldername);
		if (!files.exists()) {
			if (files.mkdirs()) {
				System.out.println("Multiple directories are created!");
			} else {
				System.out.println("Failed to create multiple directories!");
			}
		}
	}
	
	
}
