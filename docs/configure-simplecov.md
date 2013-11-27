---
layout: default
title: Configure SimpleCov
---

<h1 id="main">Configure SimpleCov</h1>
Update file `.gitignore`

Add
<pre><code> /coverage</code></pre>


Becomes
<pre><code> # Ignore bundler config.
 /.bundle
&nbsp;
 # Ignore the default SQLite database.
 /db/*.sqlite3
 /db/*.sqlite3-journal
&nbsp;
 # Ignore all logfiles and tempfiles.
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
&nbsp;
 ENV[&quot;RAILS_ENV&quot;] ||= &#39;test&#39;
 require File.expand_path(&quot;../../config/environment&quot;, __FILE__)
 require &#39;rspec/rails&#39;
 require &#39;rspec/autorun&#39;
&nbsp;
 # Requires supporting ruby files with custom matchers and macros, etc,
 # in spec/support/ and its subdirectories.
 Dir[Rails.root.join(&quot;spec/support/**/*.rb&quot;)].each { |f| require f }
&nbsp;
 # Checks for pending migrations before tests are run.
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/ddb83f267e378a0c99ead0114b549fa47390558d)

