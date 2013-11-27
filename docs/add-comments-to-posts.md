---
layout: default
title: Add comments to posts
---

<h1 id="main">Add comments to posts</h1>
Create file `app/assets/javascripts/comments.js.coffee`

Add
<pre><code> # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/</code></pre>


Create file `app/assets/stylesheets/comments.css.scss`

Add
<pre><code> // Place all the styles related to the Comments controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/</code></pre>


Create file `app/controllers/comments_controller.rb`

Add
<pre><code> class CommentsController &lt; ApplicationController
   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     redirect_to post_path(@post)
   end
 end</code></pre>


Create file `app/helpers/comments_helper.rb`

Add
<pre><code> module CommentsHelper
 end</code></pre>


Update file `app/views/posts/show.html.erb`

Add
<pre><code> &lt;h2&gt;Comments&lt;/h2&gt;
 &lt;% @post.comments.each do |comment| %&gt;
   &lt;p&gt;
     &lt;strong&gt;Commenter:&lt;/strong&gt;
     &lt;%= comment.commenter %&gt;
   &lt;/p&gt;
 
   &lt;p&gt;
     &lt;strong&gt;Comment:&lt;/strong&gt;
     &lt;%= comment.body %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;
 
 &lt;h2&gt;Add a comment:&lt;/h2&gt;
 &lt;%= form_for([@post, @post.comments.build]) do |f| %&gt;
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


Becomes
<pre><code>   &lt;%= @post.text %&gt;
 &lt;/p&gt;
 
 &lt;h2&gt;Comments&lt;/h2&gt;
 &lt;% @post.comments.each do |comment| %&gt;
   &lt;p&gt;
     &lt;strong&gt;Commenter:&lt;/strong&gt;
     &lt;%= comment.commenter %&gt;
   &lt;/p&gt;
 
   &lt;p&gt;
     &lt;strong&gt;Comment:&lt;/strong&gt;
     &lt;%= comment.body %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;
 
 &lt;h2&gt;Add a comment:&lt;/h2&gt;
 &lt;%= form_for([@post, @post.comments.build]) do |f| %&gt;
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
 &lt;% end %&gt;
 
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
 | &lt;%= link_to &#39;Edit&#39;, edit_post_path(@post) %&gt;
\ No newline at end of file
</code></pre>


Update file `config/routes.rb`

Change
<pre><code>   resources :posts</code></pre>


To
<pre><code>   resources :posts do
     resources :comments
   end</code></pre>


Becomes
<pre><code> Blog::Application.routes.draw do
   resources :posts do
     resources :comments
   end
 
   root &#39;welcome#index&#39;
 end
</code></pre>


Create file `spec/controllers/comments_controller_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
 
 describe CommentsController do
   context &#39;when there is a post&#39; do
     let(:my_post) { create :post }
 
     describe &#39;POST #create&#39; do
       it &quot;redirects to the post&#39;s :show view&quot; do
         post :create, { post_id: my_post.id, comment: { commenter: &#39;Concerned Person&#39;, body: &#39;Great Post!&#39; } }
         expect(response).to redirect_to post_path(my_post)
       end
     end
   end
 end</code></pre>


Create file `spec/helpers/comments_helper_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
 
 # Specs in this file have access to a helper object that includes
 # the CommentsHelper. For example:
 #
 # describe CommentsHelper do
 #   describe &quot;string concat&quot; do
 #     it &quot;concats two strings with spaces&quot; do
 #       expect(helper.concat_strings(&quot;this&quot;,&quot;that&quot;)).to eq(&quot;this that&quot;)
 #     end
 #   end
 # end
 describe CommentsHelper do
   pending &quot;add some examples to (or delete) #{__FILE__}&quot;
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/86fff3cb3042907e050bf26a5d6650966858397e)

