---
layout: default
title: Add test for invalid post edit
---

<h1 id="main">Add test for invalid post edit</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Remove
```
       it "redirects to the :show view" do
         patch :update, id: post.id, post: { title: 'change it' }
         expect(response).to redirect_to post_path(post)
```


####Add
```
       context 'when the post is valid' do
         it "redirects to the :show view" do
           patch :update, id: post.id, post: { title: 'change it' }
           expect(response).to redirect_to post_path(post)
         end
       end
 
       context 'when the post is not valid' do
         it "renders the :new view" do
           patch :update, id: post.id, post: { title: '' }
           expect(response).to render_template :edit
         end
```


####Becomes
```
     end
 
     describe 'PATCH #update' do
       context 'when the post is valid' do
         it "redirects to the :show view" do
           patch :update, id: post.id, post: { title: 'change it' }
           expect(response).to redirect_to post_path(post)
         end
       end
 
       context 'when the post is not valid' do
         it "renders the :new view" do
           patch :update, id: post.id, post: { title: '' }
           expect(response).to render_template :edit
         end
       end
     end
 

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/4d58a7286f3da595a52e6c495f503a2af3aa277a)

