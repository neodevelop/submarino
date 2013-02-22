Feature: Ataque

Scenario: "El jugador falla"
	Given I start the web app
	When I press Button in coordinates 4 4
	Then I should see "Fallaste XD"

Scenario: "El jugador acierta"
	Given I start the web app
	When I press Button in coordinates 2 3
	Then I should see "Diste K!!! Yeaaah"
