package StepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebDriver;

public class HomeItems {
    WebDriver driver;

    @When("User add {string} to the order")
    public void userAddToTheOrder(String arg0) {
    }

    @Then("User sees order created successfully")
    public void userSeesOrderCreatedSuccessfully() {

    }

    @When("User try to create second order of {string}")
    public void userTryToCreateSecondOrderOf(String arg0) {

    }

    @Then("User sees an error message {string}")
    public void userSeesAnErrorMessage(String arg0) {

    }

    @When("User try to edit the above created order")
    public void userTryToEditTheAboveCreatedOrder() {

    }

    @And("User has already existed order")
    public void userHasAlreadyExistedOrder() {

    }

    @When("User cancel the existing order for {string}")
    public void userCancelTheExistingOrderFor(String arg0) {

    }

    @Then("User sees {string} message")
    public void userSeesMessage(String arg0) {

    }

    @When("User place an order with {string} donuts")
    public void userPlaceAnOrderWithDonuts(String arg0) {

    }

    @Then("User sees order {string} created successfully for client ID {string}")
    public void userSeesOrderCreatedSuccessfullyForClientID(String arg0, String arg1) {

    }

    @Given("User is a regular customer with client ID {string}")
    public void userIsARegularCustomerWithClientID(String arg0) {

    }

    @Then("User sees order {string} created successfully for client ID {string}")
    public void userSeeOrderCreatedSuccessfullyForClientID(String arg0, String arg1) {

    }

    @And("User sees order are sorted by the number of seconds")
    public void userSeesOrderAreSortedByTheNumberOfSeconds() {

    }

    @Given("User is a premium customer with client ID {string}")
    public void userIsAPremiumCustomerWithClientID(String arg0) {

    }

    @And("User sees order from premium customers is given higher priority")
    public void userSeesOrderFromPremiumCustomersIsGivenHigherPriority() {

    }

    @Given("User is a {string} client having order in the queue")
    public void userIsAClientHavingOrderInTheQueue(String arg0) {

    }

    @Then("User sees my order position in the queue along with wait time")
    public void userSeesMyOrderPositionInTheQueueAlongWithWaitTime() {

    }

    @And("Wait time should change based on orders in the queue")
    public void waitTimeShouldChangeBasedOnOrdersInTheQueue() {

    }

    @Given("There are multiple order in the queue")
    public void thereAreMultipleOrderInTheQueue() {

    }

    @When("Manager check for entries in the queue")
    public void managerCheckForEntriesInTheQueue() {

    }

    @Then("All the entries in the queue are listed along with wait time")
    public void allTheEntriesInTheQueueAreListedAlongWithWaitTime() {
    }
}
