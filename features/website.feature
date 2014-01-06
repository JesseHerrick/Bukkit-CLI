Feature: Website
	In order to get more info about a plugin.
	As a server admin who likes verbosity.
	I want to get the website of a plugin.

	Scenario: Get WorldEdit's plugin website
		When I run `bukkit website WorldEdit --url`
		Then the exit code should be 0
		And the output should equal "Website: http://dev.bukkit.org/bukkit-plugins/worldedit"