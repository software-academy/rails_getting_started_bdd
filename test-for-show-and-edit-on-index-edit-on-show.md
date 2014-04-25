---
layout: default
title: Test for show and edit on index, edit on show
---

<h1 id="main">Test for show and edit on index, edit on show</h1>

###Update file `spec/features/posts_spec.rb`

####Add
```
     scenario 'can be edited from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(@post2)
       end
     end
 
     scenario 'can be viewed from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Show'
         expect(current_path).to eq post_path(@post2)
       end
     end
```


####Becomes
```
       @post2 = create :post, title: 'My second post'
     end
 
     scenario 'can be edited from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(@post2)
       end
     end
 
     scenario 'can be viewed from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Show'
         expect(current_path).to eq post_path(@post2)
       end
     end
 
     scenario 'can be listed' do
       visit posts_path
       expect(page).to have_content('My first post')

```


####Add
```
 
     scenario 'can be edited from show page' do
       visit post_path(Post.first)
       click_link 'Edit'
       expect(current_path).to eq edit_post_path(Post.first)
     end
```


####Becomes
```
       click_link 'Back'
       expect(current_path).to eq posts_path
     end
 
     scenario 'can be edited from show page' do
       visit post_path(Post.first)
       click_link 'Edit'
       expect(current_path).to eq edit_post_path(Post.first)
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/3e97c7a60e5711124f9c0c33aef082814d8871cc)

