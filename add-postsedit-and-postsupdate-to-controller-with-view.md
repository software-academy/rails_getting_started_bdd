---
layout: default
title: Add posts#edit and posts#update to controller, with view
---

<h1 id="main">Add posts#edit and posts#update to controller, with view</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>   def edit
     @post = Post.find(params[:id])
   end</code></pre>


Add
<pre><code>&nbsp;
   def update
     @post = Post.find(params[:id])
&nbsp;
     if @post.update(params[:post].permit(:title, :text))
       redirect_to @post
     else
       render &#39;edit&#39;
     end
   end</code></pre>


Becomes
<pre><code>     end
   end
&nbsp;
   def edit
     @post = Post.find(params[:id])
   end
&nbsp;
   def index
     @posts = Post.all
   end
@@ -20,4 +24,14 @@ class PostsController &lt; ApplicationController
   def show
     @post = Post.find(params[:id])
   end
&nbsp;
   def update
     @post = Post.find(params[:id])
&nbsp;
     if @post.update(params[:post].permit(:title, :text))
       redirect_to @post
     else
       render &#39;edit&#39;
     end
   end
 end
</code></pre>


Create file `app/views/posts/edit.html.erb`

Add
<pre><code> &lt;h1&gt;Editing post&lt;/h1&gt;
&nbsp;
 &lt;%= form_for :post, url: post_path(@post.id), method: :patch do |f| %&gt;
   &lt;% if @post.errors.any? %&gt;
     &lt;div id=&quot;errorExplanation&quot;&gt;
       &lt;h2&gt;&lt;%= pluralize(@post.errors.count, &quot;error&quot;) %&gt; prohibited
         this post from being saved:&lt;/h2&gt;
       &lt;ul&gt;
       &lt;% @post.errors.full_messages.each do |msg| %&gt;
         &lt;li&gt;&lt;%= msg %&gt;&lt;/li&gt;
       &lt;% end %&gt;
       &lt;/ul&gt;
     &lt;/div&gt;
   &lt;% end %&gt;
   &lt;p&gt;
     &lt;%= f.label :title %&gt;&lt;br&gt;
     &lt;%= f.text_field :title %&gt;
   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;
&nbsp;
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/37081702b57e370e9959b55ea0973aa9e3662e2d)

