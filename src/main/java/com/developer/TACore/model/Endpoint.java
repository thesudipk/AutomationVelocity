package com.developer.TACore.model;

import java.util.List;

/**
 * EndPoint POJO object which holds the attributes
 * 
 * @author Anitha
 *
 */
public class Endpoint {

	private String baseURL;
	private String path;
	private String httpMethod;
	private String summary;
	private String parametersize;
	private String consumes;
	private String produces;
	private String tags;
	private List<String> parameters;
	private List<String> responses;

	/**
	 * @return the baseURL
	 */
	public String getBaseURL() {
		return baseURL;
	}

	/**
	 * @param baseURL the baseURL to set
	 */
	public void setBaseURL(String baseURL) {
		this.baseURL = baseURL;
	}

	/**
	 * @return the path
	 */
	public String getPath() {
		return path;
	}

	/**
	 * @param path the path to set
	 */
	public void setPath(String path) {
		this.path = path;
	}

	/**
	 * @return the httpMethod
	 */
	public String getHttpMethod() {
		return httpMethod;
	}

	/**
	 * @param httpMethod the httpMethod to set
	 */
	public void setHttpMethod(String httpMethod) {
		this.httpMethod = httpMethod;
	}

	/**
	 * @return the summary
	 */
	public String getSummary() {
		return summary;
	}

	/**
	 * @param summary the summary to set
	 */
	public void setSummary(String summary) {
		this.summary = summary;
	}

	/**
	 * @return the parametersize
	 */
	public String getParametersize() {
		return parametersize;
	}

	/**
	 * @param parametersize the parametersize to set
	 */
	public void setParametersize(String parametersize) {
		this.parametersize = parametersize;
	}

	/**
	 * @return the consumes
	 */
	public String getConsumes() {
		return consumes;
	}

	/**
	 * @param string the consumes to set
	 */
	public void setConsumes(String string) {
		this.consumes = string;
	}

	/**
	 * @return the produces
	 */
	public String getProduces() {
		return produces;
	}

	/**
	 * @param string the produces to set
	 */
	public void setProduces(String string) {
		this.produces = string;
	}

	/**
	 * @return the tags
	 */
	public String getTags() {
		return tags;
	}

	/**
	 * @param tags the tags to set
	 */
	public void setTags(String tags) {
		this.tags = tags;
	}

	/**
	 * @return the parameters
	 */
	public List<String> getParameters() {
		return parameters;
	}

	/**
	 * @param parameters the parameters to set
	 */
	public void setParameters(List<String> parameters) {
		this.parameters = parameters;
	}

	/**
	 * @return the responses
	 */
	public List<String> getResponses() {
		return responses;
	}

	/**
	 * @param responses the responses to set
	 */
	public void setResponses(List<String> responses) {
		this.responses = responses;
	}

	@Override
	public String toString() {
		return "Endpoint [baseURL=" + baseURL + ", path=" + path + ", httpMethod=" + httpMethod + ", summary=" + summary
				+ ", parametersize=" + parametersize + ", consumes=" + consumes + ", produces=" + produces + ", tags="
				+ tags + ", parameters=" + parameters + ", responses=" + responses + "]";
	}

}
