---
layout: default
title: Controller tests for posts#edit and posts#update
---

<h1 id="main">Controller tests for posts#edit and posts#update</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
   context 'when there is a post' do
     let(:post) { create :post }
 
     describe 'GET #edit' do
       it "returns http success" do
         get :edit, id: post.id
         expect(response).to be_success
       end
     end
 
     describe 'PATCH #update' do
       it "redirects to the :show view" do
         patch :update, id: post.id, post: { title: 'change it' }
         expect(response).to redirect_to post_path(post)
       end
     end
   end
```


####Becomes
```
     end
   end
 
   context 'when there is a post' do
     let(:post) { create :post }
 
     describe 'GET #edit' do
       it "returns http success" do
         get :edit, id: post.id
         expect(response).to be_success
       end
     end
 
     describe 'PATCH #update' do
       it "redirects to the :show view" do
         patch :update, id: post.id, post: { title: 'change it' }
         expect(response).to redirect_to post_path(post)
       end
     end
   end
 
   describe 'POST #create' do
     context 'when the post is valid' do
       it "redirects to the :show view" do

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/dfdbd259c773c2cf72897bf46ad8a96d3ad548ea)

