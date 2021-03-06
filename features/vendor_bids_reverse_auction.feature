Feature: Vendor bids on a reverse auction
  As a vendor
  I want to be able to bid on auctions
  So I can be paid for work

  @javascript
  Scenario: Auction already has bids
    Given there is an open auction
    And the auction has a lowest bid amount of 1000
    When I visit the home page
    Then I should see "Current winning bid: $1,000"

    And I am a user with a verified SAM account
    And I sign in and verify my account information
    And I click on the auction's title

    When I submit a bid for $999
    And I click OK on the javascript confirm dialog for a bid amount of $999.00
    Then I should see "Your bid: $999"
    And I should not see the bid form
    And I should see I have the winning bid
