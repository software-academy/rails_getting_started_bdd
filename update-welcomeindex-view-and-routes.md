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


Becomes
<pre><code> Blog::Application.routes.draw do
   # The priority is based upon order of creation: first created -&gt; highest priority.
   # See how all your routes lay out with &quot;rake routes&quot;.
&nbsp;
   # You can have the root of your site routed with &quot;root&quot;
   root &#39;welcome#index&#39;
&nbsp;
   # Example of regular route:
   #   get &#39;products/:id&#39; =&gt; &#39;catalog#view&#39;
&nbsp;
   # Example of named route that can be invoked with purchase_url(id: product.id)
   #   get &#39;products/:id/purchase&#39; =&gt; &#39;catalog#purchase&#39;, as: :purchase
&nbsp;
   # Example resource route (maps HTTP verbs to controller actions automatically):
   #   resources :products
&nbsp;
@@ -33,21 +32,21 @@ Blog::Application.routes.draw do
   #     resource :seller
   #   end
&nbsp;
   # Example resource route with more complex sub-resources:
   #   resources :products do
   #     resources :comments
   #     resources :sales do
   #       get &#39;recent&#39;, on: :collection
   #     end
   #   end
&nbsp;
   # Example resource route with concerns:
   #   concern :toggleable do
   #     post &#39;toggle&#39;
   #   end
   #   resources :posts, concerns: :toggleable
   #   resources :photos, concerns: :toggleable
&nbsp;
   # Example resource route within a namespace:
   #   namespace :admin do
   #     # Directs /admin/products/* to Admin::ProductsController
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/588d57385c2c9652835af0663565ef7b2a4ff3de)

