---
layout: default
title: Configure SimpleCov
---

<h1 id="main">Configure SimpleCov</h1>

###Update file `.gitignore`

####Add
```
 /coverage
```


####Becomes
```
 # Ignore all logfiles and tempfiles.
 /log/*.log
 /tmp
 /coverage

```


###Update file `spec/spec_helper.rb`

####Add
```
 require 'simplecov'
 SimpleCov.start
```


####Becomes
```
 # This file is copied to spec/ when you run 'rails generate rspec:install'
 require 'simplecov'
 SimpleCov.start
 
 ENV["RAILS_ENV"] ||= 'test'
 require File.expand_path("../../config/environment", __FILE__)
 require 'rspec/rails'

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/ddb83f267e378a0c99ead0114b549fa47390558d)

