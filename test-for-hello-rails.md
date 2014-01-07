---
layout: default
title: Test for Hello, Rails
---

<h1 id="main">Test for Hello, Rails</h1>
###Create file `spec/features/hello_world_spec.rb`

Add
```
 require 'spec_helper'
 
 feature 'The world' do
   scenario 'sees Hello, Rails!' do
     visit '/'
     expect(page).to have_content('Hello, Rails!')
   end
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/fceaecd67f9f556d74e6bd441eb46bb2cc7b0cfc)

