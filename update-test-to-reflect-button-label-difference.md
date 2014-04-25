---
layout: default
title: Update test to reflect button label difference
---

<h1 id="main">Update test to reflect button label difference</h1>

###Update file `spec/features/posts_spec.rb`

####Change
```
     click_button 'Save Post'
```


####To
```
     click_button 'Create Post'
```


####Change
```
     click_button 'Save Post'
```


####To
```
     click_button 'Create Post'
```


####Becomes
```
     visit new_post_path
     fill_in 'Title', with: 'Rails is Awesome!'
     fill_in 'Text', with: 'It really is.'
     click_button 'Create Post'
     expect(current_path).to eq post_path(Post.where(title: 'Rails is Awesome!').first)
   end
 
   scenario 'cannot be created without a title' do
     visit new_post_path
     fill_in 'Title', with: ''
     click_button 'Create Post'
     expect(page).to have_content("Title can't be blank")
   end
 

```


####Change
```
       click_button 'Save Post'
```


####To
```
       click_button 'Update Post'
```


####Becomes
```
     scenario 'can be edited' do
       visit edit_post_path(@post1)
       fill_in 'Title', with: 'My first post has a new title'
       click_button 'Update Post'
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content('My first post has a new title')
     end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/42706a4b8bab70d68d5221df3a9f273ce161d488)

