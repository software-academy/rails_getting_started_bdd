---
layout: default
title: Install factory_girl_rails
---

<h1 id="main">Install factory_girl_rails</h1>
###Update file `Gemfile`

Add
```
   gem 'factory_girl_rails'
```


Becomes
```
 group :development, :test do
   gem 'rspec-rails'
   gem 'capybara-webkit'
   gem 'factory_girl_rails'
 end
 
 # Use ActiveModel has_secure_password

```


###Update file `Gemfile.lock`

Add
```
     factory_girl (4.2.0)
       activesupport (>= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~> 4.2.0)
       railties (>= 3.0.0)
```


Becomes
```
     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
     factory_girl (4.2.0)
       activesupport (>= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~> 4.2.0)
       railties (>= 3.0.0)
     hike (1.2.3)
     i18n (0.6.5)
     jbuilder (1.5.2)

```


Add
```
   factory_girl_rails
```


Becomes
```
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~> 4.0.0)
   factory_girl_rails
   jbuilder (~> 1.2)
   jquery-rails
   rails (= 4.0.0)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/6def155676bc9b91879cfb8003864c8c6d6e7585)

