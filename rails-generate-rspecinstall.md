---
layout: default
title: rails generate rspec:install
---

<h1 id="main">rails generate rspec:install</h1>
Create file `.rspec`

Add
<pre><code> --color</code></pre>


Create file `spec/spec_helper.rb`

Add
<pre><code> # This file is copied to spec/ when you run &#39;rails generate rspec:install&#39;
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
 # If you are not using ActiveRecord, you can remove this line.
 ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)
&nbsp;
 RSpec.configure do |config|
   # ## Mock Framework
   #
   # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
   #
   # config.mock_with :mocha
   # config.mock_with :flexmock
   # config.mock_with :rr
&nbsp;
   # Remove this line if you&#39;re not using ActiveRecord or ActiveRecord fixtures
   config.fixture_path = &quot;#{::Rails.root}/spec/fixtures&quot;
&nbsp;
   # If you&#39;re not using ActiveRecord, or you&#39;d prefer not to run each of your
   # examples within a transaction, remove the following line or assign false
   # instead of true.
   config.use_transactional_fixtures = true
&nbsp;
   # If true, the base class of anonymous controllers will be inferred
   # automatically. This will be the default behavior in future versions of
   # rspec-rails.
   config.infer_base_class_for_anonymous_controllers = false
&nbsp;
   # Run specs in random order to surface order dependencies. If you find an
   # order dependency and want to debug it, you can fix the order by providing
   # the seed, which is printed after each run.
   #     --seed 1234
   config.order = &quot;random&quot;
 end</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/41c88528073ff2a3bedfe1472228f5aef4109041)

