Feature: Install
	In order to easily install plugins.
	As a server admin.
	I want to install a new plugin.

	Scenario: Install WorldEdit
		Given a simulated server "MC"
		When I run `bukkit install WorldEdit`
		Then the file "MC/plugins/WorldEdit.jar" should exist

	Scenario: Install an unknown plugin
		Given a simulated server "MC"
		When I run `bukkit install jesse`
		Then the exit code should be 1