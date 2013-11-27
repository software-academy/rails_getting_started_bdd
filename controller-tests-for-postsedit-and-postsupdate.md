---
layout: default
title: Controller tests for posts#edit and posts#update
---

<h1 id="main">Controller tests for posts#edit and posts#update</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>   context &#39;when there is a post&#39; do
     let(:post) { create :post }
&nbsp;
     describe &#39;GET #edit&#39; do
       it &quot;returns http success&quot; do
         get :edit, id: post.id
         expect(response).to be_success
       end
     end
&nbsp;
     describe &#39;PATCH #update&#39; do
       it &quot;redirects to the :show view&quot; do
         patch :update, id: post.id, post: { title: &#39;change it&#39; }
         expect(response).to redirect_to post_path(post)
       end
     end
   end</code></pre>


Becomes
<pre><code>     end
   end
&nbsp;
   context &#39;when there is a post&#39; do
     let(:post) { create :post }
&nbsp;
     describe &#39;GET #edit&#39; do
       it &quot;returns http success&quot; do
         get :edit, id: post.id
         expect(response).to be_success
       end
     end
&nbsp;
     describe &#39;PATCH #update&#39; do
       it &quot;redirects to the :show view&quot; do
         patch :update, id: post.id, post: { title: &#39;change it&#39; }
         expect(response).to redirect_to post_path(post)
       end
     end
   end
&nbsp;
   describe &#39;POST #create&#39; do
     context &#39;when the post is valid&#39; do
       it &quot;redirects to the :show view&quot; do
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/dfdbd259c773c2cf72897bf46ad8a96d3ad548ea)

