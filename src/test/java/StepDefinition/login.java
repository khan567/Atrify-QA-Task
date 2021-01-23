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
        driver.findElement(By.xpath("Element identification")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
    }

}
