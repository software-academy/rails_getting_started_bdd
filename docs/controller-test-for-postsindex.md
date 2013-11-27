---
layout: default
title: Controller test for posts#index
---

<h1 id="main">Controller test for posts#index</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code> 
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       response.should be_success
     end
   end</code></pre>


Becomes
<pre><code>       expect(response).to redirect_to assigns[:post]
     end
   end
 
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       response.should be_success
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/e3323a88b5bb9321d628b101f2277e8052ac2f51)

