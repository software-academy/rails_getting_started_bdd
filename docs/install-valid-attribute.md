---
layout: default
title: Install valid_attribute
---

<h1 id="main">Install valid_attribute</h1>
Update file `Gemfile`

Add
<pre><code> group :test do
   gem &#39;valid_attribute&#39;
 end</code></pre>


Becomes
<pre><code>   # bundle exec rake doc:rails generates the API under doc/api.
   gem &#39;sdoc&#39;, require: false
 end
&nbsp;
 group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
 end
&nbsp;
 group :test do
   gem &#39;valid_attribute&#39;
 end
&nbsp;
 # Use ActiveModel has_secure_password
 # gem &#39;bcrypt-ruby&#39;, &#39;~&gt; 3.0.0&#39;
&nbsp;
 # Use unicorn as the app server
 # gem &#39;unicorn&#39;
&nbsp;
 # Use Capistrano for deployment
 # gem &#39;capistrano&#39;, group: :development
&nbsp;
 # Use debugger
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     valid_attribute (1.3.1)</code></pre>


Add
<pre><code>   valid_attribute</code></pre>


Becomes
<pre><code>     tilt (1.4.1)
     treetop (1.4.15)
       polyglot
       polyglot (&gt;= 0.3.1)
     turbolinks (1.3.0)
       coffee-rails
     tzinfo (0.3.38)
     uglifier (2.3.0)
       execjs (&gt;= 0.3.0)
       json (&gt;= 1.8.0)
     valid_attribute (1.3.1)
     xpath (2.0.0)
       nokogiri (~&gt; 1.3)
&nbsp;
 PLATFORMS
   ruby
&nbsp;
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~&gt; 4.0.0)
   factory_girl_rails
   jbuilder (~&gt; 1.2)
   jquery-rails
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~&gt; 4.0.0)
   sdoc
   sqlite3
   turbolinks
   uglifier (&gt;= 1.3.0)
   valid_attribute
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/141dcc0672943f47558b9b14749d14646fadc83b)

