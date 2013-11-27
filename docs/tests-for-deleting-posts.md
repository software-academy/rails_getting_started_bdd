---
layout: default
title: Tests for deleting posts
---

<h1 id="main">Tests for deleting posts</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>&nbsp;
     describe &#39;DELETE #destroy&#39; do
       it &quot;redirects to the :index view&quot; do
         delete :destroy, id: post.id
         expect(response).to redirect_to posts_path
       end
     end</code></pre>


Becomes
<pre><code>         expect(response).to redirect_to post_path(post)
       end
     end
&nbsp;
     describe &#39;DELETE #destroy&#39; do
       it &quot;redirects to the :index view&quot; do
         delete :destroy, id: post.id
         expect(response).to redirect_to posts_path
       end
     end
   end
&nbsp;
   describe &#39;POST #create&#39; do
</code></pre>


Update file `spec/features/posts_spec.rb`

Add
<pre><code>     scenario &#39;can be deleted from link on posts page&#39;, js: true do
       visit posts_path
       within &#39;tr:last-child&#39; do
         page.driver.accept_js_confirms!
         click_link &#39;Destroy&#39;
         expect(current_path).to eq posts_path
         expect(page).not_to have_content(&#39;My second post&#39;)
       end
     end</code></pre>


Becomes
<pre><code>       @post2 = create :post, title: &#39;My second post&#39;
     end
&nbsp;
     scenario &#39;can be deleted from link on posts page&#39;, js: true do
       visit posts_path
       within &#39;tr:last-child&#39; do
         page.driver.accept_js_confirms!
         click_link &#39;Destroy&#39;
         expect(current_path).to eq posts_path
         expect(page).not_to have_content(&#39;My second post&#39;)
       end
     end
&nbsp;
     scenario &#39;can be edited from link on posts page&#39; do
       visit posts_path
       within &#39;tr:last-child&#39; do
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/292a020a05ded60f2f3440655f52f43af031c3d0)
