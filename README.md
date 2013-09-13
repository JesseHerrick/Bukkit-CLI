bukkit
======

A command line wrapper for CraftBukkit.

##Getting Started

###Quick Start: 
```terminal
~ $ gem install bukkit
~ $ bukkit new my-awesome-server-name
```

###Commands:
__To View Command Options run:__ `bukkit [command] [options: --help, -h]`

`bukkit [--help, -h]` Display global help.

`bukkit install` Install a new bukkit plugin.

`bukkit new my-awesome-server-name [options: --rb, --beta, --dev]` Create a new Bukkit server.

`bukkit start` Start your server.

`bukkit update [options: --rb, --beta, --dev]` Download the latest version of CraftBukkit.

`bukkit website my-favorite-plugin [options: --url (just show url, don't open)]` Visit a plugin's website.

###Prerequisites:

* [Ruby](https://www.ruby-lang.org/en/downloads/) ([RVM](http://rvm.io/) - for Linux/Mac and [RubyInstaller](http://rubyinstaller.org/) - Windows)
  * `2.0.0` (recommended!)
  * `1.9.3` (go right ahead)
  * `other versions` (may or may not work, if you find a bug though [report it!](https://github.com/JesseHerrick/bukkit/issues/new))
