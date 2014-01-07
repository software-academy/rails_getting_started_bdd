---
layout: default
title: Install valid_attribute
---

<h1 id="main">Install valid_attribute</h1>
###Update file `Gemfile`

####Add
```
 group :test do
   gem 'valid_attribute'
 end
```


####Becomes
```
   gem 'factory_girl_rails'
 end
 
 group :test do
   gem 'valid_attribute'
 end
 
 # Use ActiveModel has_secure_password
 # gem 'bcrypt-ruby', '~> 3.0.0'
 

```


###Update file `Gemfile.lock`

####Add
```
     valid_attribute (1.3.1)
```


####Becomes
```
     uglifier (2.3.0)
       execjs (>= 0.3.0)
       json (>= 1.8.0)
     valid_attribute (1.3.1)
     xpath (2.0.0)
       nokogiri (~> 1.3)
 

```


####Add
```
   valid_attribute
```


####Becomes
```
   sqlite3
   turbolinks
   uglifier (>= 1.3.0)
   valid_attribute

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/141dcc0672943f47558b9b14749d14646fadc83b)

