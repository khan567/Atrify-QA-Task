package StepDefinition;

import Common.Base;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

public class homeItems extends Base {

    @When("User add {string} to the order")
    public void userAddToTheOrder(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
    }

    @Then("User sees {string}")
    public void userSees(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @When("User try to create second order of {string}")
    public void userTryToCreateSecondOrderOf(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @When("User try to edit the above created order")
    public void userTryToEditTheAboveCreatedOrder() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @And("User has already existed order")
    public void userHasAlreadyExistedOrder() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @When("User cancel the existing order for {string}")
    public void userCancelTheExistingOrderFor(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @When("User place an order with {string}")
    public void userPlaceAnOrderWith(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @Then("User sees <Message> for {string}")
    public void userSeesMessageFor(String arg0) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @Then("User sees {string} for {string}")
    public void userSeesFor(String arg0, String arg1) {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @And("User sees order are sorted by the number of seconds")
    public void userSeesOrderAreSortedByTheNumberOfSeconds() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();

    }

    @And("User sees order from premium customers is given higher priority")
    public void userSeesOrderFromPremiumCustomersIsGivenHigherPriority() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();

    }


    @Given("User having order in the queue")
    public void userHavingOrderInTheQueue() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
    }

    @Then("User sees order position in the queue along with wait time")
    public void userSeesOrderPositionInTheQueueAlongWithWaitTime() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @And("Wait time should change based on orders in the queue")
    public void waitTimeShouldChangeBasedOnOrdersInTheQueue() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @Given("There are multiple order in the queue")
    public void thereAreMultipleOrderInTheQueue() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @When("Manager check for entries in the queue")
    public void managerCheckForEntriesInTheQueue() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();
        
    }

    @Then("All the entries in the queue are listed along with wait time")
    public void allTheEntriesInTheQueueAreListedAlongWithWaitTime() {

        driver.findElement(By.xpath("xpath")).sendKeys("username");
        driver.findElement(By.xpath("xpath")).sendKeys("password");
        driver.findElement(By.xpath("xpath")).click();

    }
}
