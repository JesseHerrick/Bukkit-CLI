Bukkit-CLI
======

A Bukkit Server command line interface.

##Features (see __commands__ for more details):
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
* [Java](http://java.com/en/download/manual.jsp)
  * All Versions Allowed by [Bukkit](https://github.com/Bukkit/Bukkit).
