Feature: Create Server
	In order to manage a server better.
	As a server admin. 
	I want to be able to create a new server easily.

	Scenario: Create a new server
		When I run "bukkit new" with the options "--rb --no-start"
		Then the exit status should be 0