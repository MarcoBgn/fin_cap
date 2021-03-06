Feature: Thematic Review Evidence Hub Search
  As a website user
  In order to see the summaries related to thematic reviews
  I want to be able to see a documents of all the thematic reviews

  Background:
    Given I entered into the Thematic review page "How can we improve the financial capability of young adults?"
    When I click "Evidence Summaries Associated with this Thematic Review"

  Scenario: Show evidence summaries associate with a thematic review
    Then I should see the summaries related to "How can we improve the financial capability of young adults?"
    And I should see the thematic review message
    """
    You are viewing the relevant evidence summaries for thematic review: How can we improve the financial capability of young adults?
    """
    And I should see the thematic review link "/en/thematic_reviews/how-can-we-improve-the-financial-capability-of-young-adults"

  Scenario: Show evidence summaries associate with thematic review and filter them
    When I filter the search for the topic Saving
    Then I should see the thematic review message
    """
    You are viewing the relevant evidence summaries for thematic review: How can we improve the financial capability of young adults?
    """
    And I should see the thematic review link "/en/thematic_reviews/how-can-we-improve-the-financial-capability-of-young-adults"
    And I should see the summaries related to thematic review and has topic Saving

