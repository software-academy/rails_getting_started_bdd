---
layout: default
title: Add controller test for posts#create with validation
---

<h1 id="main">Add controller test for posts#create with validation</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Remove
```
     it "redirects to the :show view" do
       post :create, post: { title: 'title', text: 'text' }
       expect(response).to redirect_to assigns[:post]
```


####Add
```
     context 'when the post is valid' do
       it "redirects to the :show view" do
         post :create, post: { title: 'title', text: 'text' }
         expect(response).to redirect_to assigns[:post]
       end
     end
 
     context 'when the post is not valid' do
       it "renders the :new view" do
         post :create, post: { title: '', text: 'text' }
         expect(response).to render_template :new
       end
```


####Becomes
```
   end
 
   describe 'POST #create' do
     context 'when the post is valid' do
       it "redirects to the :show view" do
         post :create, post: { title: 'title', text: 'text' }
         expect(response).to redirect_to assigns[:post]
       end
     end
 
     context 'when the post is not valid' do
       it "renders the :new view" do
         post :create, post: { title: '', text: 'text' }
         expect(response).to render_template :new
       end
     end
   end
 

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/c61096b910a9d55b1a2b2ef8f2a7a656fa7b1f36)

