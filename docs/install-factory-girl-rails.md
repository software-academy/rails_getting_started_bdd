---
layout: default
title: Install factory_girl_rails
---

<h1 id="main">Install factory_girl_rails</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;factory_girl_rails&#39;</code></pre>


Becomes
<pre><code> gem &#39;jbuilder&#39;, &#39;~&gt; 1.2&#39;
&nbsp;
 group :doc do
   # bundle exec rake doc:rails generates the API under doc/api.
   gem &#39;sdoc&#39;, require: false
 end
&nbsp;
 group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
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
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     factory_girl (4.2.0)
       activesupport (&gt;= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~&gt; 4.2.0)
       railties (&gt;= 3.0.0)</code></pre>


Add
<pre><code>   factory_girl_rails</code></pre>


Becomes
<pre><code>     coffee-rails (4.0.1)
       coffee-script (&gt;= 2.2.0)
       railties (&gt;= 4.0.0, &lt; 5.0)
     coffee-script (2.2.0)
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
     factory_girl (4.2.0)
       activesupport (&gt;= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~&gt; 4.2.0)
       railties (&gt;= 3.0.0)
     hike (1.2.3)
     i18n (0.6.5)
     jbuilder (1.5.2)
       activesupport (&gt;= 3.0.0)
       multi_json (&gt;= 1.2.0)
     jquery-rails (3.0.4)
       railties (&gt;= 3.0, &lt; 5.0)
       thor (&gt;= 0.14, &lt; 2.0)
     json (1.8.1)
     mail (2.5.4)
@@ -129,19 +134,20 @@ GEM
       json (&gt;= 1.8.0)
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/6def155676bc9b91879cfb8003864c8c6d6e7585)

