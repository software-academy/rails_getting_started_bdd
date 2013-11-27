---
layout: default
title: rails g controller posts
---

<h1 id="main">rails g controller posts</h1>
Create file `app/assets/javascripts/posts.js.coffee`

Add
<pre><code> # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/</code></pre>


Create file `app/assets/stylesheets/posts.css.scss`

Add
<pre><code> // Place all the styles related to the posts controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/</code></pre>


Create file `app/controllers/posts_controller.rb`

Add
<pre><code> class PostsController &lt; ApplicationController
 end</code></pre>


Create file `app/helpers/posts_helper.rb`

Add
<pre><code> module PostsHelper
 end</code></pre>


Create file `spec/controllers/posts_controller_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe PostsController do
&nbsp;
 end</code></pre>


Create file `spec/helpers/posts_helper_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 # Specs in this file have access to a helper object that includes
 # the PostsHelper. For example:
 #
 # describe PostsHelper do
 #   describe &quot;string concat&quot; do
 #     it &quot;concats two strings with spaces&quot; do
 #       expect(helper.concat_strings(&quot;this&quot;,&quot;that&quot;)).to eq(&quot;this that&quot;)
 #     end
 #   end
 # end
 describe PostsHelper do
   pending &quot;add some examples to (or delete) #{__FILE__}&quot;
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/76919d67fa77f900b20c42948b6b8046a38c8d5b)

