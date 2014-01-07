---
layout: default
title: rails g controller posts
---

<h1 id="main">rails g controller posts</h1>
###Create file `app/assets/javascripts/posts.js.coffee`

####Add
```
 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/
```


###Create file `app/assets/stylesheets/posts.css.scss`

####Add
```
 // Place all the styles related to the posts controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/
```


###Create file `app/controllers/posts_controller.rb`

####Add
```
 class PostsController < ApplicationController
 end
```


###Create file `app/helpers/posts_helper.rb`

####Add
```
 module PostsHelper
 end
```


###Create file `spec/controllers/posts_controller_spec.rb`

####Add
```
 require 'spec_helper'
 
 describe PostsController do
 
 end
```


###Create file `spec/helpers/posts_helper_spec.rb`

####Add
```
 require 'spec_helper'
 
 # Specs in this file have access to a helper object that includes
 # the PostsHelper. For example:
 #
 # describe PostsHelper do
 #   describe "string concat" do
 #     it "concats two strings with spaces" do
 #       expect(helper.concat_strings("this","that")).to eq("this that")
 #     end
 #   end
 # end
 describe PostsHelper do
   pending "add some examples to (or delete) #{__FILE__}"
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/76919d67fa77f900b20c42948b6b8046a38c8d5b)

