
Feature: Cucumber Data Tables implementation practices


  Scenario: List of fruits and vegetables I like
    Then user should see below list
      | orange     |
      | apple      |
      | kiwi       |
      | strawberry |
      | tomato     |
      | pear       |
      | eggplant   |

    #To beautify the pipes above
  #MAC: commond + option + L
  #WINDOWS: control + alt + L

  Scenario: List the type of pets that you love
    Then I will share my favorites
      | Golder Retriever |
      | Kangal           |
      | Husky            |
      | Muchkin          |
      | Ragdoll cat      |
      | Saberian cat     |
      | Goldern Doodle   |

  Scenario: Officer reads data about driver
    Then officer is able to see any data he wants
      | name     | Jane         |
      | surname  | Doe          |
      | age      | 29           |
      | address  | somewhere    |
      | state    | CA           |
      | Zipecode | 212111       |
      | phone    | 111-111-1111 |


  Scenario: User should be able to see all 12 months in months
  dropdown
    Given User is on the dropdowns page of practice tool
    Then User should see below info in month dropdown
      | January   |
      | February  |
      | March     |
      | April     |
      | May       |
      | June      |
      | July      |
      | August    |
      | September |
      | October   |
      | November  |
      | December  |


