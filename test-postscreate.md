---
layout: default
title: Test posts#create
---

<h1 id="main">Test posts#create</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>   describe &#39;POST #create&#39; do
     it &quot;redirects to the :show view&quot; do
       post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
       expect(response).to redirect_to assigns[:post]
     end
   end</code></pre>


Becomes
<pre><code>&nbsp;
 describe PostsController do
&nbsp;
   describe &#39;GET #new&#39; do
     it &quot;returns http success&quot; do
       get :new
       response.should be_success
     end
   end
&nbsp;
   describe &#39;POST #create&#39; do
     it &quot;redirects to the :show view&quot; do
       post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
       expect(response).to redirect_to assigns[:post]
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/497cc7b2764fbd7462bd04fc363a311fd1b932d1)

