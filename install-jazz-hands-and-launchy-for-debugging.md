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
<pre><code>   gem &#39;rspec-rails&#39;
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
<pre><code>       multi_json (~&gt; 1.3)
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
@@ -37,6 +41,7 @@ GEM
     capybara-webkit (1.0.0)
       capybara (~&gt; 2.0, &gt;= 2.0.2)
       json
     coderay (1.0.9)
     coffee-rails (4.0.1)
       coffee-script (&gt;= 2.2.0)
       railties (&gt;= 4.0.0, &lt; 5.0)
@@ -44,7 +49,17 @@ GEM
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
@@ -52,8 +67,25 @@ GEM
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
@@ -61,9 +93,12 @@ GEM
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
@@ -71,6 +106,29 @@ GEM
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
@@ -109,6 +167,7 @@ GEM
     sdoc (0.3.20)
       json (&gt;= 1.1.3)
       rdoc (~&gt; 3.10)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
       multi_json (~&gt; 1.0)
@@ -135,6 +194,7 @@ GEM
     valid_attribute (1.3.1)
     xpath (2.0.0)
       nokogiri (~&gt; 1.3)
     yard (0.8.7.2)
&nbsp;
 PLATFORMS
   ruby
@@ -143,8 +203,10 @@ DEPENDENCIES
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5541b3c08d40f879566394213a35812b2653026e)

