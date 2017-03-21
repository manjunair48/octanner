Feature: Menu Items

  Background:
    Given I launch octanner
  Scenario Outline: Open website and verify if clicking on each menu lands me on appropriate page    
    When I click <menuItem> Menu
    Then I see <pageTitle> on the open page
    Examples:
    |menuItem      |pageTitle              |
    |Why Appreciate|elevate everything     |
    |Products      |specificity matters    |
    |Why Choose Us |partner with excellence|
    |Insights      |gain understanding     |
    |Institute     |Institute              |
    |Clients       |cultures of great work |