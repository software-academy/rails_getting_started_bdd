---
layout: default
title: Install shoulda-matchers
---

<h1 id="main">Install shoulda-matchers</h1>
###Update file `Gemfile`

####Add
```
   gem 'shoulda-matchers'
```


####Becomes
```
 group :test do
   gem 'database_cleaner'
   gem 'launchy'
   gem 'shoulda-matchers'
   gem 'valid_attribute'
 end
 

```


###Update file `Gemfile.lock`

####Add
```
     shoulda-matchers (2.4.0)
       activesupport (>= 3.0.0)
```


####Becomes
```
     sdoc (0.3.20)
       json (>= 1.1.3)
       rdoc (~> 3.10)
     shoulda-matchers (2.4.0)
       activesupport (>= 3.0.0)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~> 1.2)

```


####Add
```
   shoulda-matchers
```


####Becomes
```
   rspec-rails
   sass-rails (~> 4.0.0)
   sdoc
   shoulda-matchers
   sqlite3
   turbolinks
   uglifier (>= 1.3.0)

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/111e856e42ef3665094a83d518e6afca6256b52f)

