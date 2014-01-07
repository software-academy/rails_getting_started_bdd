---
layout: default
title: Tests for deleting posts
---

<h1 id="main">Tests for deleting posts</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
 
     describe 'DELETE #destroy' do
       it "redirects to the :index view" do
         delete :destroy, id: post.id
         expect(response).to redirect_to posts_path
       end
     end
```


####Becomes
```
         expect(response).to redirect_to post_path(post)
       end
     end
 
     describe 'DELETE #destroy' do
       it "redirects to the :index view" do
         delete :destroy, id: post.id
         expect(response).to redirect_to posts_path
       end
     end
   end
 
   describe 'POST #create' do

```


###Update file `spec/features/posts_spec.rb`

####Add
```
     scenario 'can be deleted from link on posts page', js: true do
       visit posts_path
       within 'tr:last-child' do
         page.driver.accept_js_confirms!
         click_link 'Destroy'
         expect(current_path).to eq posts_path
         expect(page).not_to have_content('My second post')
       end
     end
```


####Becomes
```
       @post2 = create :post, title: 'My second post'
     end
 
     scenario 'can be deleted from link on posts page', js: true do
       visit posts_path
       within 'tr:last-child' do
         page.driver.accept_js_confirms!
         click_link 'Destroy'
         expect(current_path).to eq posts_path
         expect(page).not_to have_content('My second post')
       end
     end
 
     scenario 'can be edited from link on posts page' do
       visit posts_path
       within 'tr:last-child' do

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/292a020a05ded60f2f3440655f52f43af031c3d0)

