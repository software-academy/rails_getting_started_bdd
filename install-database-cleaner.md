---
layout: default
title: Install database_cleaner
---

<h1 id="main">Install database_cleaner</h1>

###Update file `Gemfile`

####Add
```
   gem 'database_cleaner'
```


####Becomes
```
 end
 
 group :test do
   gem 'database_cleaner'
   gem 'launchy'
   gem 'valid_attribute'
 end

```


###Update file `Gemfile.lock`

####Add
```
     database_cleaner (1.2.0)
```


####Becomes
```
     coffee-script-source (1.6.3)
     columnize (0.3.6)
     coolline (0.4.2)
     database_cleaner (1.2.0)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (>= 0.3.1)

```


####Add
```
   database_cleaner
```


####Becomes
```
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~> 4.0.0)
   database_cleaner
   factory_girl_rails
   jazz_hands
   jbuilder (~> 1.2)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/18bbdf41a04a195f42d0c53a49d6d67812df83e4)

