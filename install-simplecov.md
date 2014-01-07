---
layout: default
title: Install SimpleCov
---

<h1 id="main">Install SimpleCov</h1>
###Update file `Gemfile`

Add
```
   gem 'simplecov', require: false
```


Becomes
```
   gem 'database_cleaner'
   gem 'launchy'
   gem 'shoulda-matchers'
   gem 'simplecov', require: false
   gem 'valid_attribute'
 end
 

```


###Update file `Gemfile.lock`

Add
```
     simplecov (0.7.1)
       multi_json (~> 1.0)
       simplecov-html (~> 0.7.1)
     simplecov-html (0.7.1)
```


Becomes
```
       rdoc (~> 3.10)
     shoulda-matchers (2.4.0)
       activesupport (>= 3.0.0)
     simplecov (0.7.1)
       multi_json (~> 1.0)
       simplecov-html (~> 0.7.1)
     simplecov-html (0.7.1)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~> 1.2)

```


Add
```
   simplecov
```


Becomes
```
   sass-rails (~> 4.0.0)
   sdoc
   shoulda-matchers
   simplecov
   sqlite3
   turbolinks
   uglifier (>= 1.3.0)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/850d8b926fbe1f206cdefc502f107177d8de0346)

