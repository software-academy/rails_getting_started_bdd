---
layout: default
title: Test for creating new post
---

<h1 id="main">Test for creating new post</h1>
###Create file `spec/features/posts_spec.rb`

Add
```
 require 'spec_helper'
 
 feature 'Posts' do
   scenario 'can be created' do
     visit new_post_path
     fill_in 'Title', with: 'Rails is Awesome!'
     fill_in 'Text', with: 'It really is.'
     click_button 'Save Post'
     expect(page).to have_content('Rails is Awesome!')
   end
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/0095998cd2c10a734f43685ae6c081bf772fc34c)

