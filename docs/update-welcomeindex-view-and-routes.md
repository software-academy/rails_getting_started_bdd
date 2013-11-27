---
layout: default
title: Update welcome#index view and routes
---

<h1 id="main">Update welcome#index view and routes</h1>
Update file `app/views/welcome/index.html.erb`

Remove
<pre><code> &lt;h1&gt;Welcome#index&lt;/h1&gt;
 &lt;p&gt;Find me in app/views/welcome/index.html.erb&lt;/p&gt;</code></pre>


Add
<pre><code> &lt;h1&gt;Hello, Rails!&lt;/h1&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;Hello, Rails!&lt;/h1&gt;
\ No newline at end of file
</code></pre>


Update file `config/routes.rb`

Remove
<pre><code>   get &quot;welcome/index&quot;</code></pre>


Change
<pre><code>   # root &#39;welcome#index&#39;</code></pre>


To
<pre><code>   root &#39;welcome#index&#39;</code></pre>


Change
<pre><code></code></pre>


To
<pre><code></code></pre>


Becomes
<pre><code> Blog::Application.routes.draw do
   # The priority is based upon order of creation: first created -&gt; highest priority.
   # See how all your routes lay out with &quot;rake routes&quot;.
 
   # You can have the root of your site routed with &quot;root&quot;
   root &#39;welcome#index&#39;
 
   # Example of regular route:
   #   get &#39;products/:id&#39; =&gt; &#39;catalog#view&#39;
@@ -40,7 +39,7 @@ Blog::Application.routes.draw do
   #       get &#39;recent&#39;, on: :collection
   #     end
   #   end
 
   # Example resource route with concerns:
   #   concern :toggleable do
   #     post &#39;toggle&#39;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/588d57385c2c9652835af0663565ef7b2a4ff3de)

