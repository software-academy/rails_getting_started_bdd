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
<pre><code>         expect(response).to be_success
       end
     end
&nbsp;
     describe &#39;PATCH #update&#39; do
       it &quot;redirects to the :show view&quot; do
         patch :update, id: post.id, post: { title: &#39;change it&#39; }
         expect(response).to redirect_to post_path(post)
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
     context &#39;when the post is valid&#39; do
       it &quot;redirects to the :show view&quot; do
         post :create, post: { title: &#39;title&#39;, text: &#39;text&#39; }
         expect(response).to redirect_to assigns[:post]
       end
     end
&nbsp;
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
<pre><code>     click_link &#39;New post&#39;
     expect(current_path).to eq new_post_path
   end
&nbsp;
   context &#39;when there are posts&#39; do
     before do
       @post1 = create :post, title: &#39;My first post&#39;
       @post2 = create :post, title: &#39;My second post&#39;
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
         click_link &#39;Edit&#39;
         expect(current_path).to eq edit_post_path(@post2)
       end
     end
&nbsp;
     scenario &#39;can be viewed from link on posts page&#39; do
       visit posts_path
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/292a020a05ded60f2f3440655f52f43af031c3d0)

