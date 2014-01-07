---
layout: default
title: Create factory for Post
---

<h1 id="main">Create factory for Post</h1>
###Create file `spec/factories/posts.rb`

####Add
```
 # Read about factories at https://github.com/thoughtbot/factory_girl
 
 FactoryGirl.define do
   factory :post do
     title "MyString"
     text "MyText"
   end
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5855e5ed8eb98eefdb070c4db46ed3d29ebd20ae)

