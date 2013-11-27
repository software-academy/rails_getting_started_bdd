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
<pre><code>   gem &#39;sdoc&#39;, require: false
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
<pre><code>     arel (4.0.1)
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
@@ -35,6 +44,7 @@ GEM
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
     hike (1.2.3)
@@ -50,8 +60,11 @@ GEM
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
@@ -72,6 +85,17 @@ GEM
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
@@ -103,15 +127,19 @@ GEM
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/af083224ea65d0cf6513c83791caf3f84c17e981)
