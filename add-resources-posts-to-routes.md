---
layout: default
title: Add resources :posts to routes
---

<h1 id="main">Add resources :posts to routes</h1>
Update file `config/routes.rb`

Remove
<pre><code>   # The priority is based upon order of creation: first created -&gt; highest priority.
   # See how all your routes lay out with &quot;rake routes&quot;.</code></pre>


Add
<pre><code>   resources :posts</code></pre>


Remove
<pre><code>   # You can have the root of your site routed with &quot;root&quot;</code></pre>


Remove
<pre><code>&nbsp;
   # Example of regular route:
   #   get &#39;products/:id&#39; =&gt; &#39;catalog#view&#39;
&nbsp;
   # Example of named route that can be invoked with purchase_url(id: product.id)
   #   get &#39;products/:id/purchase&#39; =&gt; &#39;catalog#purchase&#39;, as: :purchase
&nbsp;
   # Example resource route (maps HTTP verbs to controller actions automatically):
   #   resources :products
&nbsp;
   # Example resource route with options:
   #   resources :products do
   #     member do
   #       get &#39;short&#39;
   #       post &#39;toggle&#39;
   #     end
   #
   #     collection do
   #       get &#39;sold&#39;
   #     end
   #   end
&nbsp;
   # Example resource route with sub-resources:
   #   resources :products do
   #     resources :comments, :sales
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
   #     # (app/controllers/admin/products_controller.rb)
   #     resources :products
   #   end</code></pre>


Becomes
<pre><code> Blog::Application.routes.draw do
   resources :posts
&nbsp;
   root &#39;welcome#index&#39;
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/eecd3214ac941e3fbd2567a262f89a3f68c2bf09)

