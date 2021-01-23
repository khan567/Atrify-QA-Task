#Challenge
# Behavior Driven framework

Designed the following Scenarios for web service and created automation test script by using Cucumber

1. Adding order to queue successfully by Premium and Regular Client
2. Premium and Regular Client should not able to place more than one order
3. Premium and Regular Client should not able to edit existing order
4. Premium and Regular Client should be able to cancel the existing order
5. Orders should be sorted by the number of seconds they are in the queue
6. Orders from premium customers always have a higher priority than orders from regular customers
7. Client should be able to check the queue position and wait time
8. Manager should be able to see all entries in the queue with the approximate wait time

## Implementation of Gherkin and Java code

1. The scenarios are defined in feature file by using Gherkin language. 
2. The feature file is connected with StepDefinition file to implement the java code. 
3. The Base class represent the implementation of code for the webdriver and url of the website.
4. The TestRunner class used to execute the features.
5. It is a dummy project, and we don't have proper user interface to run the project.

### The following tools are use for this project.

```
JDK minimum 1.8
Cucumber 
Selenium
Gherkin
Junit
Maven
Webdrivermanager
```


## Authors

* **Muhammad Khalil** 