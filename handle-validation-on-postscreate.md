---
layout: default
title: Handle validation on posts#create
---

<h1 id="main">Handle validation on posts#create</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>     @post = Post.new</code></pre>


Remove
<pre><code>     @post.save
     redirect_to @post</code></pre>


Add
<pre><code>     if @post.save
       redirect_to @post
     else
       render &#39;new&#39;
     end</code></pre>


Becomes
<pre><code> class PostsController &lt; ApplicationController
   def new
     @post = Post.new
   end
&nbsp;
   def create
     @post = Post.new(params[:post].permit(:title, :text))
&nbsp;
     if @post.save
       redirect_to @post
     else
       render &#39;new&#39;
     end
   end
&nbsp;
   def index
     @posts = Post.all
   end
&nbsp;
   def show
     @post = Post.find(params[:id])
   end
 end
</code></pre>


Update file `app/views/posts/new.html.erb`

Add
<pre><code>   &lt;% if @post.errors.any? %&gt;
     &lt;div id=&quot;errorExplanation&quot;&gt;
       &lt;h2&gt;&lt;%= pluralize(@post.errors.count, &quot;error&quot;) %&gt; prohibited
         this post from being saved:&lt;/h2&gt;
       &lt;ul&gt;
       &lt;% @post.errors.full_messages.each do |msg| %&gt;
         &lt;li&gt;&lt;%= msg %&gt;&lt;/li&gt;
       &lt;% end %&gt;
       &lt;/ul&gt;
     &lt;/div&gt;
   &lt;% end %&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;New Post&lt;/h1&gt;
&nbsp;
 &lt;%= form_for :post, url: posts_path do |f| %&gt;
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/ac9f5e211b55378fc65e36a49461ea11e06736e7)

