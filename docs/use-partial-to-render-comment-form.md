---
layout: default
title: Use partial to render comment form
---

<h1 id="main">Use partial to render comment form</h1>
Create file `app/views/comments/_form.html.erb`

Add
<pre><code> &lt;%= form_for([@post, @post.comments.build]) do |f| %&gt;
   &lt;p&gt;
     &lt;%= f.label :commenter %&gt;&lt;br /&gt;
     &lt;%= f.text_field :commenter %&gt;
   &lt;/p&gt;
   &lt;p&gt;
     &lt;%= f.label :body %&gt;&lt;br /&gt;
     &lt;%= f.text_area :body %&gt;
   &lt;/p&gt;
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Update file `app/views/posts/show.html.erb`

Remove
<pre><code> &lt;%= form_for([@post, @post.comments.build]) do |f| %&gt;
   &lt;p&gt;
     &lt;%= f.label :commenter %&gt;&lt;br /&gt;
     &lt;%= f.text_field :commenter %&gt;
   &lt;/p&gt;
   &lt;p&gt;
     &lt;%= f.label :body %&gt;&lt;br /&gt;
     &lt;%= f.text_area :body %&gt;
   &lt;/p&gt;
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Add
<pre><code> &lt;%= render &quot;comments/form&quot; %&gt;</code></pre>


Becomes
<pre><code> &lt;%= render @post.comments %&gt;
 
 &lt;h2&gt;Add a comment:&lt;/h2&gt;
 &lt;%= render &quot;comments/form&quot; %&gt;
 
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
 | &lt;%= link_to &#39;Edit&#39;, edit_post_path(@post) %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/3304445370e0f4d6eb901e6b747123b61202ffca)

