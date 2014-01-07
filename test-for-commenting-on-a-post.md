---
layout: default
title: Test for commenting on a post
---

<h1 id="main">Test for commenting on a post</h1>
###Create file `spec/features/comments_spec.rb`

Add
```
 require 'spec_helper'
 
 feature 'Comments' do
   background do
     @post = create :post
   end
 
   scenario 'can be added when viewing a post' do
     visit post_path(@post)
     fill_in 'Commenter', with: 'Concerned Citizen'
     fill_in 'Body', with: 'Great post!'
     click_button 'Create Comment'
     expect(current_path).to eq post_path(@post)
     expect(page).to have_content('Comment: Great post!')
   end
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/0feb72974ee16d0531553bd17099563dacf159da)

