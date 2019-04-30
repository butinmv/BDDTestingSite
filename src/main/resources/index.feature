Feature: Work with menu
  Scenario: Open Home Page
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    Then I go to local web site and check title "Home | ComPos" from url

  Scenario: Open Products Page
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    When Click "Products" menu button
    Then I go to local web site and check title "Products | ComPos" from url

  Scenario: Create New Product
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    When Click "Products" menu button
    And Click "Create product" button
    Then I go to url "http://localhost:8080/products/create"