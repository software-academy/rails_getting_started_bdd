---
layout: default
title: Add render in posts#create as temporary measure
---

<h1 id="main">Add render in posts#create as temporary measure</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>&nbsp;
   def create
     render text: params[:post].inspect
   end</code></pre>


Becomes
<pre><code> class PostsController &lt; ApplicationController
   def new
   end
&nbsp;
   def create
     render text: params[:post].inspect
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/583d4731d228cfe3e7ccda00543c21b737f42e49)
