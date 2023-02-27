@Wiki
Feature: Wiki search features
  WPS-7531


  Scenario:  Wikipedia search Functionality Title Verification
    Given  User is on Wikipedia home page
    When   User types "Steve Jobs" in the wiki search box
    And    User clicks wiki search button
    Then   User sees "Steve Jobs" is in the wiki title


  Scenario: Wikipedia Search Functionality Header Verification
    Given User is on Wikipedia home page
    When  User types "Steve Jobs" in the wiki search box
    And   User clicks wiki search button
    Then  User sees "Steve Jobs" is in the main header

  Scenario: Wikipedia Search Functionality Image Header Verification
    Given User is on Wikipedia home page
    When   User types "Steve Jobs" in the wiki search box
    And   User clicks wiki search button
    Then  User sees "Steve Jobs" is in the image header

  @scenarioOutline
  Scenario Outline: Wikipedia Search Functionality with Scenario Outline
    Given User is on Wikipedia home page
    When User types "<searchValue>" in the wiki search box
    And User clicks wiki search button
    Then User sees "<expectedTitle>" is in the wiki title
    Then User sees "<expectedMainHeader>" is in the main header
    Then User sees "<expectedImageHeader>" is in the image header

    @ceos
    Examples: search values we are going to be using in this scenario outlines
      | searchValue     | expectedTitle   | expectedMainHeader | expectedImageHeader |
      | Steve Jobs      | Steve Jobs      | Steve Jobs         | Steve Jobs          |
      | Mary Barra      | Mary Barra      | Mary Barra         | Mary Barra          |
      | Rosalind Brewer | Rosalind Brewer | Rosalind Brewer    | Rosalind Brewer     |
      | Sunder Pichai   | Sundar Pichai   | Sundar Pichai      | Sundar Pichai       |

     @scientist
    Examples:
      | searchValue     | expectedTitle   | expectedMainHeader | expectedImageHeader |
      | Albert Einstein | Albert Einstein | Albert Einstein    | Albert Einstein     |
      | Marie Curie     | Marie Curie     | Marie Curie        | Marie Curie         |
