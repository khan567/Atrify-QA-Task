package StepDefinition;

import Common.Base;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import org.apache.tools.ant.taskdefs.WaitFor;
import org.openqa.selenium.WebDriver;


public class Login {

    @Given("User login with{string}")
    public void userLoginWith(String arg0) {

    }
    @And("User logout")
    public void userLogout() {
    }

    @Given("User login with regular customer ID {string}")
    public void userLoginWithRegularCustomerID(String arg0) {
        
    }

    @Given("Manager login with ID")
    public void managerLoginWithID() {
        
    }

    @And("Manager logout")
    public void managerLogout() {
    }
}
