Bukkit-CLI
======

A Bukkit Server command line interface.

![Gem Version](https://badge.fury.io/rb/bukkit.png)

[![Dependency Status](https://gemnasium.com/JesseHerrick/Bukkit-CLI.png)](https://gemnasium.com/JesseHerrick/Bukkit-CLI) 
[![Build Status](https://travis-ci.org/JesseHerrick/Bukkit-CLI.png?branch=master)](https://travis-ci.org/JesseHerrick/Bukkit-CLI) 
[![Code Climate](https://codeclimate.com/github/JesseHerrick/Bukkit-CLI.png)](https://codeclimate.com/github/JesseHerrick/Bukkit-CLI)

##Features (see [commands](https://github.com/JesseHerrick/Bukkit-CLI/blob/master/README.md#commands) for more details)
* Automatically creates a new server (your choice of build: rb, beta, or dev) with a simple command.
* Plugin manager. No more downloading and copying files.
* Update to the most recent build of your choice.
* And much more!

##Getting Started

###Quick Start: 
```terminal
~ $ gem install bukkit
~ $ bukkit new my-awesome-server-name
```

###Commands:
__To View Command Options run:__ `bukkit [command] [options: -[-h]elp]`

`bukkit [--help, -h]` Display global help.

`bukkit install my-favorite-plugin` Install a new bukkit plugin.

`bukkit new my-awesome-server-name [options: --rb, --beta, --dev, -[-f]orce (Overwrite any conflicting dirs.)], ` Create a new Bukkit server.

`bukkit start [options: --ram MEMORY_INT]` Start your server.

`bukkit update [options: --rb, --beta, --dev]` Download the latest version of CraftBukkit.

`bukkit website my-favorite-plugin [options: --url (just show url, don't open)]` Visit a plugin's website.

###Prerequisites:

* [Ruby](https://www.ruby-lang.org/en/downloads/) ([RVM](http://rvm.io/) - for Linux/Mac and [RubyInstaller](http://rubyinstaller.org/) - Windows)
  * `2.0.0` (recommended!)
  * `1.9.3` (go right ahead)
  * `other versions` (may or may not work, if you find a bug though [report it!](https://github.com/JesseHerrick/bukkit/issues/new))
* [Java](http://java.com/en/download/manual.jsp)
  * All Versions Allowed by [Bukkit](https://github.com/Bukkit/Bukkit).

##Feature Requests:

To file a feature request just create an issue [here.](https://github.com/JesseHerrick/Bukkit-CLI/issues/new) If your request makes sense (please write with the best grammar you can) then I'll get to work right away!

##Contributing:

To contribute to this awesome project just [fork it](https://github.com/JesseHerrick/Bukkit-CLI/fork) and send a [pull request](https://github.com/JesseHerrick/Bukkit-CLI/pulls).

Please follow the [Ruby Styleguide](https://github.com/styleguide/ruby). If you have any questions please feel free to [email me.](mailto:school@jessegrant.net)
