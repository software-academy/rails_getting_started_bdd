---
layout: default
title: Update the describe to use routing convention
---

<h1 id="main">Update the describe to use routing convention</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Change
<pre><code>   describe &quot;GET &#39;new&#39;&quot; do</code></pre>


To
<pre><code>   describe &#39;GET #new&#39; do</code></pre>


Change
<pre><code>       get &#39;new&#39;</code></pre>


To
<pre><code>       get :new</code></pre>


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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/db27eb800b64e9e470f8fc85501a95634b287256)

