Feature: Visualizar Naves en el tabler

In order to start to play submarine game
As a player 
I wanna see my ships on the board

Scenario: "Show the ships in the board"
	Given I enter the game
	Then I should see small ship at 2,2 
	And I should see medium ship at 3,3
Scenario: "Show the ships in the board"
	Given I enter the game
	Then I should not see small ship at 1,1 
	And I should not see medium ship at 1,3
