---
layout: default
title: rails generate controller welcome index
---

<h1 id="main">rails generate controller welcome index</h1>
Create file `app/assets/javascripts/welcome.js.coffee`

Add
<pre><code> # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
 # You can use CoffeeScript in this file: http://coffeescript.org/</code></pre>


Create file `app/assets/stylesheets/welcome.css.scss`

Add
<pre><code> // Place all the styles related to the welcome controller here.
 // They will automatically be included in application.css.
 // You can use Sass (SCSS) here: http://sass-lang.com/</code></pre>


Create file `app/controllers/welcome_controller.rb`

Add
<pre><code> class WelcomeController &lt; ApplicationController
   def index
   end
 end</code></pre>


Create file `app/helpers/welcome_helper.rb`

Add
<pre><code> module WelcomeHelper
 end</code></pre>


Create file `app/views/welcome/index.html.erb`

Add
<pre><code> &lt;h1&gt;Welcome#index&lt;/h1&gt;
 &lt;p&gt;Find me in app/views/welcome/index.html.erb&lt;/p&gt;</code></pre>


Update file `config/routes.rb`

Add
<pre><code>   get &quot;welcome/index&quot;</code></pre>


Becomes
<pre><code> Blog::Application.routes.draw do
   get &quot;welcome/index&quot;
   # The priority is based upon order of creation: first created -&gt; highest priority.
   # See how all your routes lay out with &quot;rake routes&quot;.
&nbsp;
   # You can have the root of your site routed with &quot;root&quot;
   # root &#39;welcome#index&#39;
&nbsp;
   # Example of regular route:
   #   get &#39;products/:id&#39; =&gt; &#39;catalog#view&#39;
&nbsp;
   # Example of named route that can be invoked with purchase_url(id: product.id)
</code></pre>


Create file `spec/controllers/welcome_controller_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe WelcomeController do
&nbsp;
   describe &quot;GET &#39;index&#39;&quot; do
     it &quot;returns http success&quot; do
       get &#39;index&#39;
       response.should be_success
     end
   end
&nbsp;
 end</code></pre>


Create file `spec/helpers/welcome_helper_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 # Specs in this file have access to a helper object that includes
 # the WelcomeHelper. For example:
 #
 # describe WelcomeHelper do
 #   describe &quot;string concat&quot; do
 #     it &quot;concats two strings with spaces&quot; do
 #       expect(helper.concat_strings(&quot;this&quot;,&quot;that&quot;)).to eq(&quot;this that&quot;)
 #     end
 #   end
 # end
 describe WelcomeHelper do
   pending &quot;add some examples to (or delete) #{__FILE__}&quot;
 end</code></pre>


Create file `spec/views/welcome/index.html.erb_spec.rb`

Add
<pre><code> require &#39;spec_helper&#39;
&nbsp;
 describe &quot;welcome/index.html.erb&quot; do
   pending &quot;add some examples to (or delete) #{__FILE__}&quot;
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/98c4ea75759d54749fd547a2f4ea6a1d1cbf68ea)

