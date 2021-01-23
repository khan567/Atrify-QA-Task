package StepDefinition;

import Common.Base;
import io.cucumber.java.en.Given;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class login extends Base {

    WebDriver driver;
    @Given("User login with {string} with {string}")
    public void userLoginWithWith(String arg0, String arg1) {

        // Identification of elements and Write selenium code for each steps
    }

    @Given("User login with {string} belongs to {string}")
    public void userLoginWithBelongsTo(String arg0, String arg1) {

        // Identification of elements and Write selenium code for each steps

    }
}
