---
layout: default
title: Add test for invalid post edit
---

<h1 id="main">Add test for invalid post edit</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Remove
<pre><code>       it &quot;redirects to the :show view&quot; do
         patch :update, id: post.id, post: { title: &#39;change it&#39; }
         expect(response).to redirect_to post_path(post)</code></pre>


Add
<pre><code>       context &#39;when the post is valid&#39; do
         it &quot;redirects to the :show view&quot; do
           patch :update, id: post.id, post: { title: &#39;change it&#39; }
           expect(response).to redirect_to post_path(post)
         end
       end
&nbsp;
       context &#39;when the post is not valid&#39; do
         it &quot;renders the :new view&quot; do
           patch :update, id: post.id, post: { title: &#39;&#39; }
           expect(response).to render_template :edit
         end</code></pre>


Becomes
<pre><code>     let(:post) { create :post }
&nbsp;
     describe &#39;GET #edit&#39; do
       it &quot;returns http success&quot; do
         get :edit, id: post.id
         expect(response).to be_success
       end
     end
&nbsp;
     describe &#39;PATCH #update&#39; do
       context &#39;when the post is valid&#39; do
         it &quot;redirects to the :show view&quot; do
           patch :update, id: post.id, post: { title: &#39;change it&#39; }
           expect(response).to redirect_to post_path(post)
         end
       end
&nbsp;
       context &#39;when the post is not valid&#39; do
         it &quot;renders the :new view&quot; do
           patch :update, id: post.id, post: { title: &#39;&#39; }
           expect(response).to render_template :edit
         end
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/4d58a7286f3da595a52e6c495f503a2af3aa277a)

