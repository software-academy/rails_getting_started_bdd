---
layout: default
title: Test for link to new post on posts page
---

<h1 id="main">Test for link to new post on posts page</h1>

###Update file `spec/features/posts_spec.rb`

####Add
```
   scenario 'can be created from link on posts page' do
     visit posts_path
     click_link 'New post'
     expect(current_path).to eq new_post_path
   end
```


####Becomes
```
     expect(current_path).to eq posts_path
   end
 
   scenario 'can be created from link on posts page' do
     visit posts_path
     click_link 'New post'
     expect(current_path).to eq new_post_path
   end
 
   context 'when there are posts' do
     before do
       create :post, title: 'My first post'

```


####Becomes
```
       expect(page).to have_content('My second post')
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/10fd24a4549e3925c1d33dd7e9d63c71f51d9ff2)

