---
layout: default
title: Add controller test for posts#create with validation
---

<h1 id="main">Add controller test for posts#create with validation</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Remove
<pre><code>     it &quot;redirects to the :show view&quot; do
       post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
       expect(response).to redirect_to assigns[:post]</code></pre>


Add
<pre><code>     context &#39;when the post is valid&#39; do
       it &quot;redirects to the :show view&quot; do
         post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
         expect(response).to redirect_to assigns[:post]
       end
     end
&nbsp;
     context &#39;when the post is not valid&#39; do
       it &quot;renders the :new view&quot; do
         post :create, post: { title: &#39;&#39;, text: &#39;text&#39; }
         expect(response).to render_template :new
       end</code></pre>


Becomes
<pre><code> describe PostsController do
&nbsp;
   describe &#39;GET #new&#39; do
     it &quot;returns http success&quot; do
       get :new
       expect(response).to be_success
     end
   end
&nbsp;
   describe &#39;POST #create&#39; do
     context &#39;when the post is valid&#39; do
       it &quot;redirects to the :show view&quot; do
         post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
         expect(response).to redirect_to assigns[:post]
       end
     end
&nbsp;
     context &#39;when the post is not valid&#39; do
       it &quot;renders the :new view&quot; do
         post :create, post: { title: &#39;&#39;, text: &#39;text&#39; }
         expect(response).to render_template :new
       end
     end
   end
&nbsp;
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       expect(response).to be_success
     end
&nbsp;
     it &quot;assigns @posts to Post.all&quot; do
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/c61096b910a9d55b1a2b2ef8f2a7a656fa7b1f36)

