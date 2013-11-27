---
layout: default
title: Configure SimpleCov
---

<h1 id="main">Configure SimpleCov</h1>
Update file `.gitignore`

Add
<pre><code> /coverage</code></pre>


Becomes
<pre><code> # Ignore all logfiles and tempfiles.
 /log/*.log
 /tmp
 /coverage
</code></pre>


Update file `spec/spec_helper.rb`

Add
<pre><code> require &#39;simplecov&#39;
 SimpleCov.start</code></pre>


Becomes
<pre><code> # This file is copied to spec/ when you run &#39;rails generate rspec:install&#39;
 require &#39;simplecov&#39;
 SimpleCov.start
 
 ENV[&quot;RAILS_ENV&quot;] ||= &#39;test&#39;
 require File.expand_path(&quot;../../config/environment&quot;, __FILE__)
 require &#39;rspec/rails&#39;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/ddb83f267e378a0c99ead0114b549fa47390558d)

