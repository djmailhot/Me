# RVM

rvm manages all of your ruby installs stuff!!!!

`rvm list` : see all yo rubies!

`rvm use ____` : Use dat ruby!

`rvm install ___` : install dat ruby!

# Gems

`gem list` : see all yo gems!

`gem install ___` : install dat gem

# Gemsets 

A gemset is a whole group of gems... 
You generally want one gemset per project so that you isolate the libraries
that the project uses

`rvm gemset list` : see all yo gemsets

`rvm create gemset ___` : create a gemset! 

`rvm gemset use ___` : switch to that gemset

# Rails project

`rails new ___` make a new rails project with that name

`rails generate migration ___` make a new DB migration

# Rails directories

## app

Has your Model View Controller stuff. Stubs for your models/controllers
are auto generated when you make a migration that updates tables

## db

Has DB stuff.. you usually only pay attention to the migrations

## config

config stuff -- like what database you want to set up rails to use, etc
