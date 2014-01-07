---
layout: default
title: Install rspec-rails and capybara-webkit
---

<h1 id="main">Install rspec-rails and capybara-webkit</h1>
###Update file `Gemfile`

Add
```
 group :development, :test do
   gem 'rspec-rails'
   gem 'capybara-webkit'
 end
```


Becomes
```
   gem 'sdoc', require: false
 end
 
 group :development, :test do
   gem 'rspec-rails'
   gem 'capybara-webkit'
 end
 
 # Use ActiveModel has_secure_password
 # gem 'bcrypt-ruby', '~> 3.0.0'
 

```


###Update file `Gemfile.lock`

Add
```
     capybara (2.1.0)
       mime-types (>= 1.16)
       nokogiri (>= 1.3.3)
       rack (>= 1.0.0)
       rack-test (>= 0.5.4)
       xpath (~> 2.0)
     capybara-webkit (1.0.0)
       capybara (~> 2.0, >= 2.0.2)
       json
```


Becomes
```
     arel (4.0.1)
     atomic (1.1.14)
     builder (3.1.4)
     capybara (2.1.0)
       mime-types (>= 1.16)
       nokogiri (>= 1.3.3)
       rack (>= 1.0.0)
       rack-test (>= 0.5.4)
       xpath (~> 2.0)
     capybara-webkit (1.0.0)
       capybara (~> 2.0, >= 2.0.2)
       json
     coffee-rails (4.0.1)
       coffee-script (>= 2.2.0)
       railties (>= 4.0.0, < 5.0)

```


Add
```
     diff-lcs (1.2.4)
```


Becomes
```
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
     hike (1.2.3)

```


Add
```
     mini_portile (0.5.2)
```


Add
```
     nokogiri (1.6.0)
       mini_portile (~> 0.5.0)
```


Becomes
```
       mime-types (~> 1.16)
       treetop (~> 1.4.8)
     mime-types (1.25)
     mini_portile (0.5.2)
     minitest (4.7.5)
     multi_json (1.8.2)
     nokogiri (1.6.0)
       mini_portile (~> 0.5.0)
     polyglot (0.3.3)
     rack (1.5.2)
     rack-test (0.6.2)

```


Add
```
     rspec-core (2.14.7)
     rspec-expectations (2.14.3)
       diff-lcs (>= 1.1.3, < 2.0)
     rspec-mocks (2.14.4)
     rspec-rails (2.14.0)
       actionpack (>= 3.0)
       activesupport (>= 3.0)
       railties (>= 3.0)
       rspec-core (~> 2.14.0)
       rspec-expectations (~> 2.14.0)
       rspec-mocks (~> 2.14.0)
```


Becomes
```
     rake (10.1.0)
     rdoc (3.12.2)
       json (~> 1.4)
     rspec-core (2.14.7)
     rspec-expectations (2.14.3)
       diff-lcs (>= 1.1.3, < 2.0)
     rspec-mocks (2.14.4)
     rspec-rails (2.14.0)
       actionpack (>= 3.0)
       activesupport (>= 3.0)
       railties (>= 3.0)
       rspec-core (~> 2.14.0)
       rspec-expectations (~> 2.14.0)
       rspec-mocks (~> 2.14.0)
     sass (3.2.12)
     sass-rails (4.0.1)
       railties (>= 4.0.0, < 5.0)

```


Add
```
     xpath (2.0.0)
       nokogiri (~> 1.3)
```


Add
```
   capybara-webkit
```


Add
```
   rspec-rails
```


Becomes
```
     uglifier (2.3.0)
       execjs (>= 0.3.0)
       json (>= 1.8.0)
     xpath (2.0.0)
       nokogiri (~> 1.3)
 
 PLATFORMS
   ruby
 
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~> 4.0.0)
   jbuilder (~> 1.2)
   jquery-rails
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~> 4.0.0)
   sdoc
   sqlite3

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/af083224ea65d0cf6513c83791caf3f84c17e981)

