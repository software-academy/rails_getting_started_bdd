---
layout: default
title: Extract form into partial
---

<h1 id="main">Extract form into partial</h1>
Create file `app/views/posts/_form.html.erb`

Add
<pre><code> &lt;%= form_for @post do |f| %&gt;
   &lt;% if @post.errors.any? %&gt;
   &lt;div id=&quot;error_explanation&quot;&gt;
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
 
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
 
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Update file `app/views/posts/edit.html.erb`

Change
<pre><code> &lt;h1&gt;Editing post&lt;/h1&gt;</code></pre>


To
<pre><code> &lt;h1&gt;Edit post&lt;/h1&gt;</code></pre>


Remove
<pre><code> &lt;%= form_for :post, url: post_path(@post.id), method: :patch do |f| %&gt;
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
 
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
 
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Add
<pre><code> &lt;%= render &#39;form&#39; %&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;Edit post&lt;/h1&gt;
 
 &lt;%= render &#39;form&#39; %&gt;
 
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
\ No newline at end of file
</code></pre>


Update file `app/views/posts/new.html.erb`

Change
<pre><code> &lt;h1&gt;New Post&lt;/h1&gt;</code></pre>


To
<pre><code> &lt;h1&gt;New post&lt;/h1&gt;</code></pre>


Remove
<pre><code> &lt;%= form_for :post, url: posts_path do |f| %&gt;
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
 
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
 
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Add
<pre><code> &lt;%= render &#39;form&#39; %&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;New post&lt;/h1&gt;
 
 &lt;%= render &#39;form&#39; %&gt;
 
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/19f9dcff92083031234a98fa90ad70a1706803fe)

