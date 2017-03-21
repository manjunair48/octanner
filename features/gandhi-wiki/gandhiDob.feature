Feature: Should get gandhi dob from Wikipedia page 

Open the Google search page and Entering Mahatma Gandhi into the search box and capturing the birth date of mahatma gandhi

Scenario: Search functionality

Given I am on Google Home page

When Enter Mahatma Gandhi inside Search bar

Then Clicking on Wikipedia result link

Scenario: Capturing birthdate from Wikipedia page

Given I am on the Wikipedia Search page

When Born is found inside biography

Then Display the birthdate of Mahatma Gandhi



