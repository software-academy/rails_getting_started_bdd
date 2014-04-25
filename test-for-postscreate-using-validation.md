---
layout: default
title: Test for posts#create using validation
---

<h1 id="main">Test for posts#create using validation</h1>

###Update file `spec/features/posts_spec.rb`

####Change
```
     expect(page).to have_content('Rails is Awesome!')
```


####To
```
     expect(current_path).to eq post_path(Post.where(title: 'Rails is Awesome!').first)
   end
 
   scenario 'cannot be created without a title' do
     visit new_post_path
     fill_in 'Title', with: ''
     click_button 'Save Post'
     expect(page).to have_content("Title can't be blank")
```


####Becomes
```
     fill_in 'Title', with: 'Rails is Awesome!'
     fill_in 'Text', with: 'It really is.'
     click_button 'Save Post'
     expect(current_path).to eq post_path(Post.where(title: 'Rails is Awesome!').first)
   end
 
   scenario 'cannot be created without a title' do
     visit new_post_path
     fill_in 'Title', with: ''
     click_button 'Save Post'
     expect(page).to have_content("Title can't be blank")
   end
 
   scenario 'can get back to list page from new page' do

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/aca2f2369712af610a51ed14de410863d7e7c25b)

