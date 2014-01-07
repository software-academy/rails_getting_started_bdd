---
layout: default
title: Tests for basic authentication
---

<h1 id="main">Tests for basic authentication</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
   include AuthHelper
 
   before(:each) do
     http_login
   end
```


####Becomes
```
 require 'spec_helper'
 
 describe PostsController do
   include AuthHelper
 
   before(:each) do
     http_login
   end
 
   describe 'GET #new' do
     it "returns http success" do

```


###Update file `spec/features/posts_spec.rb`

####Remove
```
   scenario 'can be created' do
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
 
   scenario 'can get back to list page from new page' do
     visit new_post_path
     click_link 'Back'
     expect(current_path).to eq posts_path
   end
```


####Add
```
   context 'when the user has authenticated' do
     background do
       page.driver.browser.basic_authorize 'dhh', 'secret'
     end
```


####Remove
```
   scenario 'can be accessed from link on home page' do
     visit root_path
     click_link 'My Blog'
     expect(current_path).to eq posts_path
   end
```


####Add
```
     scenario 'can be created' do
       visit new_post_path
       fill_in 'Title', with: 'Rails is Awesome!'
       fill_in 'Text', with: 'It really is.'
       click_button 'Create Post'
       expect(current_path).to eq post_path(Post.where(title: 'Rails is Awesome!').first)
     end
```


####Remove
```
   scenario 'can be created from link on posts page' do
     visit posts_path
     click_link 'New post'
     expect(current_path).to eq new_post_path
   end
```


####Add
```
     scenario 'cannot be created without a title' do
       visit new_post_path
       fill_in 'Title', with: ''
       click_button 'Create Post'
       expect(page).to have_content("Title can't be blank")
     end
```


####Remove
```
   context 'when there are posts' do
     before do
       @post1 = create :post, title: 'My first post'
       @post2 = create :post, title: 'My second post'
```


####Add
```
     scenario 'can get back to list page from new page' do
       visit new_post_path
       click_link 'Back'
       expect(current_path).to eq posts_path
```


####Change
```
     scenario 'can be deleted from link on posts page', js: true do
```


####To
```
     scenario 'can be created from link on posts page' do
```


####Remove
```
       within 'tr:last-child' do
         page.driver.accept_js_confirms!
         click_link 'Destroy'
         expect(current_path).to eq posts_path
         expect(page).not_to have_content('My second post')
       end
```


####Add
```
       click_link 'New post'
       expect(current_path).to eq new_post_path
```


####Remove
```
     scenario 'can be edited from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(@post2)
```


####Add
```
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
```


####Remove
```
     end
```


####Remove
```
     scenario 'can be viewed from link on posts page' do
       visit posts_path
       within 'tr:last-child' do
         click_link 'Show'
         expect(current_path).to eq post_path(@post2)
```


####Add
```
       scenario 'can be edited from link on posts page' do
         visit posts_path
         within 'tr:last-child' do
           click_link 'Edit'
           expect(current_path).to eq edit_post_path(@post2)
         end
       end
 
       scenario 'can be edited' do
         visit edit_post_path(@post1)
         fill_in 'Title', with: 'My first post has a new title'
         click_button 'Update Post'
         expect(current_path).to eq post_path(@post1)
         expect(page).to have_content('My first post has a new title')
       end
 
       scenario 'can be edited from show page' do
         visit post_path(Post.first)
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(Post.first)
```


####Add
```
   end
```


####Remove
```
     scenario 'can be listed' do
       visit posts_path
       expect(page).to have_content('My first post')
       expect(page).to have_content('My second post')
```


####Add
```
   context 'when the user has authenticated and javascript is needed' do
     background do
       # TODO: Issue basic_auth headers
```


####Remove
```
     scenario 'can be edited' do
       visit edit_post_path(@post1)
       fill_in 'Title', with: 'My first post has a new title'
       click_button 'Update Post'
       expect(current_path).to eq post_path(@post1)
       expect(page).to have_content('My first post has a new title')
```


####Add
```
     scenario 'can be deleted from link on posts page', js: true do
       pending('Unable to issue basic auth when js: true') do
         visit posts_path
         within 'tr:last-child' do
           page.driver.accept_js_confirms!
           click_link 'Destroy'
           expect(current_path).to eq posts_path
           expect(page).not_to have_content('My second post')
         end
       end
```


####Add
```
   end
```


####Remove
```
     scenario 'can get back to list page from show page' do
       visit post_path(Post.first)
       click_link 'Back'
```


####Add
```
   context 'when the user is anonymous' do
     scenario 'can be accessed from link on home page' do
       visit root_path
       click_link 'My Blog'
```


####Remove
```
     scenario 'can be edited from show page' do
       visit post_path(Post.first)
       click_link 'Edit'
       expect(current_path).to eq edit_post_path(Post.first)
```


####Add
```
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
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
         expect(page).to have_content('My second post')
       end
 
       scenario 'can get back to list page from show page' do
         visit post_path(Post.first)
         click_link 'Back'
         expect(current_path).to eq posts_path
       end
```


####Becomes
```
 require 'spec_helper'
 
 feature 'Posts' do
   context 'when the user has authenticated' do
     background do
       page.driver.browser.basic_authorize 'dhh', 'secret'
     end
 
     scenario 'can be created' do
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
 
     scenario 'can get back to list page from new page' do
       visit new_post_path
       click_link 'Back'
       expect(current_path).to eq posts_path
     end
 
     scenario 'can be created from link on posts page' do
       visit posts_path
       click_link 'New post'
       expect(current_path).to eq new_post_path
     end
 
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
       end
 
       scenario 'can be edited from link on posts page' do
         visit posts_path
         within 'tr:last-child' do
           click_link 'Edit'
           expect(current_path).to eq edit_post_path(@post2)
         end
       end
 
       scenario 'can be edited' do
         visit edit_post_path(@post1)
         fill_in 'Title', with: 'My first post has a new title'
         click_button 'Update Post'
         expect(current_path).to eq post_path(@post1)
         expect(page).to have_content('My first post has a new title')
       end
 
       scenario 'can be edited from show page' do
         visit post_path(Post.first)
         click_link 'Edit'
         expect(current_path).to eq edit_post_path(Post.first)
       end
     end
   end
 
   context 'when the user has authenticated and javascript is needed' do
     background do
       # TODO: Issue basic_auth headers
     end
 
     scenario 'can be deleted from link on posts page', js: true do
       pending('Unable to issue basic auth when js: true') do
         visit posts_path
         within 'tr:last-child' do
           page.driver.accept_js_confirms!
           click_link 'Destroy'
           expect(current_path).to eq posts_path
           expect(page).not_to have_content('My second post')
         end
       end
     end
   end
 
   context 'when the user is anonymous' do
     scenario 'can be accessed from link on home page' do
       visit root_path
       click_link 'My Blog'
       expect(current_path).to eq posts_path
     end
 
     context 'when there are posts' do
       before do
         @post1 = create :post, title: 'My first post'
         @post2 = create :post, title: 'My second post'
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
         expect(page).to have_content('My second post')
       end
 
       scenario 'can get back to list page from show page' do
         visit post_path(Post.first)
         click_link 'Back'
         expect(current_path).to eq posts_path
       end
     end
   end
 end

```


###Create file `spec/support/auth_helper.rb`

####Add
```
 module AuthHelper
   def http_login
 
     username = 'dhh'
     password = 'secret'
 
     request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
   end
 end
```


###Create file `spec/support/basic_auth.rb`

####Add
```
 RSpec.configure do |config|
   config.include AuthHelper, type: :controller
 end
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/cfd13721058fd06bd45204e03954202b6837070f)

