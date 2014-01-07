---
layout: default
title: Test for back link on posts#new page
---

<h1 id="main">Test for back link on posts#new page</h1>
###Update file `spec/features/posts_spec.rb`

####Add
```
   scenario 'can get back to list page from new page' do
     visit new_post_path
     click_link 'Back'
     expect(current_path).to eq posts_path
   end
```


####Becomes
```
     expect(page).to have_content('Rails is Awesome!')
   end
 
   scenario 'can get back to list page from new page' do
     visit new_post_path
     click_link 'Back'
     expect(current_path).to eq posts_path
   end
 
   scenario 'can be accessed from link on home page' do
     visit root_path
     click_link 'My Blog'

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e1a5b5520d585bf0e2441419bf8f9854ea82c7d7)

