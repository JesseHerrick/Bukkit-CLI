Feature: Create Server
	In order to manage a server better.
	As a server admin. 
	I want to be able to create a new server easily.

	Scenario: Create a new server
		When I run `bukkit new MC --rb --nostart`
		Then the file "MC/craftbukkit.jar" should exist
		And the exit code should be 0

	Scenario: Create a new server with no name
		When I run `bukkit new`
		Then the exit code should be 1

	Scenario: Create a new server with no build specified
		When I run `bukkit new MC --nostart` interactively
		And I type "rb"
		Then the file "MC/craftbukkit.jar" should exist
		And the exit code should be 0