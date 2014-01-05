---
layout: default
title: Controller test for posts#index
---

<h1 id="main">Controller test for posts#index</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>&nbsp;
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       response.should be_success
     end
   end</code></pre>


Becomes
<pre><code>       response.should be_success
     end
   end
&nbsp;
   describe &#39;POST #create&#39; do
     it &quot;redirects to the :show view&quot; do
       post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
       expect(response).to redirect_to assigns[:post]
     end
   end
&nbsp;
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       response.should be_success
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e3323a88b5bb9321d628b101f2277e8052ac2f51)

