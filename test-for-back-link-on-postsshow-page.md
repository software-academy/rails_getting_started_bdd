---
layout: default
title: Test for Back link on posts#show page
---

<h1 id="main">Test for Back link on posts#show page</h1>
###Update file `spec/features/posts_spec.rb`

####Add
```
 
     scenario 'can get back to list page from show page' do
       visit post_path(Post.first)
       click_link 'Back'
       expect(current_path).to eq posts_path
     end
```


####Becomes
```
       expect(page).to have_content('My first post')
       expect(page).to have_content('My second post')
     end
 
     scenario 'can get back to list page from show page' do
       visit post_path(Post.first)
       click_link 'Back'
       expect(current_path).to eq posts_path
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/74c636cb2632e447ea3bbafe2b808948c2cf3333)

