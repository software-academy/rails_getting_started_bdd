---
layout: default
title: Expect posts#index to assign Post.all to @posts
---

<h1 id="main">Expect posts#index to assign Post.all to @posts</h1>
Update file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code>&nbsp;
     it &quot;assigns @posts to Post.all&quot; do
       get :index
       expect(assigns[:posts]).to eq Post.all
     end</code></pre>


Becomes
<pre><code>       get :index
       expect(response).to be_success
     end
&nbsp;
     it &quot;assigns @posts to Post.all&quot; do
       get :index
       expect(assigns[:posts]).to eq Post.all
     end
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/7b456dea5eab32097179722d9e47cd14c450bb05)

