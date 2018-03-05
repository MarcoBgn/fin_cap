Feature: Evidence Hub Search
	As a website user
	In order to see the evidence in the hub
	I want to be able to see a brief summary of all the insight summaries

  Scenario: Visit the landing page
    When I visit the evidence hub search page
    Then I should see the "first" result as
      | Field               | Value                                                    |
      | document title      | Financial well-being: the employee view                  |
      | overview            | Stress caused by pay levels, lack of financial awareness |
      | evidence type       | Insight                                                  |
      | topics              | Saving                                                   |
      | countries           | United Kingdom                                           |
      | year of publication | 2015                                                     |
    And I should see the "second" result as
      | Field               | Value                                                                              |
      | document title      | Moving forward together: peer support for people with problem debt                 |
      | overview            | Research has found that there remains a real stigma around seeking advice for debt |
      | evidence type       | Insight                                                                            |
      | topics              | Credit Use and Debt                                                                |
      | countries           | England                                                                            |
      | year of publication | 2017                                                                               |
