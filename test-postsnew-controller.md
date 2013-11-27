---
layout: default
title: Test posts#new controller
---

<h1 id="main">Test posts#new controller</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>   describe &quot;GET &#39;new&#39;&quot; do
     it &quot;returns http success&quot; do
       get &#39;new&#39;
       response.should be_success
     end
   end</code></pre>


Becomes
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe PostsController do
&nbsp;
   describe &quot;GET &#39;new&#39;&quot; do
     it &quot;returns http success&quot; do
       get &#39;new&#39;
       response.should be_success
     end
   end
&nbsp;
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/f146d830559f018de9f0ba25843c82a551a01913)

