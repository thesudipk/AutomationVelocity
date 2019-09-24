package com.developer.TACore.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.stereotype.Component;

import com.developer.TACore.model.Endpoint;
import io.swagger.models.HttpMethod;
import io.swagger.models.Operation;
import io.swagger.models.Path;
import io.swagger.models.Response;
import io.swagger.models.Swagger;
import io.swagger.models.parameters.Parameter;
import io.swagger.parser.SwaggerParser;

/**
 * Swagger Reader - which reads the YAML File and convert into respective API
 * features based on the standard template
 * 
 * @author Anitha
 *
 */
@Component
public class SwaggerReaderUtil {

	/**
	 * Reads YAML file and convert into feature file
	 */
	public void swaggerReader() {
		File fileJSON = getFileFromResources("swagger.yaml");
		Swagger swagger = new SwaggerParser().read(fileJSON.getPath());
		Map<String, Path> paths = swagger.getPaths();
		List<Endpoint> eachPath = new ArrayList<>();
		for (Map.Entry<String, Path> p : paths.entrySet()) {
			Path path = p.getValue();
			Map<HttpMethod, Operation> operations = path.getOperationMap();
			for (Entry<HttpMethod, Operation> o : operations.entrySet()) {
				Endpoint ep = new Endpoint();
				List<String> parametersl = new ArrayList<>();
				for (Parameter parameter : o.getValue().getParameters()) {
					parametersl.add(parameter.getName());
				}
				List<String> responsesl = new ArrayList<>();
				for (Map.Entry<String, Response> r : o.getValue().getResponses().entrySet()) {
					responsesl.add(r.getKey());
				}
				ep.setBaseURL(swagger.getSchemes().get(0) + "://" + swagger.getHost() + swagger.getBasePath());
				ep.setPath(p.getKey());

				String consume = "";
				if (o.getValue().getConsumes() != null)
					consume = String.join(", ", o.getValue().getConsumes());

				String produce = "";
				if (o.getValue().getProduces() != null)
					produce = String.join(", ", o.getValue().getProduces());

				String tag1 = "default";
				if (o.getValue().getTags() != null)
					tag1 = o.getValue().getTags().get(0);

				ep.setConsumes(consume);
				ep.setHttpMethod(o.getKey().toString());
				ep.setParameters(parametersl);
				ep.setProduces(produce);
				ep.setResponses(responsesl);
				ep.setSummary(o.getValue().getSummary());
				ep.setTags(tag1);
				eachPath.add(ep);
			}
		}

		featureGeneration(eachPath);
	}

	/**
	 * Generate the feature file for each webservice.
	 * 
	 * @param eachPath
	 */
	private void featureGeneration(List<Endpoint> eachPath) {
		Map<String, List<Endpoint>> groupBytags = eachPath.stream().collect(Collectors.groupingBy(Endpoint::getTags));

		for (Map.Entry<String, List<Endpoint>> groupBytag : groupBytags.entrySet()) {
			try {
				createResourceSubFolder(groupBytag.getKey());
				String result = createfeature(groupBytag.getValue(), groupBytag.getKey());
				writeFeature(result, groupBytag.getKey());
			} catch (URISyntaxException | IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	/**
	 * Reads standard velocity template and create a respective feature files
	 * 
	 * @param eachPath
	 * @param tags
	 * @return
	 */
	private String createfeature(List<Endpoint> eachPath, String tags) {
		String result = null;
		VelocityEngine velocity = new VelocityEngine();
		velocity.init();
		Template template = velocity.getTemplate("src/main/resources/templates/featurefile.vm");
		VelocityContext context = new VelocityContext();
		context.put("webservice", eachPath);
		context.put("tags", tags);
		StringWriter writer = new StringWriter();
		template.merge(context, writer);
		result = writer.toString();
		return result;
	}
	
	

	/**
	 * To Write the Feature files which takes following arg
	 * 
	 * @param featurefile
	 * @param featureFilename
	 * @throws FileNotFoundException
	 * @throws URISyntaxException
	 */
	public void writeFeature(String featurefile, String featureFilename)
			throws FileNotFoundException, URISyntaxException {
		java.net.URL url = SwaggerReaderUtil.class.getResource("/");
		File fullPathToSubfolder = new File(url.toURI()).getAbsoluteFile();

		System.out.println(fullPathToSubfolder.getAbsolutePath());
		// String projectFolder =
		// fullPathToSubfolder.getAbsolutePath().split("target")[0];

		String projectFolder = "C:\\AutomationProject\\automation\\src\\test\\resources\\features";
		File newFile = new File(projectFolder + "/" + featureFilename + ".feature");

		/*
		 * File newFile = new File( projectFolder + "src/main/resources/features/" +
		 * featureFilename + "/" + featureFilename + ".feature");
		 */
		try {
			boolean success = newFile.createNewFile();
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		// Use try-with-resource to get auto-closeable writer instance
		try (FileWriter writer = new FileWriter(
				// projectFolder + "src/main/resources/features/" + featureFilename + "/" +
				// featureFilename + ".feature");
				projectFolder + "/" + featureFilename + ".feature"); BufferedWriter bw = new BufferedWriter(writer)) {
			bw.write(featurefile);

		} catch (IOException e) {
			System.err.format("IOException: %s%n", e);
		}

	}

	

	/**
	 * Create WEBservice Folders
	 * 
	 * @param folderName
	 * @return
	 * @throws URISyntaxException
	 * @throws IOException
	 */
	public File createResourceSubFolder(String folderName) throws URISyntaxException, IOException {
		java.net.URL url = SwaggerReaderUtil.class.getResource("/");
		File fullPathToSubfolder = new File(url.toURI()).getAbsoluteFile();
		String projectFolder = fullPathToSubfolder.getAbsolutePath().split("target")[0];
		File testResultsFolder = new File(projectFolder + "src/main/resources/features/" + folderName);
		if (!testResultsFolder.exists()) {
			testResultsFolder.mkdir();
		}
		return testResultsFolder;
	}

	/**
	 * To Read a YAML file.
	 * 
	 * @param fileName
	 * @return
	 */
	public File getFileFromResources(String fileName) {

		ClassLoader classLoader = getClass().getClassLoader();
		URL resource = classLoader.getResource(fileName);
		if (resource == null) {
			throw new IllegalArgumentException("file is not found!");
		} else {
			return new File(resource.getFile());
		}

	}
}
