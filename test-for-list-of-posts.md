---
layout: default
title: Test for list of posts
---

<h1 id="main">Test for list of posts</h1>

###Update file `spec/features/posts_spec.rb`

####Add
```
 
   context 'when there are posts' do
     before do
       create :post, title: 'My first post'
       create :post, title: 'My second post'
     end
 
     scenario 'can be listed' do
       visit posts_path
       expect(page).to have_content('My first post')
       expect(page).to have_content('My second post')
     end
   end
```


####Becomes
```
     click_button 'Save Post'
     expect(page).to have_content('Rails is Awesome!')
   end
 
   context 'when there are posts' do
     before do
       create :post, title: 'My first post'
       create :post, title: 'My second post'
     end
 
     scenario 'can be listed' do
       visit posts_path
       expect(page).to have_content('My first post')
       expect(page).to have_content('My second post')
     end
   end
 
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/98ececf6ef7c76a30fcc6cdde28dd0ef0cef89e2)

