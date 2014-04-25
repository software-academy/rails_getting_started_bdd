---
layout: default
title: Test for editing a post
---

<h1 id="main">Test for editing a post</h1>

###Update file `spec/features/posts_spec.rb`

####Remove
```
       create :post, title: 'My first post'
       create :post, title: 'My second post'
```


####Add
```
       @post1 = create :post, title: 'My first post'
       @post2 = create :post, title: 'My second post'
```


####Becomes
```
 
   context 'when there are posts' do
     before do
       @post1 = create :post, title: 'My first post'
       @post2 = create :post, title: 'My second post'
     end
 
     scenario 'can be listed' do

```


####Add
```
     scenario 'can be edited' do
       visit edit_post_path(@post1)
       fill_in 'Title', with: 'My first post has a new title'
       click_button 'Save Post'
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content('My first post has a new title')
     end
```


####Becomes
```
       expect(page).to have_content('My second post')
     end
 
     scenario 'can be edited' do
       visit edit_post_path(@post1)
       fill_in 'Title', with: 'My first post has a new title'
       click_button 'Save Post'
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content('My first post has a new title')
     end
 
     scenario 'can get back to list page from show page' do
       visit post_path(Post.first)
       click_link 'Back'

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/41fc3537ec42ca1b0c27a39d26d8ce446ca0404d)

