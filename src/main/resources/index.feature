Feature: Open site
  Scenario:
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    Then I go to local web site and check title "Home | ComPos" from url