@release
Feature: Login functionality

Background:
Given user should navigate url "http://localhost:100"


@valid @sprint1 @regression @sanity
Scenario: Valid login
Then login page should be apear
When User enters valid userid and valid password
And click on login button
Then user should be navigated to home page 
And can see logout link appear on top right corner

@invalid
Scenario Outline: InValid login
Then login page should be apear
When User enters invalid userid "<userid>" and invalid password "<password>"
And click on login button
#Then user should be navigated to home page 
#And can see logout link appear on top right corner
Examples:
|userid | password |
|ad134  | pwd1     |
|ad122  | pwd2     |
|ad133  | pwd3     |

@invalid2
Scenario: InValid2 login
Then login page should be apear
When User enters invalid userid "<userid>" and invalid password "<password>" and click login
|userid | password |
|ad134  | pwd1     |
|ad122  | pwd2     |
|ad133  | pwd3     |

#Then user should be navigated to home page 
#And can see logout link appear on top right corner
