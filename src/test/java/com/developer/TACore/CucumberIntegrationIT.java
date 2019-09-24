  package com.developer.TACore;

 
  import cucumber.api.CucumberOptions;
  import cucumber.api.junit.Cucumber;
  import org.junit.runner.RunWith;
   
  @RunWith(Cucumber.class)
  @CucumberOptions(features = "src/main/resources/features/pet/pet.feature", plugin = {"pretty", "html:target/cucumber"})
  public class CucumberIntegrationIT {
  }