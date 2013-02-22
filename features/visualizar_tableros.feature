Feature: Visualizar Tableros

In order to start to play submarine game

As a player I wanna see 2 boards from 4 to 4

Scenario: "Muestra los dos tableros"
	Given I start the web app
	Then I should see "Submarino!!!"
	And I should see "Yo"
	And I should see "CPU"
	And I should not see "Fallaste XD"
	And I should not see "Diste K!!! Yeaaah"
	And I should not see "Te dieron"

Scenario Outline: "Ver los tablero del jugador"
	Given I start the web app
	Then I should see a Button with name <name>
	Scenarios:
		|name|
		|"11"|
		|"21"|
		|"31"|
		|"41"|
		|"12"|
		|"22"|
		|"32"|
		|"42"|
		|"13"|
		|"23"|
		|"33"|
		|"43"|
		|"14"|
		|"24"|
		|"34"|
		|"44"|

Scenario Outline: "Ver el tablero del oponente"
	Given I start the web app
	Then I should see a Button with name <name>
	Scenarios:
		|name|
		|"o11"|
		|"o21"|
		|"o31"|
		|"o41"|
		|"o12"|
		|"o22"|
		|"o32"|
		|"o42"|
		|"o13"|
		|"o23"|
		|"o33"|
		|"o43"|
		|"o14"|
		|"o24"|
		|"o34"|
		|"o44"|

Scenario: "Muestra las coordenadas"
	Given I start the web app
	Then I should see ".*1.*2.*3.*4"
