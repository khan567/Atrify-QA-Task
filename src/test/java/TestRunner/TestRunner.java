package TestRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "/Users/muhammadkhalil/Desktop/GitProjects/Artify-Project/src/test/java/FeatureFile/Order.Feature",
                    glue = "StepDefinition")


public class TestRunner {

}
