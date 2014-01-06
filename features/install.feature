Feature: Install
	In order to easily install plugins.
	As a server admin.
	I want to install a new plugin.

	Scenario: Install WorldEdit
		Given a new server "MC"
		When "WorldEdit" is installed
		Then the file "MC/plugins/WorldEdit.jar" should exist
		And the exit code should be 0

	Scenario: Install an unknown plugin
		Given a new server "MC"
		When "jesse" is installed
		Then the exit code should be 1