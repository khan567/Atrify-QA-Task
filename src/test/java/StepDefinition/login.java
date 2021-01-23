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
        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
    }

    @Given("User is a regular customer login with {string}")
    public void userIsARegularCustomerLoginWith(String arg0) {
        driver.findElement(By.xpath("xpath here ")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
    }
}
