Feature: Uninstall
	In order to groom my plugins.
	As a server admin.
	I want to uninstall a plugin.

	Scenario: Uninstall WorldEdit
		Given a simulated server "MC"
		And I run `bukkit install WorldEdit`
		When I run `bukkit uninstall WorldEdit`
		Then the plugin "WorldEdit.jar" should not exist

	Scenario: Uninstall nothing
		When I run `bukkit uninstall`
		Then the exit code should be 1

	Scenario: Uninstall a nonexistant plugin
		Given a simulated server "MC"
		When I run `bukkit uninstall WorldEdit`
		Then the exit code should be 1