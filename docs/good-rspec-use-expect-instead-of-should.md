---
layout: default
title: Good RSpec, use expect instead of should
---

<h1 id="main">Good RSpec, use expect instead of should</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Change
<pre><code>       response.should be_success</code></pre>


To
<pre><code>       expect(response).to be_success</code></pre>


Change
<pre><code>       response.should be_success</code></pre>


To
<pre><code>       expect(response).to be_success</code></pre>


Becomes
<pre><code>   describe &#39;GET #new&#39; do
     it &quot;returns http success&quot; do
       get :new
       expect(response).to be_success
     end
   end
 
@@ -19,7 +19,7 @@ describe PostsController do
   describe &#39;GET #index&#39; do
     it &quot;returns http success&quot; do
       get :index
       expect(response).to be_success
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/be54eb69ef1a3179bf7b36344de9c7a3759824ea)

