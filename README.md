# JourneySalesAssignment
Task given by JourneySales Developer- Mr. Sandeep 

Part 1

1. Create an Opportunity list screen(Use custom page and controller). The recently created records should be on top. (Please refer the attached image)
2. Show Fields like Name,Close Date,Stage.
3. The Name field should be clickable, on clicking it navigate to standard detail page of that opportunity record.
4. Provide search box to filter on 'Opportunity name' without refreshing page.
5. Write Test Class for it.


Part 2

1. Create custom object with label 'Demo Object' and API name Demo_Object.
2. Create a 'text' field with label 'Category'.
3. Create a 'lookup' field for 'Opportunity' object.
4. Write trigger for custom object. On insert of custom object record if the value of 'Category' field is equal to 'Opportunity' create a new opportunity record via trigger.
   The opportunity lookup needs to be populated with this new opportunity.

Part 3
Create a custom visualforce page and controller. Use the markup mentioned inside the <div> tags in the “sample.html” file attached along with this email to create the visualforce page. On clicking the “Submit” button, the data of the 3 fields (first name, last name and email) should be sent to the controller and create a new Contact object.

Note
User javascript remoting to implement this functionality.
Do not use the getter setter methods in the controller and map them in the visualforce page.
While creating the new contact, check if the user has field level visibility on contact fields and if not return an error.

Hint
On clicking the submit button, read all the string values from the input fields in the page via javascript and pass them to the visualforce page.


Part 4
Create an unmanaged package with all the components of this exercise and send the url of the package
