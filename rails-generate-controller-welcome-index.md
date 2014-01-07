---
layout: default
title: rails generate controller welcome index
---

<h1 id="main">rails generate controller welcome index</h1>
###Create file `app/assets/javascripts/welcome.js.coffee`

Add
```
 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/
```


###Create file `app/assets/stylesheets/welcome.css.scss`

Add
```
 // Place all the styles related to the welcome controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/
```


###Create file `app/controllers/welcome_controller.rb`

Add
```
 class WelcomeController < ApplicationController
   def index
   end
 end
```


###Create file `app/helpers/welcome_helper.rb`

Add
```
 module WelcomeHelper
 end
```


###Create file `app/views/welcome/index.html.erb`

Add
```
 <h1>Welcome#index</h1>
 <p>Find me in app/views/welcome/index.html.erb</p>
```


###Update file `config/routes.rb`

Add
```
   get "welcome/index"
```


Becomes
```
 Blog::Application.routes.draw do
   get "welcome/index"
   # The priority is based upon order of creation: first created -> highest priority.
   # See how all your routes lay out with "rake routes".
 

```


###Create file `spec/controllers/welcome_controller_spec.rb`

Add
```
 require 'spec_helper'
 
 describe WelcomeController do
 
   describe "GET 'index'" do
     it "returns http success" do
       get 'index'
       response.should be_success
     end
   end
 
 end
```


###Create file `spec/helpers/welcome_helper_spec.rb`

Add
```
 require 'spec_helper'
 
 # Specs in this file have access to a helper object that includes
 # the WelcomeHelper. For example:
 #
 # describe WelcomeHelper do
 #   describe "string concat" do
 #     it "concats two strings with spaces" do
 #       expect(helper.concat_strings("this","that")).to eq("this that")
 #     end
 #   end
 # end
 describe WelcomeHelper do
   pending "add some examples to (or delete) #{__FILE__}"
 end
```


###Create file `spec/views/welcome/index.html.erb_spec.rb`

Add
```
 require 'spec_helper'
 
 describe "welcome/index.html.erb" do
   pending "add some examples to (or delete) #{__FILE__}"
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/98c4ea75759d54749fd547a2f4ea6a1d1cbf68ea)

