---
layout: default
title: Install rspec-rails and capybara-webkit
---

<h1 id="main">Install rspec-rails and capybara-webkit</h1>
Update file `Gemfile`

Add
<pre><code> group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
 end</code></pre>


Becomes
<pre><code> gem &#39;turbolinks&#39;
&nbsp;
 # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
 gem &#39;jbuilder&#39;, &#39;~&gt; 1.2&#39;
&nbsp;
 group :doc do
   # bundle exec rake doc:rails generates the API under doc/api.
   gem &#39;sdoc&#39;, require: false
 end
&nbsp;
 group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
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
<pre><code>     capybara (2.1.0)
       mime-types (&gt;= 1.16)
       nokogiri (&gt;= 1.3.3)
       rack (&gt;= 1.0.0)
       rack-test (&gt;= 0.5.4)
       xpath (~&gt; 2.0)
     capybara-webkit (1.0.0)
       capybara (~&gt; 2.0, &gt;= 2.0.2)
       json</code></pre>


Add
<pre><code>     diff-lcs (1.2.4)</code></pre>


Add
<pre><code>     mini_portile (0.5.2)</code></pre>


Add
<pre><code>     nokogiri (1.6.0)
       mini_portile (~&gt; 0.5.0)</code></pre>


Add
<pre><code>     rspec-core (2.14.7)
     rspec-expectations (2.14.3)
       diff-lcs (&gt;= 1.1.3, &lt; 2.0)
     rspec-mocks (2.14.4)
     rspec-rails (2.14.0)
       actionpack (&gt;= 3.0)
       activesupport (&gt;= 3.0)
       railties (&gt;= 3.0)
       rspec-core (~&gt; 2.14.0)
       rspec-expectations (~&gt; 2.14.0)
       rspec-mocks (~&gt; 2.14.0)</code></pre>


Add
<pre><code>     xpath (2.0.0)
       nokogiri (~&gt; 1.3)</code></pre>


Add
<pre><code>   capybara-webkit</code></pre>


Add
<pre><code>   rspec-rails</code></pre>


Becomes
<pre><code>     activerecord-deprecated_finders (1.0.3)
     activesupport (4.0.0)
       i18n (~&gt; 0.6, &gt;= 0.6.4)
       minitest (~&gt; 4.2)
       multi_json (~&gt; 1.3)
       thread_safe (~&gt; 0.1)
       tzinfo (~&gt; 0.3.37)
     arel (4.0.1)
     atomic (1.1.14)
     builder (3.1.4)
     capybara (2.1.0)
       mime-types (&gt;= 1.16)
       nokogiri (&gt;= 1.3.3)
       rack (&gt;= 1.0.0)
       rack-test (&gt;= 0.5.4)
       xpath (~&gt; 2.0)
     capybara-webkit (1.0.0)
       capybara (~&gt; 2.0, &gt;= 2.0.2)
       json
     coffee-rails (4.0.1)
       coffee-script (&gt;= 2.2.0)
       railties (&gt;= 4.0.0, &lt; 5.0)
     coffee-script (2.2.0)
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
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
       mime-types (~&gt; 1.16)
       treetop (~&gt; 1.4.8)
     mime-types (1.25)
     mini_portile (0.5.2)
     minitest (4.7.5)
     multi_json (1.8.2)
     nokogiri (1.6.0)
       mini_portile (~&gt; 0.5.0)
     polyglot (0.3.3)
     rack (1.5.2)
     rack-test (0.6.2)
       rack (&gt;= 1.0)
     rails (4.0.0)
       actionmailer (= 4.0.0)
       actionpack (= 4.0.0)
       activerecord (= 4.0.0)
       activesupport (= 4.0.0)
       bundler (&gt;= 1.3.0, &lt; 2.0)
       railties (= 4.0.0)
       sprockets-rails (~&gt; 2.0.0)
     railties (4.0.0)
       actionpack (= 4.0.0)
       activesupport (= 4.0.0)
       rake (&gt;= 0.8.7)
       thor (&gt;= 0.18.1, &lt; 2.0)
     rake (10.1.0)
     rdoc (3.12.2)
       json (~&gt; 1.4)
     rspec-core (2.14.7)
     rspec-expectations (2.14.3)
       diff-lcs (&gt;= 1.1.3, &lt; 2.0)
     rspec-mocks (2.14.4)
     rspec-rails (2.14.0)
       actionpack (&gt;= 3.0)
       activesupport (&gt;= 3.0)
       railties (&gt;= 3.0)
       rspec-core (~&gt; 2.14.0)
       rspec-expectations (~&gt; 2.14.0)
       rspec-mocks (~&gt; 2.14.0)
     sass (3.2.12)
     sass-rails (4.0.1)
       railties (&gt;= 4.0.0, &lt; 5.0)
       sass (&gt;= 3.1.10)
       sprockets-rails (~&gt; 2.0.0)
     sdoc (0.3.20)
       json (&gt;= 1.1.3)
       rdoc (~&gt; 3.10)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
@@ -96,24 +120,28 @@ GEM
     tilt (1.4.1)
     treetop (1.4.15)
       polyglot
       polyglot (&gt;= 0.3.1)
     turbolinks (1.3.0)
       coffee-rails
     tzinfo (0.3.38)
     uglifier (2.3.0)
       execjs (&gt;= 0.3.0)
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

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/af083224ea65d0cf6513c83791caf3f84c17e981)

