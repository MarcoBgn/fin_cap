Feature: Site search
  As a fincap web site user
  I need to be able to use the in site search (either at the top or the bottom of the page)
  so that I can go straight to the content I require

  Background:
    Given I entered into the Homepage

  Scenario: Search a topic on the top search bar
    When I search the query "Young" on top bar
    Then I should see the search results
      | title        |
      | Young Adults |

  Scenario: Search a topic on the bottom search bar
    When I search the query "well-being" on bottom bar
    Then I should see the search results
      | title                                   |
      | Financial well-being: the employee view |
      | Financial Capability                    |
      | UK Strategy                             |
