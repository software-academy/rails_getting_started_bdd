---
layout: default
title: Install jazz_hands and launchy for debugging
---

<h1 id="main">Install jazz_hands and launchy for debugging</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;jazz_hands&#39;</code></pre>


Add
<pre><code>   gem &#39;launchy&#39;</code></pre>


Becomes
<pre><code>&nbsp;
 group :doc do
   # bundle exec rake doc:rails generates the API under doc/api.
   gem &#39;sdoc&#39;, require: false
 end
&nbsp;
 group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
   gem &#39;jazz_hands&#39;
 end
&nbsp;
 group :test do
   gem &#39;launchy&#39;
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
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     addressable (2.3.5)</code></pre>


Add
<pre><code>     awesome_print (1.2.0)
     binding_of_caller (0.7.2)
       debug_inspector (&gt;= 0.0.1)</code></pre>


Add
<pre><code>     coderay (1.0.9)</code></pre>


Add
<pre><code>     columnize (0.3.6)
     coolline (0.4.2)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (&gt;= 0.3.1)
       debugger-linecache (~&gt; 1.2.0)
       debugger-ruby_core_source (~&gt; 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)</code></pre>


Add
<pre><code>     diffy (3.0.1)</code></pre>


Add
<pre><code>     grit (2.5.0)
       diff-lcs (~&gt; 1.1)
       mime-types (~&gt; 1.15)
       posix-spawn (~&gt; 0.3.6)</code></pre>


Add
<pre><code>     hirb (0.7.1)</code></pre>


Add
<pre><code>     jazz_hands (0.5.2)
       awesome_print (~&gt; 1.2)
       coolline (&gt;= 0.4.2)
       hirb (~&gt; 0.7.1)
       pry (~&gt; 0.9.12)
       pry-debugger (~&gt; 0.2.2)
       pry-doc (~&gt; 0.4.6)
       pry-git (~&gt; 0.2.3)
       pry-rails (~&gt; 0.3.2)
       pry-remote (&gt;= 0.1.7)
       pry-stack_explorer (~&gt; 0.4.9)
       railties (&gt;= 3.0, &lt; 5.0)</code></pre>


Add
<pre><code>     launchy (2.3.0)
       addressable (~&gt; 2.3)</code></pre>


Add
<pre><code>     method_source (0.8.2)</code></pre>


Add
<pre><code>     posix-spawn (0.3.6)
     pry (0.9.12.2)
       coderay (~&gt; 1.0.5)
       method_source (~&gt; 0.8)
       slop (~&gt; 3.4)
     pry-debugger (0.2.2)
       debugger (~&gt; 1.3)
       pry (~&gt; 0.9.10)
     pry-doc (0.4.6)
       pry (&gt;= 0.9)
       yard (&gt;= 0.8)
     pry-git (0.2.3)
       diffy
       grit
       pry (&gt;= 0.9.8)
     pry-rails (0.3.2)
       pry (&gt;= 0.9.10)
     pry-remote (0.1.7)
       pry (~&gt; 0.9)
       slop (~&gt; 3.0)
     pry-stack_explorer (0.4.9.1)
       binding_of_caller (&gt;= 0.7)
       pry (&gt;= 0.9.11)</code></pre>


Add
<pre><code>     slop (3.4.6)</code></pre>


Add
<pre><code>     yard (0.8.7.2)</code></pre>


Add
<pre><code>   jazz_hands</code></pre>


Add
<pre><code>   launchy</code></pre>


Becomes
<pre><code>       activerecord-deprecated_finders (~&gt; 1.0.2)
       activesupport (= 4.0.0)
       arel (~&gt; 4.0.0)
     activerecord-deprecated_finders (1.0.3)
     activesupport (4.0.0)
       i18n (~&gt; 0.6, &gt;= 0.6.4)
       minitest (~&gt; 4.2)
       multi_json (~&gt; 1.3)
       thread_safe (~&gt; 0.1)
       tzinfo (~&gt; 0.3.37)
     addressable (2.3.5)
     arel (4.0.1)
     atomic (1.1.14)
     awesome_print (1.2.0)
     binding_of_caller (0.7.2)
       debug_inspector (&gt;= 0.0.1)
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
     coderay (1.0.9)
     coffee-rails (4.0.1)
       coffee-script (&gt;= 2.2.0)
       railties (&gt;= 4.0.0, &lt; 5.0)
     coffee-script (2.2.0)
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     columnize (0.3.6)
     coolline (0.4.2)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (&gt;= 0.3.1)
       debugger-linecache (~&gt; 1.2.0)
       debugger-ruby_core_source (~&gt; 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)
     diff-lcs (1.2.4)
     diffy (3.0.1)
     erubis (2.7.0)
     execjs (2.0.2)
     factory_girl (4.2.0)
       activesupport (&gt;= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~&gt; 4.2.0)
       railties (&gt;= 3.0.0)
     grit (2.5.0)
       diff-lcs (~&gt; 1.1)
       mime-types (~&gt; 1.15)
       posix-spawn (~&gt; 0.3.6)
     hike (1.2.3)
     hirb (0.7.1)
     i18n (0.6.5)
     jazz_hands (0.5.2)
       awesome_print (~&gt; 1.2)
       coolline (&gt;= 0.4.2)
       hirb (~&gt; 0.7.1)
       pry (~&gt; 0.9.12)
       pry-debugger (~&gt; 0.2.2)
       pry-doc (~&gt; 0.4.6)
       pry-git (~&gt; 0.2.3)
       pry-rails (~&gt; 0.3.2)
       pry-remote (&gt;= 0.1.7)
       pry-stack_explorer (~&gt; 0.4.9)
       railties (&gt;= 3.0, &lt; 5.0)
     jbuilder (1.5.2)
       activesupport (&gt;= 3.0.0)
       multi_json (&gt;= 1.2.0)
     jquery-rails (3.0.4)
       railties (&gt;= 3.0, &lt; 5.0)
       thor (&gt;= 0.14, &lt; 2.0)
     json (1.8.1)
     launchy (2.3.0)
       addressable (~&gt; 2.3)
     mail (2.5.4)
       mime-types (~&gt; 1.16)
       treetop (~&gt; 1.4.8)
     method_source (0.8.2)
     mime-types (1.25)
     mini_portile (0.5.2)
     minitest (4.7.5)
     multi_json (1.8.2)
     nokogiri (1.6.0)
       mini_portile (~&gt; 0.5.0)
     polyglot (0.3.3)
     posix-spawn (0.3.6)
     pry (0.9.12.2)
       coderay (~&gt; 1.0.5)
       method_source (~&gt; 0.8)
       slop (~&gt; 3.4)
     pry-debugger (0.2.2)
       debugger (~&gt; 1.3)
       pry (~&gt; 0.9.10)
     pry-doc (0.4.6)
       pry (&gt;= 0.9)
       yard (&gt;= 0.8)
     pry-git (0.2.3)
       diffy
       grit
       pry (&gt;= 0.9.8)
     pry-rails (0.3.2)
       pry (&gt;= 0.9.10)
     pry-remote (0.1.7)
       pry (~&gt; 0.9)
       slop (~&gt; 3.0)
     pry-stack_explorer (0.4.9.1)
       binding_of_caller (&gt;= 0.7)
       pry (&gt;= 0.9.11)
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
@@ -102,20 +160,21 @@ GEM
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
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
       multi_json (~&gt; 1.0)
       rack (~&gt; 1.0)
       tilt (~&gt; 1.1, != 1.3.0)
     sprockets-rails (2.0.1)
       actionpack (&gt;= 3.0)
       activesupport (&gt;= 3.0)
       sprockets (~&gt; 2.8)
     sqlite3 (1.3.8)
@@ -128,28 +187,31 @@ GEM
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
     yard (0.8.7.2)
&nbsp;
 PLATFORMS
   ruby
&nbsp;
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~&gt; 4.0.0)
   factory_girl_rails
   jazz_hands
   jbuilder (~&gt; 1.2)
   jquery-rails
   launchy
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

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/5541b3c08d40f879566394213a35812b2653026e)

