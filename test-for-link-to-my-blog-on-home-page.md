---
layout: default
title: Test for link to My Blog on home page
---

<h1 id="main">Test for link to My Blog on home page</h1>
###Update file `spec/features/posts_spec.rb`

Add
```
   scenario 'can be accessed from link on home page' do
     visit root_path
     click_link 'My Blog'
     expect(current_path).to eq posts_path
   end
```


Becomes
```
     expect(page).to have_content('Rails is Awesome!')
   end
 
   scenario 'can be accessed from link on home page' do
     visit root_path
     click_link 'My Blog'
     expect(current_path).to eq posts_path
   end
 
   context 'when there are posts' do
     before do
       create :post, title: 'My first post'

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/74eb255e05627adce9c35da0895d4526a741ad99)

