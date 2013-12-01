require 'launchy'

module Bukkit
    class Plugin
        # Return the plugin's website URL.
        def website
            @website = @plugin_api["website"]
        end
        # => http://dev.bukkit.org/bukkit-plugins/pluginname

        # Open website in default browser.
        def view_website
            Launchy.open(website)
            puts "Opening #{@name}'s Website...".light_green
            puts "    Website: ".yellow + website
            sleep 1.5
            return website
        end
    end
end