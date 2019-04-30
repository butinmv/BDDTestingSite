Feature: Work with menu
  Scenario: Open Home Page
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    Then I go to local web site and check title "Home | ComPos" from url
    And Close Browser

  Scenario: Open Products Page
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    When Click "Products" menu button
    Then I go to local web site and check title "Products | ComPos" from url
    And Close Browser

  Scenario: Go To Form Create Product
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    When Click "Products" menu button
    And Click "Create product" button
    Then I go to url "http://localhost:8080/products/create"
    And Close Browser

  Scenario: Create New Product
    Given I have Web Browser
    When I write url into browser "http://localhost:8080/"
    When Click "Products" menu button
    And Click "Create product" button
    Then I go to url "http://localhost:8080/products/create"
    When I find field "name" and write into Coca-Cola
    And I find field "price" and write into 25
    And I click buton "Create"
    Then I go to url "http://localhost:8080/products"
    And I see in table "Coca-Cola" with 25 price
    And Close Browser