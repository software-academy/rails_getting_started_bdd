---
layout: default
title: Test for deleting of comments
---

<h1 id="main">Test for deleting of comments</h1>
###Update file `spec/controllers/comments_controller_spec.rb`

Add
```
 
     context 'with a comment' do
       let(:comment) { create :comment, post: my_post }
 
       describe 'DELETE #destroy' do
         it "redirects to the post's :show view" do
           delete :destroy, post_id: my_post.id, id: comment.id
           expect(response).to redirect_to post_path(my_post)
         end
       end
     end
```


Becomes
```
         expect(response).to redirect_to post_path(my_post)
       end
     end
 
     context 'with a comment' do
       let(:comment) { create :comment, post: my_post }
 
       describe 'DELETE #destroy' do
         it "redirects to the post's :show view" do
           delete :destroy, post_id: my_post.id, id: comment.id
           expect(response).to redirect_to post_path(my_post)
         end
       end
     end
   end
 end

```


###Update file `spec/factories/comments.rb`

Change
```
     post nil
```


To
```
     post
```


Becomes
```
   factory :comment do
     commenter "MyString"
     body "MyText"
     post
   end
 end

```


###Update file `spec/features/comments_spec.rb`

Add
```
     @comment = build :comment, body: 'This is the comment'
```


Add
```
     @post.comments << @comment
     @post.save
```


Becomes
```
 
 feature 'Comments' do
   background do
     @comment = build :comment, body: 'This is the comment'
     @post = create :post
     @post.comments << @comment
     @post.save
   end
 
   scenario 'can be added when viewing a post' do

```


Add
```
 
   scenario 'can be deleted', js: true do
     visit post_path(@post)
     expect(page).to have_content 'This is the comment'
     page.driver.accept_js_confirms!
     click_link 'Destroy Comment'
     expect(page).not_to have_content 'This is the comment'
   end
```


Becomes
```
     expect(current_path).to eq post_path(@post)
     expect(page).to have_content('Comment: Great post!')
   end
 
   scenario 'can be deleted', js: true do
     visit post_path(@post)
     expect(page).to have_content 'This is the comment'
     page.driver.accept_js_confirms!
     click_link 'Destroy Comment'
     expect(page).not_to have_content 'This is the comment'
   end
 end
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/8d02d6c95bb14a4019d2b18b2d9b0bcd0c9e8146)

